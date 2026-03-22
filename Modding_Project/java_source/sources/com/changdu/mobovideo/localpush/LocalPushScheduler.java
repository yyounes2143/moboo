package com.changdu.mobovideo.localpush;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import com.changdu.mobovideo.VideoApplication;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0010J\u001d\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u0010J-\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010\bJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\bJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b!\u0010\bJ\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\"\u0010\bJ7\u0010%\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010$\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b%\u0010&JG\u0010,\u001a\u00028\u0000\"\u0010\b\u0000\u0010(*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030'*\u00028\u00002\u0006\u0010)\u001a\u00020#2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\r2\b\b\u0002\u0010+\u001a\u00020#H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020#2\u0006\u0010.\u001a\u00020\rH\u0002¢\u0006\u0004\b/\u00100R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u00102¨\u00064"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushScheduler;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "config", "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V", "", "lastLoginAtMs", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;J)V", "nowMs", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;)J", "currentCandidateAtMs", "Wwwwwwwwwwwwwwwwwwwwwwww", "unlockAtMs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "candidateAtMs", "Landroidx/work/ExistingWorkPolicy;", "existingWorkPolicy", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLandroidx/work/ExistingWorkPolicy;)V", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "workName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V", "Landroidx/work/WorkRequest$Builder;", "T", "stage", "atMs", "timeLabel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;)Landroidx/work/WorkRequest$Builder;", "epochMs", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "j$/time/format/DateTimeFormatter", "Lj$/time/format/DateTimeFormatter;", "TAG_TIME_FORMATTER", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLocalPushScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushScheduler.kt\ncom/changdu/mobovideo/localpush/LocalPushScheduler\n+ 2 Data.kt\nandroidx/work/DataKt\n+ 3 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,238:1\n32#2,5:239\n32#2,5:245\n32#2,5:251\n105#3:244\n105#3:250\n105#3:256\n*S KotlinDebug\n*F\n+ 1 LocalPushScheduler.kt\ncom/changdu/mobovideo/localpush/LocalPushScheduler\n*L\n140#1:239,5\n160#1:245,5\n186#1:251,5\n144#1:244\n161#1:250\n190#1:256\n*E\n"})
/* loaded from: classes3.dex */
public final class LocalPushScheduler {
    @NotNull
    public static final LocalPushScheduler INSTANCE = new LocalPushScheduler();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFormatter f5509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss");

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

