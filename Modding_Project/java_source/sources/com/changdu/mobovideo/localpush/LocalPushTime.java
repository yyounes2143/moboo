package com.changdu.mobovideo.localpush;

import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.format.DateTimeFormatter;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001f\u0010 R\u001c\u0010$\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010#R\u001c\u0010%\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010#¨\u0006&"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushTime;", "", "<init>", "()V", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "j$/time/ZoneId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;", "", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;Lcom/changdu/mobovideo/localpush/LocalPushType;)Lkotlin/Pair;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "", "epochMs", "zoneId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;", "nowMs", "secondOfDay", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JILj$/time/ZoneId;)J", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z", "j$/time/format/DateTimeFormatter", "kotlin.jvm.PlatformType", "Lj$/time/format/DateTimeFormatter;", "DND_TIME_FORMATTER", "SECOND_OF_DAY_FORMATTER", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushTime {
    @NotNull
    public static final LocalPushTime INSTANCE = new LocalPushTime();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFormatter f5522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFormatter f5521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeFormatter.ofPattern("HH:mm:ss");

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LocalPushType.values().length];
            try {
                iArr[LocalPushType.SIGN_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalPushType.RECALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalPushType.PROMOTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final ZoneId Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushConfig localPushConfig) {
        try {
            String Wwwwwwwww2 = localPushConfig.Wwwwwwwww();
            if (Wwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwww2)) {
                return ZoneId.of(Wwwwwwwww2);
            }
            return ZoneId.systemDefault();
        } catch (Throwable unused) {
            return ZoneId.systemDefault();
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i < 0) {
            return -1;
        }
        if (i == 86400) {
            return 0;
        }
        if (i < 0 || i >= 86400) {
            return -1;
        }
        return i;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i, @NotNull ZoneId zoneId) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
            return 0L;
        }
        try {
            ZonedDateTime atZone = Instant.ofEpochMilli(j).atZone(zoneId);
            long j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            long epochMilli = ZonedDateTime.of(atZone.b(), LocalTime.ofSecondOfDay(j2), zoneId).toInstant().toEpochMilli();
            if (j <= epochMilli) {
                return epochMilli;
            }
            return ZonedDateTime.of(atZone.b().plusDays(1L), LocalTime.ofSecondOfDay(j2), zoneId).toInstant().toEpochMilli();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId, @NotNull LocalPushType localPushType) {
        Pair<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushConfig, localPushType);
        int intValue = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component1().intValue();
        int intValue2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component2().intValue();
        if (intValue >= 0 && intValue2 >= 0 && intValue != intValue2) {
            try {
                int secondOfDay = Instant.ofEpochMilli(j).atZone(zoneId).toLocalTime().toSecondOfDay();
                if (intValue < intValue2) {
                    if (intValue > secondOfDay || secondOfDay >= intValue2) {
                        return false;
                    }
                    return true;
                } else if (secondOfDay < intValue && secondOfDay >= intValue2) {
                    return false;
                } else {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
            return "未配置";
        }
        try {
            return LocalTime.ofSecondOfDay(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).format(f5521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Throwable unused) {
            return String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @NotNull
    public final Pair<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushConfig localPushConfig, @NotNull LocalPushType localPushType) {
        int i = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return TuplesKt.to(Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                }
                throw new NoWhenBranchMatchedException();
            }
            return TuplesKt.to(Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        return TuplesKt.to(Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(localPushConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull LocalPushConfig localPushConfig, @NotNull ZoneId zoneId, @NotNull LocalPushType localPushType) {
        ZoneId zoneId2;
        Pair<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushConfig, localPushType);
        int intValue = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component1().intValue();
        int intValue2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component2().intValue();
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, localPushConfig, zoneId, localPushType);
        try {
            zoneId2 = zoneId;
            try {
                ZonedDateTime atZone = Instant.ofEpochMilli(j).atZone(zoneId2);
                int secondOfDay = atZone.toLocalTime().toSecondOfDay();
                String id = zoneId2.getId();
                String format = atZone.format(f5522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue2);
                return "时区=" + id + "，本地时间=" + format + "，当前秒=" + secondOfDay + "，免打扰区间=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "(" + intValue + ")-" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + "(" + intValue2 + ")，命中免打扰=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Throwable unused) {
                String id2 = zoneId2.getId();
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue2);
                return "时区=" + id2 + "，时间戳=" + j + "，免打扰区间=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 + "(" + intValue + ")-" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 + "(" + intValue2 + ")，命中免打扰=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        } catch (Throwable unused2) {
            zoneId2 = zoneId;
        }
    }
}
