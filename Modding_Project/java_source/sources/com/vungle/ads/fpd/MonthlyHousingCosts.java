package com.vungle.ads.fpd;

import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\u0001\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0016"}, d2 = {"Lcom/vungle/ads/fpd/MonthlyHousingCosts;", "", "id", "", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/IntRange;", "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V", "getId", "()I", "getRange", "()Lkotlin/ranges/IntRange;", "UNDER_500", "FROM_500_TO_1000", "FROM_1000_TO_1500", "FROM_1500_TO_2000", "FROM_2000_TO_2500", "FROM_2500_TO_3000", "FROM_3000_TO_3500", "FROM_3500_TO_4000", "FROM_4000_TO_4500", "OVER_4500", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public enum MonthlyHousingCosts {
    UNDER_500(0, new IntRange(Integer.MIN_VALUE, 500)),
    FROM_500_TO_1000(1, new IntRange(501, 1000)),
    FROM_1000_TO_1500(2, new IntRange(1001, 1500)),
    FROM_1500_TO_2000(3, new IntRange(1501, 2000)),
    FROM_2000_TO_2500(4, new IntRange(2001, 2500)),
    FROM_2500_TO_3000(5, new IntRange(2501, 3000)),
    FROM_3000_TO_3500(6, new IntRange(3001, 3500)),
    FROM_3500_TO_4000(7, new IntRange(3501, 4000)),
    FROM_4000_TO_4500(8, new IntRange(PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, 4500)),
    OVER_4500(9, new IntRange(4501, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int id;
    @NotNull
    private final IntRange range;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/fpd/MonthlyHousingCosts$Companion;", "", "()V", "fromCost", "Lcom/vungle/ads/fpd/MonthlyHousingCosts;", "cost", "", "fromCost$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MonthlyHousingCosts fromCost$vungle_ads_release(int i) {
            MonthlyHousingCosts monthlyHousingCosts;
            MonthlyHousingCosts[] values = MonthlyHousingCosts.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    monthlyHousingCosts = values[i2];
                    IntRange range = monthlyHousingCosts.getRange();
                    int first = range.getFirst();
                    if (i <= range.getLast() && first <= i) {
                        break;
                    }
                    i2++;
                } else {
                    monthlyHousingCosts = null;
                    break;
                }
            }
            if (monthlyHousingCosts == null) {
                return MonthlyHousingCosts.UNDER_500;
            }
            return monthlyHousingCosts;
        }

        private Companion() {
        }
    }

    MonthlyHousingCosts(int i, IntRange intRange) {
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
