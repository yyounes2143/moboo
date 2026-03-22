package com.mbridge.msdk.playercommon.exoplayer2.extractor;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface ExtractorOutput {
    void endTracks();

    void seekMap(SeekMap seekMap);

    TrackOutput track(int i, int i2);
}
