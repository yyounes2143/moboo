package com.changdu.mobovideo.localpush;

import j$.time.ZoneId;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushPlanner;", "", "<init>", "()V", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "candidateAtMs", "nowMs", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "j$/time/ZoneId", "zoneId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;JJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Ljava/lang/Long;", "unlockAtMs", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)J", "Ljava/lang/Object;", "reserveLock", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushPlanner {
    @NotNull
    public static final LocalPushPlanner INSTANCE = new LocalPushPlanner();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f5508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId) {
        long max = Math.max(0L, localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, localPushConfig, zoneId);
        if (LocalPushTime.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, localPushConfig, zoneId, LocalPushType.PROMOTION)) {
            return true;
        }
        LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
        return LocalPushMath.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww(), localPushStateStore.Wwwwwwwwwwwwwwwww(), max);
    }

    @Nullable
    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushType localPushType, long j, long j2, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId) {
        Long component1;
        synchronized (f5508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            long max = Math.max(0L, localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
            Pair<Long, Long> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushMath.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType, j, j2, localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww(), localPushStateStore.Wwwwwwwwwwwwwwwww(), localPushConfig, zoneId, max);
            component1 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component1();
            long longValue = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component2().longValue();
            if (component1 != null) {
                localPushStateStore.Kkkkkkkkkkkkkkkk(longValue);
            }
        }
        return component1;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId) {
        return j + (localPushConfig.Wwwwwwwwwwwwwwwwwwwwwww() * 1000);
    }
}
