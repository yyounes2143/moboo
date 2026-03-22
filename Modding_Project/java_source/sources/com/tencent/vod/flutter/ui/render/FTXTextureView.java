package com.tencent.vod.flutter.ui.render;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost;
import com.tencent.vod.flutter.player.render.gl.FTXEGLRender;
import com.tencent.vod.flutter.player.render.gl.GLSurfaceTools;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXTextureView extends TextureView implements FTXRenderCarrier {
    private static final String TAG = "FTXTextureView";
    private final GLSurfaceTools mGlSurfaceTools;
    private final Object mLayoutLock;
    private FTXPlayerRenderSurfaceHost mPlayer;
    private FTXEGLRender mRender;
    private long mRenderMode;
    private Surface mSurface;
    private final TextureViewInnerListener mSurfaceListenerDelegate;
    private SurfaceTexture mSurfaceTexture;
    private int mVideoHeight;
    private int mVideoWidth;
    private int mViewHeight;
    private int mViewWidth;

    public FTXTextureView(@NonNull Context context) {
        super(context);
        this.mGlSurfaceTools = new GLSurfaceTools();
        this.mRenderMode = 1L;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mLayoutLock = new Object();
        this.mSurfaceListenerDelegate = new TextureViewInnerListener(this);
        initTextureView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySurfaceConfig(SurfaceTexture surfaceTexture, int i, int i2) {
        updateSurfaceTexture(surfaceTexture);
    }

    private void connectPlayer(FTXPlayerRenderSurfaceHost fTXPlayerRenderSurfaceHost) {
        if (this.mSurfaceTexture != null && fTXPlayerRenderSurfaceHost != null) {
            LiteavLog.i(TAG, "bindPlayer suc,player: " + fTXPlayerRenderSurfaceHost + ", view:" + hashCode());
            if (this.mSurface.isValid()) {
                updateHostSurface(this.mSurface);
                updateRenderSizeIfCan();
                return;
            }
            LiteavLog.w(TAG, "bindPlayer interrupt ,mSurface: " + this.mSurface + " is inValid, view:" + hashCode());
        }
    }

    private void initTextureView() {
        setSurfaceTextureListener(this.mSurfaceListenerDelegate);
        this.mRender = new FTXEGLRender(TXVodDownloadDataSource.QUALITY_1080P, TXVodDownloadDataSource.QUALITY_720P);
    }

    private void updateHostSurface(Surface surface) {
        if (this.mPlayer != null) {
            this.mRender.initOpengl(surface);
            this.mPlayer.setSurface(this.mRender.getInputSurface());
            this.mRender.startRender();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRenderSizeIfCan() {
        if (getParent() != null) {
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

    private void updateSurfaceTexture(SurfaceTexture surfaceTexture) {
        if (this.mSurfaceTexture != surfaceTexture && surfaceTexture != null) {
            LiteavLog.v(TAG, "surfaceTexture is updated:" + surfaceTexture);
            this.mSurfaceTexture = surfaceTexture;
            Surface surface = new Surface(surfaceTexture);
            this.mSurface = surface;
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
        setSurfaceTextureListener(null);
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

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LiteavLog.i(TAG, "target onAttachedToWindow,view:" + hashCode());
    }

    @Override // android.view.View
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

    @Override // android.view.TextureView
    public void setSurfaceTexture(@NonNull SurfaceTexture surfaceTexture) {
        super.setSurfaceTexture(surfaceTexture);
        updateSurfaceTexture(surfaceTexture);
    }

    @Override // android.view.TextureView
    @Deprecated
    public void setSurfaceTextureListener(@Nullable TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener instanceof TextureViewInnerListener) {
            super.setSurfaceTextureListener(surfaceTextureListener);
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXRenderCarrier
    public void updateRenderMode(long j) {
        if (this.mRenderMode != j) {
            this.mRenderMode = j;
            updateVideoRenderMode();
        }
    }

    public void updateVideoRenderMode() {
        LiteavLog.i(TAG, "updateVideoSize, mVideoWidth:" + this.mVideoWidth + ",mVideoHeight:" + this.mVideoHeight + ",renderMode:" + this.mRenderMode);
        FTXEGLRender fTXEGLRender = this.mRender;
        if (fTXEGLRender != null) {
            fTXEGLRender.updateSizeAndRenderMode(this.mVideoWidth, this.mVideoHeight, this.mRenderMode);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TextureViewInnerListener implements TextureView.SurfaceTextureListener {
        private final FTXTextureView mContainer;
        private final List<FTXCarrierSurfaceListener> mExternalSurfaceListeners = new CopyOnWriteArrayList();

        public TextureViewInnerListener(FTXTextureView fTXTextureView) {
            this.mContainer = fTXTextureView;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i, int i2) {
            LiteavLog.v(FTXTextureView.TAG, "onSurfaceTextureAvailable");
            this.mContainer.applySurfaceConfig(surfaceTexture, i, i2);
            this.mContainer.updateRenderSizeIfCan();
            for (FTXCarrierSurfaceListener fTXCarrierSurfaceListener : this.mExternalSurfaceListeners) {
                fTXCarrierSurfaceListener.onSurfaceTextureAvailable(this.mContainer.mSurface);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            LiteavLog.v(FTXTextureView.TAG, "onSurfaceTextureDestroyed:" + this.mContainer.mSurface);
            for (FTXCarrierSurfaceListener fTXCarrierSurfaceListener : this.mExternalSurfaceListeners) {
                fTXCarrierSurfaceListener.onSurfaceTextureDestroyed(this.mContainer.mSurface);
            }
            this.mContainer.mSurface = null;
            this.mContainer.mSurfaceTexture = null;
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i, int i2) {
            LiteavLog.v(FTXTextureView.TAG, "onSurfaceTextureSizeChanged");
            this.mContainer.applySurfaceConfig(surfaceTexture, i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
        }
    }
}
