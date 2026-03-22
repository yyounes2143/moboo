package com.vungle.ads.fpd;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\u0001\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0016"}, d2 = {"Lcom/vungle/ads/fpd/MedianHomeValueUSD;", "", "id", "", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/IntRange;", "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V", "getId", "()I", "getRange", "()Lkotlin/ranges/IntRange;", "UNDER_100K", "FROM_100K_TO_300K", "FROM_300K_TO_500K", "FROM_500K_TO_700K", "FROM_700K_TO_900K", "FROM_900K_TO_1M1", "FROM_1M1_TO_1M3", "FROM_1M3_TO_1M5", "FROM_1M5_TO_1M7", "OVER_1M7", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public enum MedianHomeValueUSD {
    UNDER_100K(0, new IntRange(Integer.MIN_VALUE, 100000)),
    FROM_100K_TO_300K(1, new IntRange(TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND, 300000)),
    FROM_300K_TO_500K(2, new IntRange(300001, 500000)),
    FROM_500K_TO_700K(3, new IntRange(500001, 700000)),
    FROM_700K_TO_900K(4, new IntRange(700001, 900000)),
    FROM_900K_TO_1M1(5, new IntRange(900001, 1100000)),
    FROM_1M1_TO_1M3(6, new IntRange(1100001, 1300000)),
    FROM_1M3_TO_1M5(7, new IntRange(1300001, 1500000)),
    FROM_1M5_TO_1M7(8, new IntRange(1500001, 1700000)),
    OVER_1M7(9, new IntRange(1700001, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int id;
    @NotNull
    private final IntRange range;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/fpd/MedianHomeValueUSD$Companion;", "", "()V", "fromPrice", "Lcom/vungle/ads/fpd/MedianHomeValueUSD;", "price", "", "fromPrice$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MedianHomeValueUSD fromPrice$vungle_ads_release(int i) {
            MedianHomeValueUSD medianHomeValueUSD;
            MedianHomeValueUSD[] values = MedianHomeValueUSD.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    medianHomeValueUSD = values[i2];
                    IntRange range = medianHomeValueUSD.getRange();
                    int first = range.getFirst();
                    if (i <= range.getLast() && first <= i) {
                        break;
                    }
                    i2++;
                } else {
                    medianHomeValueUSD = null;
                    break;
                }
            }
            if (medianHomeValueUSD == null) {
                return MedianHomeValueUSD.UNDER_100K;
            }
            return medianHomeValueUSD;
        }

        private Companion() {
        }
    }

    MedianHomeValueUSD(int i, IntRange intRange) {
        this.id = i;
        this.range = intRange;
    }

    public final int getId() {
        return this.id;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }
}
