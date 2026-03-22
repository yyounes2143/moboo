package com.changdu.mobovideo.localpush;

import android.content.Context;
import android.util.Log;
import androidx.work.CoroutineWorker;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import j$.time.ZoneId;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "", "epochMs", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PromotionPretriggerWorker extends CoroutineWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SimpleDateFormat f5524Wwwwwwwwwwwwwwwwwwwwwwwww = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;", "", "<init>", "()V", "LOG_TAG", "", "TIME_FORMAT", "Ljava/text/SimpleDateFormat;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public PromotionPretriggerWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j <= 0) {
            return "无";
        }
        try {
            return f5524Wwwwwwwwwwwwwwwwwwwwwwwww.format(new Date(j));
        } catch (Throwable unused) {
            return String.valueOf(j);
        }
    }

    @Override // androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull Continuation<? super ListenableWorker.Result> continuation) {
        try {
            long j = getInputData().getLong("unlock_at_ms", 0L);
            if (j <= 0) {
                return ListenableWorker.Result.success();
            }
            LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            LocalPushTime localPushTime = LocalPushTime.INSTANCE;
            ZoneId Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            long currentTimeMillis = System.currentTimeMillis();
            LocalPushPlanner localPushPlanner = LocalPushPlanner.INSTANCE;
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushPlanner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            long Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
            long Wwwwwwwwwwwwwwwwwwwwww3 = localPushStateStore.Wwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwww2 > 0 && Wwwwwwwwwwwwwwwwwwwwww3 > 0) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - Wwwwwwwwwwwwwwwwwwwwww3 < Wwwwwwwwwwwwwwwwwwwwww2 * 1000) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww3);
                    return ListenableWorker.Result.success();
                }
            }
            if (localPushPlanner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore.Wwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, LocalPushType.PROMOTION);
                return ListenableWorker.Result.success();
            }
            LocalPushType localPushType = LocalPushType.PROMOTION;
            Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = localPushPlanner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, currentTimeMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore.Wwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.longValue());
                LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), localPushType, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.longValue(), ExistingWorkPolicy.KEEP);
            } else {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                Boxing.boxInt(Log.i("LeeLog", "解锁Push 预触发跳过：解锁时间=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 + "，候选时间=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 + "，当前时间=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 + "，原因=统一调度后无需执行"));
            }
            return ListenableWorker.Result.success();
        } catch (Throwable unused) {
            return ListenableWorker.Result.success();
        }
    }
}
