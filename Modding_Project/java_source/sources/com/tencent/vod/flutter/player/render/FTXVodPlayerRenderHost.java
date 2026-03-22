package com.tencent.vod.flutter.player.render;

import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.vod.flutter.player.FTXBasePlayer;
import com.tencent.vod.flutter.ui.render.FTXRenderCarrier;
import com.tencent.vod.flutter.ui.render.FTXRenderView;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class FTXVodPlayerRenderHost extends FTXBasePlayer implements FTXPlayerRenderHost, FTXPlayerRenderSurfaceHost {
    private static final String TAG = "FTXVodPlayerRenderHost";
    protected FTXRenderView mCurRenderView;
    protected FTXRenderCarrier mRenderCarrier;

    private void removeRenderView() {
        LiteavLog.i(TAG, "start removeRenderView, player:" + hashCode());
        FTXRenderCarrier fTXRenderCarrier = this.mRenderCarrier;
        if (fTXRenderCarrier != null) {
            fTXRenderCarrier.bindPlayer(null);
        }
        TXVodPlayer vodPlayer = getVodPlayer();
        if (vodPlayer != null) {
            vodPlayer.setSurface(null);
        }
        this.mRenderCarrier = null;
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost
    public FTXRenderCarrier getCurCarrier() {
        return this.mRenderCarrier;
    }

    public abstract TXVodPlayer getVodPlayer();

    public void notifyTextureResolution(int i, int i2) {
        FTXRenderCarrier fTXRenderCarrier = this.mRenderCarrier;
        if (fTXRenderCarrier != null) {
            fTXRenderCarrier.notifyVideoResolutionChanged(i, i2);
        }
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderHost
    public void setRenderView(FTXRenderCarrier fTXRenderCarrier) {
        if (fTXRenderCarrier != null) {
            LiteavLog.i(TAG, "start bind Player:" + fTXRenderCarrier + ", player:" + hashCode());
            fTXRenderCarrier.bindPlayer(this);
            this.mRenderCarrier = fTXRenderCarrier;
            return;
        }
        LiteavLog.i(TAG, "setRenderView met a null textureView, player:" + hashCode());
        removeRenderView();
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost
    public void setSurface(Surface surface) {
        TXVodPlayer vodPlayer = getVodPlayer();
        if (vodPlayer != null) {
            LiteavLog.w(TAG, "start setSurface: " + surface + ", player:" + hashCode());
            vodPlayer.setSurface(surface);
            return;
        }
        LiteavLog.w(TAG, "setSurface met a null player, player:" + hashCode());
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderHost
    public void setUpPlayerView(FTXRenderView fTXRenderView) {
        if (fTXRenderView != null) {
            LiteavLog.i(TAG, "start setUpPlayerView:" + fTXRenderView.getViewId() + ", player:" + hashCode());
            this.mCurRenderView = fTXRenderView;
            fTXRenderView.setPlayer(this);
            return;
        }
        LiteavLog.w(TAG, "start setUpPlayerView met null view, reset player, player:" + hashCode());
        this.mCurRenderView = null;
        setRenderView(null);
    }

    public void updateTextureRenderMode(long j) {
        FTXRenderCarrier fTXRenderCarrier = this.mRenderCarrier;
        if (fTXRenderCarrier != null) {
            fTXRenderCarrier.updateRenderMode(j);
        }
    }
}
