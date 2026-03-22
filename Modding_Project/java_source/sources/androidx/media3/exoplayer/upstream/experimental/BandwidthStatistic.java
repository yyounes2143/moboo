package androidx.media3.exoplayer.upstream.experimental;

import androidx.media3.common.util.UnstableApi;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface BandwidthStatistic {
    void addSample(long j, long j2);

    long getBandwidthEstimate();

    void reset();
}
