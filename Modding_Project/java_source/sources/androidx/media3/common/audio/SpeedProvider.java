package androidx.media3.common.audio;

import androidx.media3.common.util.UnstableApi;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface SpeedProvider {
    long getNextSpeedChangeTimeUs(long j);

    float getSpeed(long j);
}
