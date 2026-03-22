package com.changdu.mobovideo.localpush;

import j$.time.ZoneId;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J[\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushMath;", "", "<init>", "()V", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "candidateAtMs", "nowMs", "lastActualPushAtMs", "queueTailAtMs", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "j$/time/ZoneId", "zoneId", "gapSeconds", "Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;JJJJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;J)Lkotlin/Pair;", "promotionCandidateAtMs", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJJJ)Z", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushMath {
    @NotNull
    public static final LocalPushMath INSTANCE = new LocalPushMath();

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2, long j3, long j4) {
        long max = Math.max(j2, j3);
        if (max <= 0 || j - max >= j4 * 1000) {
            return false;
        }
        return true;
    }

    @NotNull
    public final Pair<Long, Long> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushType localPushType, long j, long j2, long j3, long j4, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId, long j5) {
        long j6;
        long max = Math.max(j, j2);
        if (j4 > j2) {
            j6 = j4;
        } else {
            j6 = 0;
        }
        long max2 = Math.max(j3, j6);
        long j7 = 1000 * j5;
        if (max2 > 0) {
            max = Math.max(max, max2 + j7);
        }
        long j8 = max;
        if (LocalPushTime.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j8, localPushConfig, zoneId, localPushType)) {
            return TuplesKt.to(null, Long.valueOf(j4));
        }
        return TuplesKt.to(Long.valueOf(j8), Long.valueOf(Math.max(j4, j8)));
    }
}
