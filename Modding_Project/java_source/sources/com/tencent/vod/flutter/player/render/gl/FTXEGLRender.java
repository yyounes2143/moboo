package com.tencent.vod.flutter.player.render.gl;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXEGLRender implements SurfaceTexture.OnFrameAvailableListener {
    private static final int FPS_DEFAULT = 30;
    private static final long FRAME_WAIT_TIME = 5000;
    private static final int RE_DRAW_COUNT = 30;
    private static final String TAG = "FTXEGLRender";
    private float frameInterval;
    private boolean isReleased;
    private long mCurrentTime;
    private Handler mDrawHandler;
    private HandlerThread mDrawHandlerThread;
    private EGLContext mEGLContext;
    private EGLContext mEGLContextEncoder;
    private EGLDisplay mEGLDisplay;
    private EGLSurface mEGLSaveDrawSurface;
    private EGLSurface mEGLSaveReadSurface;
    private EGLContext mEGLSavedContext;
    private EGLDisplay mEGLSavedDisplay;
    private EGLSurface mEGLSurface;
    private EGLSurface mEGLSurfaceEncoder;
    private int mFps;
    private int mHeight;
    private Surface mInputSurface;
    private boolean mIsFirstFrame;
    private final Lock mLock;
    private long mPreTime;
    private long mRenderMode;
    private boolean mStart;
    private SurfaceTexture mSurfaceTexture;
    private FTXTextureRender mTextureRender;
    private int mViewHeight;
    private int mViewWidth;
    private int mWidth;

    public FTXEGLRender(int i, int i2) {
        this(i, i2, 30);
    }

    private boolean checkEglError(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            LiteavLog.e(TAG, "checkEglError: " + str + "error: " + eglGetError);
            return false;
        }
        return true;
    }

    private boolean eglSetup(Surface surface) {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.mEGLDisplay = eglGetDisplay;
        if (eglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            LiteavLog.e(TAG, "unable to get EGL10 display");
            return false;
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
            LiteavLog.e(TAG, "unable to initialize EGL10");
            return false;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 8, 12326, 8, 12352, 4, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            LiteavLog.e(TAG, "eglChooseConfig error");
            return false;
        }
        this.mEGLContextEncoder = EGL14.eglCreateContext(this.mEGLDisplay, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        checkEglError("eglCreateContext");
        if (this.mEGLContextEncoder == EGL14.EGL_NO_CONTEXT) {
            LiteavLog.e(TAG, "null context2");
            return false;
        }
        this.mEGLSurfaceEncoder = EGL14.eglCreateWindowSurface(this.mEGLDisplay, eGLConfigArr[0], surface, new int[]{12344}, 0);
        checkEglError("eglCreateWindowSurface");
        if (this.mEGLSurfaceEncoder != EGL14.EGL_NO_SURFACE) {
            return true;
        }
        LiteavLog.e(TAG, "surface was null");
        return false;
    }

    private void eglUninstall(boolean z) {
        Surface surface;
        if (!makeCurrent(1)) {
            LiteavLog.e(TAG, "makeCurrent error");
            return;
        }
        FTXTextureRender fTXTextureRender = this.mTextureRender;
        if (fTXTextureRender != null) {
            fTXTextureRender.deleteTexture();
        }
        releaseEgl();
        if (z && (surface = this.mInputSurface) != null) {
            surface.release();
        }
    }

    private void releaseEgl() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
        EGLSurface eGLSurface2 = this.mEGLSurfaceEncoder;
        if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
            EGL14.eglDestroySurface(this.mEGLDisplay, eGLSurface2);
        }
        EGLContext eGLContext = this.mEGLContextEncoder;
        if (eGLContext != EGL14.EGL_NO_CONTEXT) {
            EGL14.eglDestroyContext(this.mEGLDisplay, eGLContext);
        }
        EGL14.eglTerminate(this.mEGLDisplay);
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.mEGLSurfaceEncoder = EGL14.EGL_NO_SURFACE;
        this.mEGLContextEncoder = EGL14.EGL_NO_CONTEXT;
    }

    private void resetSavedEnvironment() {
        this.mEGLSavedDisplay = EGL14.EGL_NO_DISPLAY;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        this.mEGLSaveDrawSurface = eGLSurface;
        this.mEGLSaveReadSurface = eGLSurface;
        this.mEGLSavedContext = EGL14.EGL_NO_CONTEXT;
    }

    private void restoreEglEnvironment() {
        try {
            try {
                if (this.mEGLSavedDisplay != EGL14.EGL_NO_DISPLAY && this.mEGLSavedContext != EGL14.EGL_NO_CONTEXT && this.mEGLSaveDrawSurface != EGL14.EGL_NO_SURFACE) {
                    EGLDisplay eglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
                    EGLContext eglGetCurrentContext = EGL14.eglGetCurrentContext();
                    EGLSurface eglGetCurrentSurface = EGL14.eglGetCurrentSurface(12377);
                    if (this.mEGLSavedDisplay.equals(eglGetCurrentDisplay)) {
                        if (this.mEGLSavedContext.equals(eglGetCurrentContext)) {
                            if (!this.mEGLSaveDrawSurface.equals(eglGetCurrentSurface)) {
                            }
                        }
                    }
                    if (!EGL14.eglMakeCurrent(this.mEGLSavedDisplay, this.mEGLSaveDrawSurface, this.mEGLSaveReadSurface, this.mEGLSavedContext)) {
                        int eglGetError = EGL14.eglGetError();
                        LiteavLog.e(TAG, "Restore failed: EGL error 0x" + Integer.toHexString(eglGetError));
                        EGLDisplay eGLDisplay = this.mEGLSavedDisplay;
                        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                    }
                } else {
                    LiteavLog.w(TAG, "No valid EGL state to restore");
                    EGLDisplay eGLDisplay2 = this.mEGLDisplay;
                    if (eGLDisplay2 != EGL14.EGL_NO_DISPLAY) {
                        EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                        EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                    }
                }
                this.mEGLSavedDisplay = EGL14.EGL_NO_DISPLAY;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                this.mEGLSaveDrawSurface = eGLSurface3;
                this.mEGLSaveReadSurface = eGLSurface3;
                this.mEGLSavedContext = EGL14.EGL_NO_CONTEXT;
            } catch (Exception e) {
                LiteavLog.e(TAG, "Critical restore error: " + e);
                this.mEGLSavedDisplay = EGL14.EGL_NO_DISPLAY;
                EGLSurface eGLSurface4 = EGL14.EGL_NO_SURFACE;
                this.mEGLSaveDrawSurface = eGLSurface4;
                this.mEGLSaveReadSurface = eGLSurface4;
                this.mEGLSavedContext = EGL14.EGL_NO_CONTEXT;
            }
        } catch (Throwable th) {
            this.mEGLSavedDisplay = EGL14.EGL_NO_DISPLAY;
            EGLSurface eGLSurface5 = EGL14.EGL_NO_SURFACE;
            this.mEGLSaveDrawSurface = eGLSurface5;
            this.mEGLSaveReadSurface = eGLSurface5;
            this.mEGLSavedContext = EGL14.EGL_NO_CONTEXT;
            throw th;
        }
    }

    private void saveCurrentEglEnvironment() {
        try {
            this.mEGLSavedDisplay = EGL14.eglGetCurrentDisplay();
            this.mEGLSavedContext = EGL14.eglGetCurrentContext();
            this.mEGLSaveDrawSurface = EGL14.eglGetCurrentSurface(12377);
            this.mEGLSaveReadSurface = EGL14.eglGetCurrentSurface(12378);
            if (this.mEGLSavedDisplay != EGL14.EGL_NO_DISPLAY && this.mEGLSavedContext != EGL14.EGL_NO_CONTEXT) {
                return;
            }
            LiteavLog.w(TAG, "Saving invalid EGL state");
        } catch (Exception e) {
            LiteavLog.e(TAG, "Save EGL error: " + e);
            resetSavedEnvironment();
        }
    }

    private void setup(boolean z) {
        FTXTextureRender fTXTextureRender = new FTXTextureRender(this.mViewWidth, this.mViewHeight);
        this.mTextureRender = fTXTextureRender;
        fTXTextureRender.surfaceCreated();
        this.mTextureRender.updateSizeAndRenderMode(this.mWidth, this.mHeight, this.mRenderMode);
        LiteavLog.d(TAG, "textureID=" + this.mTextureRender.getTextureID());
        if (this.mInputSurface != null && !z) {
            return;
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.mTextureRender.getTextureID());
        this.mSurfaceTexture = surfaceTexture;
        surfaceTexture.setDefaultBufferSize(this.mViewWidth, this.mViewHeight);
        this.mSurfaceTexture.setOnFrameAvailableListener(this);
        this.mInputSurface = new Surface(this.mSurfaceTexture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startDrawSurface() {
        try {
        } catch (Exception e) {
            LiteavLog.e(TAG, "startDrawSurface error: " + e);
        }
        if (!this.mStart) {
            LiteavLog.e(TAG, "end....... ");
            restoreEglEnvironment();
            return;
        }
        saveCurrentEglEnvironment();
        if (!makeCurrent(1)) {
            LiteavLog.e(TAG, "makeCurrent error");
            restoreEglEnvironment();
            return;
        }
        this.mCurrentTime = System.currentTimeMillis();
        this.mSurfaceTexture.updateTexImage();
        drawImage();
        swapBuffers();
        this.mPreTime = this.mCurrentTime;
        restoreEglEnvironment();
    }

    public void clearSurfaceIfCan() {
        FTXTextureRender fTXTextureRender = this.mTextureRender;
        if (fTXTextureRender != null) {
            fTXTextureRender.cleanDrawCache();
        }
    }

    public void drawImage() {
        this.mTextureRender.drawFrame();
    }

    public Surface getInputSurface() {
        return this.mInputSurface;
    }

    public boolean initOpengl(Surface surface, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("initOpengl ");
        sb.append(surface == null ? AbstractJsonLexerKt.NULL : "");
        LiteavLog.i(TAG, sb.toString());
        boolean z2 = false;
        this.isReleased = false;
        this.mIsFirstFrame = true;
        saveCurrentEglEnvironment();
        if (!eglSetup(surface)) {
            LiteavLog.e(TAG, "eglSetup error");
        } else if (makeCurrent(1)) {
            z2 = true;
        } else {
            LiteavLog.e(TAG, "makeCurrent error");
        }
        if (!z2) {
            releaseEgl();
            restoreEglEnvironment();
            return z2;
        }
        setup(z);
        restoreEglEnvironment();
        return true;
    }

    public boolean makeCurrent(int i) {
        if (i == 0) {
            EGLDisplay eGLDisplay = this.mEGLDisplay;
            EGLSurface eGLSurface = this.mEGLSurface;
            if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
                LiteavLog.e(TAG, "eglMakeCurrent failed");
                return false;
            }
            return true;
        }
        EGLDisplay eGLDisplay2 = this.mEGLDisplay;
        EGLSurface eGLSurface2 = this.mEGLSurfaceEncoder;
        if (!EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, this.mEGLContextEncoder)) {
            LiteavLog.e(TAG, "eglMakeCurrent failed");
            return false;
        }
        return true;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.mStart) {
            this.mDrawHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.render.gl.FTXEGLRender.1
                @Override // java.lang.Runnable
                public void run() {
                    if (FTXEGLRender.this.mIsFirstFrame) {
                        FTXEGLRender.this.mIsFirstFrame = false;
                        FTXEGLRender.this.refreshRender();
                        return;
                    }
                    FTXEGLRender.this.mLock.lock();
                    FTXEGLRender.this.startDrawSurface();
                    FTXEGLRender.this.mLock.unlock();
                }
            });
        }
    }

    public synchronized void pauseRender() {
        this.mLock.lock();
        this.mStart = false;
        this.mLock.unlock();
    }

    public void refreshRender() {
        Handler handler = this.mDrawHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.render.gl.FTXEGLRender.2
                @Override // java.lang.Runnable
                public void run() {
                    FTXEGLRender.this.mLock.lock();
                    for (int i = 0; i < 30; i++) {
                        FTXEGLRender.this.startDrawSurface();
                    }
                    FTXEGLRender.this.mLock.unlock();
                }
            });
        }
    }

    public synchronized void resumeRender() {
        this.mLock.lock();
        this.mStart = true;
        this.mLock.unlock();
    }

    public void setViewPortSize(int i, int i2) {
        this.mViewWidth = i;
        this.mViewHeight = i2;
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(i, i2);
        }
        FTXTextureRender fTXTextureRender = this.mTextureRender;
        if (fTXTextureRender != null) {
            fTXTextureRender.setViewPortSize(i, i2);
        }
    }

    public void startRender() {
        LiteavLog.i(TAG, "called start render");
        if (this.mDrawHandlerThread.isAlive()) {
            LiteavLog.e(TAG, "old draw thread is alive, stop first");
            this.mDrawHandlerThread.quitSafely();
        }
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mDrawHandlerThread = handlerThread;
        handlerThread.start();
        this.mDrawHandler = new Handler(this.mDrawHandlerThread.getLooper());
        this.mStart = true;
    }

    public synchronized void stopRender() {
        stopRender(true);
    }

    public boolean swapBuffers() {
        boolean eglSwapBuffers = EGL14.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurfaceEncoder);
        checkEglError("eglSwapBuffers");
        return eglSwapBuffers;
    }

    public void updateSizeAndRenderMode(int i, int i2, long j) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mRenderMode = j;
        FTXTextureRender fTXTextureRender = this.mTextureRender;
        if (fTXTextureRender != null) {
            fTXTextureRender.updateSizeAndRenderMode(i, i2, j);
        } else {
            LiteavLog.w(TAG, "mTextureRender is null");
        }
    }

    public FTXEGLRender(int i, int i2, int i3) {
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        EGLContext eGLContext = EGL14.EGL_NO_CONTEXT;
        this.mEGLContext = eGLContext;
        this.mEGLContextEncoder = eGLContext;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        this.mEGLSurface = eGLSurface;
        this.mEGLSurfaceEncoder = eGLSurface;
        this.mEGLSavedContext = EGL14.EGL_NO_CONTEXT;
        this.mEGLSavedDisplay = EGL14.EGL_NO_DISPLAY;
        EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
        this.mEGLSaveReadSurface = eGLSurface2;
        this.mEGLSaveDrawSurface = eGLSurface2;
        this.mStart = false;
        this.mLock = new ReentrantLock();
        this.mPreTime = 0L;
        this.mRenderMode = 1L;
        this.frameInterval = 0.0f;
        this.mDrawHandlerThread = new HandlerThread(TAG);
        this.mDrawHandler = null;
        this.isReleased = false;
        this.mIsFirstFrame = false;
        this.mWidth = i;
        this.mHeight = i2;
        this.mFps = i3;
        float f = 1000.0f / i3;
        this.frameInterval = f - ((float) (f * 0.15d));
        LiteavLog.i(TAG, "initFPs fps: " + i3 + "video_interval: " + this.frameInterval);
    }

    public synchronized void stopRender(boolean z) {
        if (this.isReleased) {
            LiteavLog.i(TAG, "stopRender return, already released");
            return;
        }
        LiteavLog.i(TAG, "stopRender");
        this.mStart = false;
        saveCurrentEglEnvironment();
        boolean equals = this.mEGLContextEncoder.equals(this.mEGLSavedContext);
        eglUninstall(z);
        this.mDrawHandlerThread.quitSafely();
        if (!equals) {
            LiteavLog.d(TAG, "restoreEglEnvironment");
            restoreEglEnvironment();
        }
        this.isReleased = true;
    }

    public boolean initOpengl(Surface surface) {
        return initOpengl(surface, true);
    }
}
