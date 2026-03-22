package com.tencent.vod.flutter.ui.render;

import com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface FTXRenderCarrier {
    void addSurfaceTextureListener(FTXCarrierSurfaceListener fTXCarrierSurfaceListener);

    void bindPlayer(FTXPlayerRenderSurfaceHost fTXPlayerRenderSurfaceHost);

    void clearLastImg();

    void destroyRender();

    void notifyVideoResolutionChanged(int i, int i2);

    void reDrawVod();

    void removeAllSurfaceListener();

    void removeSurfaceTextureListener(FTXCarrierSurfaceListener fTXCarrierSurfaceListener);

    void requestLayoutSizeByContainerSize(int i, int i2);

    void setVisibility(int i);

    void updateRenderMode(long j);
}
