package com.tencent.vod.flutter.live.render;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.vod.flutter.live.egl.EGL10Helper;
import com.tencent.vod.flutter.live.egl.EGL14Helper;
import com.tencent.vod.flutter.live.egl.EGLHelper;
import com.tencent.vod.flutter.live.egl.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLContext;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXV2LiveRender {
    private static final String TAG = "FTXV2LiveRender";
    private static final long WAIT_FRAME_DURATION_MILL = 2000;
    private static final int WHAT_DESTROY = 3;
    private static final int WHAT_DRAW_FRAME = 1;
    private static final int WHAT_OFFER_FRAME = 5;
    private static final int WHAT_START_DRAW = 6;
    private static final int WHAT_STOP = 4;
    private static final int WHAT_UN_INIT = 2;
    private static final AtomicLong mRenderId = new AtomicLong();
    private final FloatBuffer mCubeBuffer;
    private final Condition mDrawCondition;
    private final Lock mDrawLock;
    private Future<?> mDrawServiceFuture;
    private EGLHelper mEglHelper;
    private FTXGPUImageFilter mImageFilter;
    private boolean mIsDestroyed;
    private volatile boolean mIsInDrawing;
    private FTXSize mLastInputFTXSize;
    private FTXSize mLastOutputFTXSize;
    private final Handler mOptHandler;
    private final HandlerThread mOptHandlerThread;
    private Surface mSurface;
    private FTXSize mSurfaceFTXSize;
    private final SurfaceTexture mSurfaceTexture;
    private final FloatBuffer mTextureBuffer;
    private ExecutorService mRenderService = Executors.newFixedThreadPool(1);
    private final Queue<V2TXLiveDef.V2TXLiveVideoFrame> mDataPool = new ArrayDeque();

    public FTXV2LiveRender(SurfaceTexture surfaceTexture) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mDrawLock = reentrantLock;
        this.mDrawCondition = reentrantLock.newCondition();
        this.mIsInDrawing = false;
        this.mIsDestroyed = false;
        this.mSurfaceFTXSize = new FTXSize();
        this.mLastInputFTXSize = new FTXSize();
        this.mLastOutputFTXSize = new FTXSize();
        HandlerThread handlerThread = new HandlerThread(TAG + mRenderId.getAndIncrement());
        this.mOptHandlerThread = handlerThread;
        float[] fArr = OpenGlUtils.CUBE;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mCubeBuffer = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        float[] fArr2 = OpenGlUtils.TEXTURE;
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(fArr2.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTextureBuffer = asFloatBuffer2;
        asFloatBuffer2.put(fArr2).position(0);
        this.mSurfaceTexture = surfaceTexture;
        this.mSurface = new Surface(surfaceTexture);
        this.mSurfaceFTXSize = new FTXSize(1, 1);
        handlerThread.start();
        this.mOptHandler = new Handler(handlerThread.getLooper()) { // from class: com.tencent.vod.flutter.live.render.FTXV2LiveRender.1
            @Override // android.os.Handler
            public void handleMessage(@NonNull Message message) {
                switch (message.what) {
                    case 1:
                        if (!FTXV2LiveRender.this.mIsDestroyed && FTXV2LiveRender.this.mIsInDrawing) {
                            FTXV2LiveRender.this.onDrawFrame((V2TXLiveDef.V2TXLiveVideoFrame) message.obj);
                            return;
                        }
                        return;
                    case 2:
                        FTXV2LiveRender.this.unInitEGL();
                        return;
                    case 3:
                        FTXV2LiveRender.this.destroyInner();
                        return;
                    case 4:
                        try {
                            FTXV2LiveRender.this.stopInner();
                            if (FTXV2LiveRender.this.mDrawServiceFuture != null) {
                                FTXV2LiveRender.this.mDrawServiceFuture.get();
                            }
                            FTXV2LiveRender.this.unInitEGL();
                            return;
                        } catch (InterruptedException e) {
                            e = e;
                            LiteavLog.e(FTXV2LiveRender.TAG, "stop render service error:" + e);
                            return;
                        } catch (ExecutionException e2) {
                            e = e2;
                            LiteavLog.e(FTXV2LiveRender.TAG, "stop render service error:" + e);
                            return;
                        }
                    case 5:
                        if (!FTXV2LiveRender.this.mIsDestroyed) {
                            FTXV2LiveRender.this.mDrawLock.lock();
                            FTXV2LiveRender.this.mDataPool.offer((V2TXLiveDef.V2TXLiveVideoFrame) message.obj);
                            FTXV2LiveRender.this.mDrawCondition.signalAll();
                            FTXV2LiveRender.this.mDrawLock.unlock();
                            return;
                        }
                        return;
                    case 6:
                        FTXV2LiveRender.this.startDrawInner();
                        return;
                    default:
                        LiteavLog.e(FTXV2LiveRender.TAG, "un hit handler msg, what:" + message.what);
                        return;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyInner() {
        try {
            stopInner();
            this.mIsDestroyed = true;
            this.mRenderService.shutdown();
            Future<?> future = this.mDrawServiceFuture;
            if (future != null) {
                future.get();
                unInitEGL();
            }
        } catch (Exception e) {
            LiteavLog.e(TAG, "render service wait error:" + e);
            this.mRenderService.shutdownNow();
        } finally {
            this.mRenderService = null;
            this.mOptHandlerThread.quitSafely();
            this.mDataPool.clear();
        }
    }

    private void initEGL(Object obj) {
        if (obj instanceof EGLContext) {
            this.mEglHelper = EGL10Helper.createEGLSurface(null, (EGLContext) obj, this.mSurface, 0, 0);
            LiteavLog.e(TAG, "create EGL10Helper done");
        } else {
            this.mEglHelper = EGL14Helper.createEGLSurface(null, (android.opengl.EGLContext) obj, this.mSurface, 0, 0);
            LiteavLog.e(TAG, "create EGL14Helper done");
        }
        EGLHelper eGLHelper = this.mEglHelper;
        if (eGLHelper == null) {
            LiteavLog.e(TAG, "unSupport eglContext!pls check your params");
            return;
        }
        eGLHelper.makeCurrent();
        FTXGPUImageFilter fTXGPUImageFilter = new FTXGPUImageFilter(true);
        this.mImageFilter = fTXGPUImageFilter;
        fTXGPUImageFilter.init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r0.height == r3.height) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void onDrawFrame(com.tencent.live2.V2TXLiveDef.V2TXLiveVideoFrame r11) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.vod.flutter.live.render.FTXV2LiveRender.onDrawFrame(com.tencent.live2.V2TXLiveDef$V2TXLiveVideoFrame):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDrawInner() {
        ExecutorService executorService = this.mRenderService;
        if (executorService != null && !executorService.isShutdown()) {
            this.mIsInDrawing = true;
            this.mDrawServiceFuture = this.mRenderService.submit(new Runnable() { // from class: com.tencent.vod.flutter.live.render.FTXV2LiveRender.2
                @Override // java.lang.Runnable
                public void run() {
                    while (FTXV2LiveRender.this.mIsInDrawing) {
                        try {
                            try {
                                FTXV2LiveRender.this.mDrawLock.lock();
                                V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame = (V2TXLiveDef.V2TXLiveVideoFrame) FTXV2LiveRender.this.mDataPool.poll();
                                while (v2TXLiveVideoFrame == null) {
                                    boolean await = FTXV2LiveRender.this.mDrawCondition.await(2000L, TimeUnit.MILLISECONDS);
                                    if (!FTXV2LiveRender.this.mIsInDrawing) {
                                        LiteavLog.w(FTXV2LiveRender.TAG, "render thread is interrupted by set drawing status");
                                        return;
                                    } else if (!await) {
                                        LiteavLog.w(FTXV2LiveRender.TAG, "poll a null frame, please ensure frame provider is working! wait time:2000");
                                    } else {
                                        v2TXLiveVideoFrame = (V2TXLiveDef.V2TXLiveVideoFrame) FTXV2LiveRender.this.mDataPool.poll();
                                    }
                                }
                                Message message = new Message();
                                message.what = 1;
                                message.obj = v2TXLiveVideoFrame;
                                FTXV2LiveRender.this.mOptHandler.sendMessage(message);
                            } catch (InterruptedException e) {
                                LiteavLog.w(FTXV2LiveRender.TAG, "render service is interrupted:" + e);
                            }
                        } finally {
                            FTXV2LiveRender.this.mDrawLock.unlock();
                        }
                    }
                }
            });
            return;
        }
        LiteavLog.e(TAG, "render service is already shutdown, please reCreated it");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInner() {
        LiteavLog.w(TAG, "start stop live render");
        this.mDrawLock.lock();
        this.mIsInDrawing = false;
        this.mDataPool.clear();
        this.mDrawCondition.signalAll();
        this.mDrawLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unInitEGL() {
        LiteavLog.w(TAG, "start unInitEGL");
        FTXGPUImageFilter fTXGPUImageFilter = this.mImageFilter;
        if (fTXGPUImageFilter != null) {
            fTXGPUImageFilter.destroy();
            this.mImageFilter = null;
        }
        EGLHelper eGLHelper = this.mEglHelper;
        if (eGLHelper != null) {
            eGLHelper.unmakeCurrent();
            this.mEglHelper.destroy();
            this.mEglHelper = null;
        }
    }

    public void destroy() {
        this.mOptHandler.sendEmptyMessage(3);
    }

    public boolean isDrawing() {
        return this.mIsInDrawing;
    }

    public void startDraw() {
        this.mOptHandler.sendEmptyMessage(6);
    }

    public void stopRender() {
        this.mOptHandler.sendEmptyMessage(4);
    }

    public void updateFrame(V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
        if (this.mIsInDrawing) {
            Message message = new Message();
            message.what = 5;
            message.obj = v2TXLiveVideoFrame;
            this.mOptHandler.sendMessage(message);
        }
    }
}
