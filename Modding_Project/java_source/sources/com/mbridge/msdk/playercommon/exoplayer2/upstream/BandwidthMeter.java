package com.mbridge.msdk.playercommon.exoplayer2.upstream;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface BandwidthMeter {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);
    }

    long getBitrateEstimate();
}
