package androidx.media3.common;

import android.os.SystemClock;
import androidx.media3.common.SimpleBasePlayer;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Illl {
    static {
        SimpleBasePlayer.PositionSupplier positionSupplier = SimpleBasePlayer.PositionSupplier.ZERO;
    }

    public static /* synthetic */ long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2, float f) {
        return j + (((float) (SystemClock.elapsedRealtime() - j2)) * f);
    }

    public static SimpleBasePlayer.PositionSupplier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final long j, final float f) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.Illlll
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return Illl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, elapsedRealtime, f);
            }
        };
    }

    public static SimpleBasePlayer.PositionSupplier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final long j) {
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.Illll
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return Illl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
        };
    }

    public static /* synthetic */ long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return j;
    }
}
