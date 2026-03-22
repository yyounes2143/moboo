package com.tencent.vod.flutter.ui.render;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost;
import com.tencent.vod.flutter.player.render.gl.FTXEGLRender;
import com.tencent.vod.flutter.player.render.gl.GLSurfaceTools;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXSurfaceView extends SurfaceView implements FTXRenderCarrier {
    private static final String TAG = "FTXSurfaceView";
    private final GLSurfaceTools mGlSurfaceTools;
    private final Object mLayoutLock;
    private FTXPlayerRenderSurfaceHost mPlayer;
    private FTXEGLRender mRender;
    private long mRenderMode;
    private Surface mSurface;
    private final SurfaceViewInnerListener mSurfaceListenerDelegate;
    private int mVideoHeight;
    private int mVideoWidth;
    private int mViewHeight;
    private int mViewWidth;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SurfaceViewInnerListener implements SurfaceHolder.Callback {
        private final FTXSurfaceView mContainer;
        private final List<FTXCarrierSurfaceListener> mExternalSurfaceListeners;

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            LiteavLog.v(FTXSurfaceView.TAG, "surfaceChanged");
            this.mContainer.applySurfaceConfig(surfaceHolder.getSurface(), i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            LiteavLog.v(FTXSurfaceView.TAG, "onSurfaceTextureAvailable");
            this.mContainer.applySurfaceConfig(surfaceHolder.getSurface(), 0, 0);
            this.mContainer.updateRenderSizeIfCan();
            for (FTXCarrierSurfaceListener fTXCarrierSurfaceListener : this.mExternalSurfaceListeners) {
                fTXCarrierSurfaceListener.onSurfaceTextureAvailable(this.mContainer.mSurface);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            LiteavLog.v(FTXSurfaceView.TAG, "onSurfaceTextureDestroyed:" + this.mContainer.mSurface);
            for (FTXCarrierSurfaceListener fTXCarrierSurfaceListener : this.mExternalSurfaceListeners) {
                fTXCarrierSurfaceListener.onSurfaceTextureDestroyed(this.mContainer.mSurface);
            }
            this.mContainer.mSurface = null;
        }

        private SurfaceViewInnerListener(FTXSurfaceView fTXSurfaceView) {
            this.mExternalSurfaceListeners = new CopyOnWriteArrayList();
            this.mContainer = fTXSurfaceView;
        }
    }

    public FTXSurfaceView(Context context) {
        super(context);
        this.mGlSurfaceTools = new GLSurfaceTools();
        this.mRenderMode = 1L;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mLayoutLock = new Object();
        this.mSurfaceListenerDelegate = new SurfaceViewInnerListener();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySurfaceConfig(Surface surface, int i, int i2) {
        updateSurfaceTexture(surface);
    }

    private void connectPlayer(FTXPlayerRenderSurfaceHost fTXPlayerRenderSurfaceHost) {
        if (this.mSurface != null && fTXPlayerRenderSurfaceHost != null) {
            LiteavLog.i(TAG, "bindPlayer suc,player: " + fTXPlayerRenderSurfaceHost + ", view:" + hashCode());
            if (this.mSurface.isValid()) {
                updateHostSurface(this.mSurface);
                updateRenderSizeIfCan();
                return;
            }
            LiteavLog.w(TAG, "bindPlayer interrupt ,mSurface: " + this.mSurface + " is inValid, view:" + hashCode());
        }
    }

    private void init() {
        getHolder().addCallback(this.mSurfaceListenerDelegate);
        this.mRender = new FTXEGLRender(TXVodDownloadDataSource.QUALITY_1080P, TXVodDownloadDataSource.QUALITY_720P);
    }

    private void updateHostSurface(Surface surface) {
        if (this.mPlayer != null) {
            this.mRender.initOpengl(surface);
            this.mPlayer.setSurface(this.mRender.getInputSurface());
            this.mRender.startRender();
            LiteavLog.i(TAG, "updateHostSurface:" + surface);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRenderSizeIfCan() {
        if (this.mRender != null && getParent() != null) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            updateRenderSizeIfNeed(viewGroup.getWidth(), viewGroup.getHeight());
        }
    }

    private void updateRenderSizeIfNeed(int i, int i2) {
        if (this.mViewWidth == i && this.mViewHeight == i2) {
            return;
        }
        this.mViewWidth = i;
        this.mViewHeight = i2;
        LiteavLog.i(TAG, "updateRenderSizeIfNeed, width:" + i + ",height:" + i2);
        this.mRender.setViewPortSize(i, i2);
    }

    private void updateSurfaceTexture(Surface surface) {
        if (this.mSurface != surface) {
            LiteavLog.v(TAG, "surfaceTexture is updated:" + surface);
            this.mSurface = surface;
            this.mGlSurfaceTools.clearSurface(surface);
            updateHostSurface(surface);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void addSurfaceTextureListener(FTXCarrierSurfaceListener fTXCarrierSurfaceListener) {
        if (fTXCarrierSurfaceListener != null && !this.mSurfaceListenerDelegate.mExternalSurfaceListeners.contains(fTXCarrierSurfaceListener)) {
            this.mSurfaceListenerDelegate.mExternalSurfaceListeners.add(fTXCarrierSurfaceListener);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void bindPlayer(FTXPlayerRenderSurfaceHost fTXPlayerRenderSurfaceHost) {
        LiteavLog.i(TAG, "called bindPlayer " + fTXPlayerRenderSurfaceHost + ", view:" + hashCode());
        FTXPlayerRenderSurfaceHost fTXPlayerRenderSurfaceHost2 = this.mPlayer;
        if (fTXPlayerRenderSurfaceHost2 == fTXPlayerRenderSurfaceHost) {
            if (fTXPlayerRenderSurfaceHost2 != null) {
                fTXPlayerRenderSurfaceHost.setSurface(this.mRender.getInputSurface());
                updateRenderSizeIfCan();
                LiteavLog.w(TAG, "bindPlayer interrupt ,player: " + fTXPlayerRenderSurfaceHost + " is equal before, view:" + hashCode());
            } else {
                this.mRender.stopRender();
            }
        } else {
            this.mPlayer = fTXPlayerRenderSurfaceHost;
            connectPlayer(fTXPlayerRenderSurfaceHost);
        }
        if (fTXPlayerRenderSurfaceHost != null) {
            this.mRenderMode = fTXPlayerRenderSurfaceHost.getPlayerRenderMode();
            this.mVideoWidth = fTXPlayerRenderSurfaceHost.getVideoWidth();
            this.mVideoHeight = fTXPlayerRenderSurfaceHost.getVideoHeight();
            updateVideoRenderMode();
            LiteavLog.i(TAG, "updateSize, mVideoWidth:" + this.mVideoWidth + ",mVideoHeight:" + this.mVideoHeight + ",renderMode:" + this.mRenderMode);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void clearLastImg() {
        LiteavLog.i(TAG, "start clearLastImg, view:" + hashCode());
        Surface surface = this.mSurface;
        if (surface != null) {
            this.mGlSurfaceTools.clearSurface(surface);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void destroyRender() {
        this.mRender.stopRender();
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void notifyVideoResolutionChanged(int i, int i2) {
        synchronized (this.mLayoutLock) {
            try {
                if (this.mVideoWidth == i) {
                    if (this.mVideoHeight != i2) {
                    }
                }
                if (i >= 0) {
                    this.mVideoWidth = i;
                }
                if (i2 >= 0) {
                    this.mVideoHeight = i2;
                }
                updateVideoRenderMode();
                LiteavLog.i(TAG, "notifyVideoResolutionChanged updateSize, mVideoWidth:" + this.mVideoWidth + ",mVideoHeight:" + this.mVideoHeight);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LiteavLog.i(TAG, "target onAttachedToWindow,view:" + hashCode());
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LiteavLog.i(TAG, "target onDetachedFromWindow,view:" + hashCode());
        this.mRender.stopRender();
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void reDrawVod() {
        FTXEGLRender fTXEGLRender = this.mRender;
        if (fTXEGLRender != null) {
            fTXEGLRender.refreshRender();
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void removeAllSurfaceListener() {
        this.mSurfaceListenerDelegate.mExternalSurfaceListeners.clear();
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void removeSurfaceTextureListener(FTXCarrierSurfaceListener fTXCarrierSurfaceListener) {
        if (fTXCarrierSurfaceListener != null) {
            this.mSurfaceListenerDelegate.mExternalSurfaceListeners.remove(fTXCarrierSurfaceListener);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void requestLayoutSizeByContainerSize(int i, int i2) {
        updateRenderSizeIfNeed(i, i2);
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void updateRenderMode(long j) {
        if (this.mRenderMode != j) {
            this.mRenderMode = j;
            updateVideoRenderMode();
        }
    }

    public void updateVideoRenderMode() {
        FTXEGLRender fTXEGLRender = this.mRender;
        if (fTXEGLRender != null) {
            fTXEGLRender.updateSizeAndRenderMode(this.mVideoWidth, this.mVideoHeight, this.mRenderMode);
        }
    }
}
