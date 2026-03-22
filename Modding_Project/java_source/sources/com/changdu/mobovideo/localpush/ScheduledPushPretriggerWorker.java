package com.changdu.mobovideo.localpush;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import j$.time.ZoneId;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "", "epochMs", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScheduledPushPretriggerWorker extends CoroutineWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SimpleDateFormat f5527Wwwwwwwwwwwwwwwwwwwwwwwww = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;", "", "<init>", "()V", "LOG_TAG", "", "TIME_FORMAT", "Ljava/text/SimpleDateFormat;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

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

    public ScheduledPushPretriggerWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j <= 0) {
            return "无";
        }
        try {
            return f5527Wwwwwwwwwwwwwwwwwwwwwwwww.format(new Date(j));
        } catch (Throwable unused) {
            return String.valueOf(j);
        }
    }

    @Override // androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull Continuation<? super ListenableWorker.Result> continuation) {
        long Wwwwwwwwwww2;
        long Wwwwwwwwwwwwwwwwwww2;
        try {
            String string = getInputData().getString("type");
            if (string == null) {
                return ListenableWorker.Result.success();
            }
            LocalPushType valueOf = LocalPushType.valueOf(string);
            long j = getInputData().getLong("candidate_at_ms", 0L);
            if (j <= 0) {
                return ListenableWorker.Result.success();
            }
            LocalPushType localPushType = LocalPushType.SIGN_IN;
            if (valueOf == localPushType) {
                long Wwwwwwwwwwwwwwwwww2 = LocalPushStateStore.INSTANCE.Wwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwww2 != j) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwww2);
                    return ListenableWorker.Result.success();
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            LocalPushTime localPushTime = LocalPushTime.INSTANCE;
            ZoneId Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i = iArr[valueOf.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        Wwwwwwwwwww2 = 0;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    Wwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww();
                }
            } else {
                Wwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwww();
            }
            int i2 = iArr[valueOf.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Wwwwwwwwwwwwwwwwwww2 = 0;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    Wwwwwwwwwwwwwwwwwww2 = LocalPushStateStore.INSTANCE.Wwwwwwwwwwwwwwwwwwwww();
                }
            } else {
                Wwwwwwwwwwwwwwwwwww2 = LocalPushStateStore.INSTANCE.Wwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwww2 > 0 && Wwwwwwwwwwwwwwwwwww2 > 0) {
                if (j - Wwwwwwwwwwwwwwwwwww2 < Wwwwwwwwwww2 * 1000) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwww2);
                    if (valueOf == localPushType) {
                        LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), j);
                    }
                    return ListenableWorker.Result.success();
                }
            }
            LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
            long Wwwwwwwwwwwwwwwwwwwwwww2 = localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww();
            long Wwwwwwwwwwwwwwwww2 = localPushStateStore.Wwwwwwwwwwwwwwwww();
            Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = LocalPushPlanner.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(valueOf, j, currentTimeMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (valueOf == localPushType || valueOf == LocalPushType.RECALL) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.longValue());
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww2);
                    localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.max(j, currentTimeMillis), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, valueOf);
                    valueOf = valueOf;
                }
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                LocalPushType localPushType2 = valueOf;
                LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), localPushType2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.longValue(), ExistingWorkPolicy.REPLACE);
                valueOf = localPushType2;
            }
            if (valueOf == localPushType) {
                LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), j);
            }
            return ListenableWorker.Result.success();
        } catch (Throwable unused) {
            return ListenableWorker.Result.success();
        }
    }
}
