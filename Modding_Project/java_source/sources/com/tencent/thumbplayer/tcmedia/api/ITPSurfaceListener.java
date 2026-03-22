package com.tencent.thumbplayer.tcmedia.api;
/* loaded from: classes6.dex */
public interface ITPSurfaceListener {
    void onFlush();

    void onRenderInfo(TPSurfaceRenderInfo tPSurfaceRenderInfo);

    void onVideoPacket(TPVideoPacketBuffer tPVideoPacketBuffer);
}
