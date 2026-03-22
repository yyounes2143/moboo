package com.changdu.mobovideo.localpush;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.changdu.mobovideo.utils.NotificationUtil;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;", "", "epochMs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushExecuteWorker extends CoroutineWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SimpleDateFormat f5497Wwwwwwwwwwwwwwwwwwwwwwwww = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;", "", "<init>", "()V", "LOG_TAG", "", "TIME_FORMAT", "Ljava/text/SimpleDateFormat;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    public LocalPushExecuteWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushType localPushType) {
        int i = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "解锁Push";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "召回Push";
        }
        return "签到Push";
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j <= 0) {
            return "无";
        }
        try {
            return f5497Wwwwwwwwwwwwwwwwwwwwwwwww.format(new Date(j));
        } catch (Throwable unused) {
            return String.valueOf(j);
        }
    }

    @Override // androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull Continuation<? super ListenableWorker.Result> continuation) {
        LocalPushType localPushType;
        long Wwwwwwwwwww2;
        long Wwwwwwwwwwwwwwwwwww2;
        try {
            String string = getInputData().getString("type");
            if (string == null) {
                return ListenableWorker.Result.success();
            }
            LocalPushType valueOf = LocalPushType.valueOf(string);
            long currentTimeMillis = System.currentTimeMillis();
            long j = getInputData().getLong("candidate_at_ms", 0L);
            if (!NotificationUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwww(getApplicationContext())) {
                valueOf.name();
                return ListenableWorker.Result.success();
            }
            LocalPushConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushConfigProvider.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            LocalPushTime localPushTime = LocalPushTime.INSTANCE;
            ZoneId Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, valueOf)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(valueOf);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                localPushTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, valueOf);
                return ListenableWorker.Result.success();
            }
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i = iArr[valueOf.ordinal()];
            if (i != 1 && i != 2) {
                if (i == 3) {
                    long Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
                    LocalPushStateStore localPushStateStore = LocalPushStateStore.INSTANCE;
                    long Wwwwwwwwwwwwwwwwwwwwww3 = localPushStateStore.Wwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwww2 > 0 && Wwwwwwwwwwwwwwwwwwwwww3 > 0) {
                        if (currentTimeMillis - Wwwwwwwwwwwwwwwwwwwwww3 < Wwwwwwwwwwwwwwwwwwwwww2 * 1000) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww3);
                            return ListenableWorker.Result.success();
                        }
                    }
                    long Wwwwwwwwwwwwwwwwwwwwwww2 = localPushStateStore.Wwwwwwwwwwwwwwwwwwwwwww();
                    localPushType = valueOf;
                    long max = Math.max(0L, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww()) * 1000;
                    if (Wwwwwwwwwwwwwwwwwwwwwww2 > 0 && currentTimeMillis - Wwwwwwwwwwwwwwwwwwwwwww2 < max) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                        return ListenableWorker.Result.success();
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                localPushType = valueOf;
                int i2 = iArr[localPushType.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
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
                int i3 = iArr[localPushType.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
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
                    if (currentTimeMillis - Wwwwwwwwwwwwwwwwwww2 < Wwwwwwwwwww2 * 1000) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwww2);
                        return ListenableWorker.Result.success();
                    }
                }
            }
            LocalPushType localPushType2 = localPushType;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushType2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
            LocalPushStateStore localPushStateStore2 = LocalPushStateStore.INSTANCE;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore2.Wwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore2.Wwwwwwwwwwwwwwwww());
            if (!LocalPushNotificationFactory.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), localPushType2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return ListenableWorker.Result.success();
            }
            LocalPushReporter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), localPushType2, currentTimeMillis);
            localPushStateStore2.Wwww(currentTimeMillis);
            localPushStateStore2.Kkkkkkkkkkkkkkkk(Math.max(localPushStateStore2.Wwwwwwwwwwwwwwwww(), currentTimeMillis));
            int i4 = iArr[localPushType2.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        localPushStateStore2.Kkkkkkkkkkkkkkkkkkkkkkkkkk(currentTimeMillis);
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    localPushStateStore2.Kkkkkkkkkkkkkkkkkkkkkkkk(currentTimeMillis);
                }
            } else {
                localPushStateStore2.Kkkkkkkkkkkkkkkkkkkk(currentTimeMillis);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore2.Wwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushStateStore2.Wwwwwwwwwwwwwwwww());
            return ListenableWorker.Result.success();
        } catch (Throwable unused) {
            return ListenableWorker.Result.success();
        }
    }
}