    public static /* synthetic */ WorkRequest.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushScheduler localPushScheduler, WorkRequest.Builder builder, String str, LocalPushType localPushType, long j, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = "at";
        }
        return localPushScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, str, localPushType, j, str2);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@NotNull Context context, long j) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        } catch (Throwable unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushConfig localPushConfig) {
        try {
            LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushConfig);
        } catch (Throwable unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(Context context) {
        long Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(System.currentTimeMillis(), LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 <= 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            return;
        }
        LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
        if (localPushStateStore.Wwwwwwwwwwwwwwwwww() == Wwwwwwwwwwwwwwwwwwwwwwwww2) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, LocalPushType.SIGN_IN, Wwwwwwwwwwwwwwwwwwwwwwwww2, "local_push_sign_in_today", ExistingWorkPolicy.REPLACE);
        localPushStateStore.Kkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(Context context) {
        long Wwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwww2 <= 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            return;
        }
        LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
        if (localPushStateStore.Wwwwwwwwwwwwwwwwwwww() == Wwwwwwwwwwwwwwww2) {
            return;
        }
        long max = Math.max(System.currentTimeMillis(), Wwwwwwwwwwwwwwww2);
        VideoApplication.Companion companion = VideoApplication.Companion;
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancelUniqueWork("local_push_recall_pretrigger");
        }
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.cancelUniqueWork("local_push_recall_execute");
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, LocalPushType.RECALL, max, "local_push_recall_pretrigger", ExistingWorkPolicy.REPLACE);
        localPushStateStore.Kkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, long j) {
        try {
            if (j <= 0) {
                LocalPushStateStore.INSTANCE.Kkkkkkkkkkkkkkkkkk(0L);
                return;
            }
            LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            LocalPushTime localPushTime = LocalPushTime.INSTANCE;
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j + 1000, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwww(), localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= 0) {
                LocalPushStateStore.INSTANCE.Kkkkkkkkkkkkkkkkkk(0L);
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, LocalPushType.SIGN_IN, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "local_push_sign_in_today", ExistingWorkPolicy.REPLACE);
            LocalPushStateStore.INSTANCE.Kkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (Throwable unused) {
        }
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull LocalPushConfig localPushConfig) {
        LocalPushTime localPushTime = LocalPushTime.INSTANCE;
        return localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, localPushConfig.Wwwwwwwwww(), localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushConfig));
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        try {
            return Instant.ofEpochMilli(j).atZone(ZoneId.systemDefault()).format(f5509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Throwable unused) {
            return String.valueOf(j);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            Wwwwwwwwwwwwwwwwwwwwww(context);
            Wwwwwwwwwwwwwwwwwwwwwww(context);
        } catch (Throwable unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, LocalPushType localPushType, long j, String str, ExistingWorkPolicy existingWorkPolicy) {
        long currentTimeMillis = System.currentTimeMillis();
        Pair[] pairArr = {TuplesKt.to("type", localPushType.name()), TuplesKt.to("candidate_at_ms", Long.valueOf(j))};
        Data.Builder builder = new Data.Builder();
        for (int i = 0; i < 2; i++) {
            Pair pair = pairArr[i];
            builder.put((String) pair.getFirst(), pair.getSecond());
        }
        OneTimeWorkRequest.Builder initialDelay = new OneTimeWorkRequest.Builder(ScheduledPushPretriggerWorker.class).setInputData(builder.build()).setInitialDelay(Math.max(0L, j - currentTimeMillis), TimeUnit.MILLISECONDS);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(INSTANCE, initialDelay, "scheduled_pretrigger", localPushType, j, null, 8, null);
        OneTimeWorkRequest build = initialDelay.build();
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork(str, existingWorkPolicy, build);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, long j) {
        Pair[] pairArr = {TuplesKt.to("unlock_at_ms", Long.valueOf(j))};
        Data.Builder builder = new Data.Builder();
        Pair pair = pairArr[0];
        builder.put((String) pair.getFirst(), pair.getSecond());
        OneTimeWorkRequest.Builder inputData = new OneTimeWorkRequest.Builder(PromotionPretriggerWorker.class).setInputData(builder.build());
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputData, "promotion_pretrigger", LocalPushType.PROMOTION, j, "unlock");
        OneTimeWorkRequest build = inputData.build();
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork("local_push_promotion_pretrigger", ExistingWorkPolicy.APPEND_OR_REPLACE, build);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull LocalPushType localPushType, long j, @NotNull ExistingWorkPolicy existingWorkPolicy) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        Pair[] pairArr = {TuplesKt.to("type", localPushType.name()), TuplesKt.to("candidate_at_ms", Long.valueOf(j))};
        Data.Builder builder = new Data.Builder();
        for (int i = 0; i < 2; i++) {
            Pair pair = pairArr[i];
            builder.put((String) pair.getFirst(), pair.getSecond());
        }
        OneTimeWorkRequest.Builder initialDelay = new OneTimeWorkRequest.Builder(LocalPushExecuteWorker.class).setInputData(builder.build()).setInitialDelay(Math.max(0L, j - currentTimeMillis), TimeUnit.MILLISECONDS);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(INSTANCE, initialDelay, "execute", localPushType, j, null, 8, null);
        OneTimeWorkRequest build = initialDelay.build();
        int i2 = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    str = "local_push_promotion_execute";
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                str = "local_push_recall_execute";
            }
        } else {
            str = "local_push_sign_in_execute";
        }
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork(str, existingWorkPolicy, build);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        VideoApplication.Companion companion = VideoApplication.Companion;
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancelUniqueWork("local_push_sign_in_today");
        }
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.cancelUniqueWork("local_push_sign_in_execute");
        }
        LocalPushStateStore.INSTANCE.Kkkkkkkkkkkkkkkkkk(0L);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        VideoApplication.Companion companion = VideoApplication.Companion;
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancelUniqueWork("local_push_recall_pretrigger");
        }
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.cancelUniqueWork("local_push_recall_execute");
        }
    }

    public final <T extends WorkRequest.Builder<?, ?>> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(T t, String str, LocalPushType localPushType, long j, String str2) {
        t.addTag("local_push");
        String name = localPushType.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(j);
        t.addTag("lp_" + lowerCase + "_" + str + "_" + Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (!Intrinsics.areEqual(str2, "at")) {
            String lowerCase2 = localPushType.name().toLowerCase(locale);
            String Wwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwww(j);
            t.addTag("lp_" + lowerCase2 + "_" + str2 + "_" + Wwwwwwwwwwwwwwwwwwwwwwwwww3);
        }
        return t;
    }
}
