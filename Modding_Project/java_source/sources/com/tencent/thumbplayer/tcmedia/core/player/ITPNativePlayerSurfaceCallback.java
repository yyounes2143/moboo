package com.tencent.thumbplayer.tcmedia.core.player;

import com.tencent.thumbplayer.tcmedia.core.common.TPVideoPacket;
/* loaded from: classes6.dex */
public interface ITPNativePlayerSurfaceCallback {
    void onFlush();

    void onRenderInfo(TPNativePlayerSurfaceRenderInfo tPNativePlayerSurfaceRenderInfo);

    void onVideoPacket(TPVideoPacket tPVideoPacket);
}
