package com.tencent.vod.flutter.player.render;

import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.vod.flutter.player.FTXBasePlayer;
import com.tencent.vod.flutter.ui.render.FTXCarrierSurfaceListener;
import com.tencent.vod.flutter.ui.render.FTXRenderCarrier;
import com.tencent.vod.flutter.ui.render.FTXRenderView;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class FTXLivePlayerRenderHost extends FTXBasePlayer implements FTXPlayerRenderHost, FTXCarrierSurfaceListener {
    private static final String TAG = "FTXLivePlayerRenderHost";
    protected FTXRenderView mCurRenderView;

    public abstract V2TXLivePlayer getLivePlayer();

    @Override // com.tencent.vod.flutter.ui.render.FTXCarrierSurfaceListener
    public void onSurfaceTextureAvailable(Surface surface) {
        FTXRenderView fTXRenderView = this.mCurRenderView;
        if (fTXRenderView != null) {
            setRenderView(fTXRenderView.getRenderView());
        }
    }

    @Override // com.tencent.vod.flutter.ui.render.FTXCarrierSurfaceListener
    public boolean onSurfaceTextureDestroyed(Surface surface) {
        return false;
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderHost
    public void setRenderView(FTXRenderCarrier fTXRenderCarrier) {
        V2TXLivePlayer livePlayer = getLivePlayer();
        if (fTXRenderCarrier != null) {
            LiteavLog.i(TAG, "start bind Player:" + fTXRenderCarrier + ", player:" + hashCode());
            if (fTXRenderCarrier instanceof TextureView) {
                livePlayer.setRenderView((TextureView) fTXRenderCarrier);
                fTXRenderCarrier.addSurfaceTextureListener(this);
                return;
            } else if (fTXRenderCarrier instanceof SurfaceView) {
                livePlayer.setRenderView((SurfaceView) fTXRenderCarrier);
                fTXRenderCarrier.addSurfaceTextureListener(this);
                return;
            } else {
                LiteavLog.e(TAG, "setRenderView met a unImpl renderView, view obj:" + fTXRenderCarrier);
                return;
            }
        }
        LiteavLog.i(TAG, "setRenderView met a null textureView, player:" + hashCode());
        livePlayer.setRenderView((TextureView) null);
        livePlayer.setRenderView((SurfaceView) null);
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
        setRenderView(null);
        FTXRenderView fTXRenderView2 = this.mCurRenderView;
        if (fTXRenderView2 != null && fTXRenderView2.getRenderView() != null) {
            this.mCurRenderView.getRenderView().removeSurfaceTextureListener(this);
        }
        this.mCurRenderView = null;
    }
}
