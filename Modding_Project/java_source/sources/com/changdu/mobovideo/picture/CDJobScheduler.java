package com.changdu.mobovideo.picture;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.picture.receiver.AlarmReceiver;
import com.changdu.mobovideo.picture.receiver.WakeReceiver;
import com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker;
import com.changdu.mobovideo.picture.worker.PushProcessWorker;
import com.changdu.mobovideo.picture.worker.TokenSyncWorker;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u0003J\u0015\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010 \u001a\u00020\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0010J#\u0010#\u001a\u00020\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010,¨\u0006."}, d2 = {"Lcom/changdu/mobovideo/picture/CDJobScheduler;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "reason", "", "refreshExactAlarm", "isFromHeartbeat", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;ZZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Lcom/changdu/mobovideo/picture/PushPayload;", "payload", "expedited", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/mobovideo/picture/PushPayload;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Landroid/content/BroadcastReceiver;", "receiver", "Landroid/content/IntentFilter;", "filter", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/work/ExistingPeriodicWorkPolicy;", "policy", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroidx/work/ExistingPeriodicWorkPolicy;)V", "Landroidx/work/Constraints;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/work/Constraints;", "Ljava/util/concurrent/atomic/AtomicLong;", "Ljava/util/concurrent/atomic/AtomicLong;", "lastWakeDispatchElapsedMs", "Lcom/changdu/mobovideo/picture/receiver/WakeReceiver;", "Lcom/changdu/mobovideo/picture/receiver/WakeReceiver;", "mKeepAliveWakeReceiver", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDJobScheduler {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static WakeReceiver f5576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final CDJobScheduler INSTANCE = new CDJobScheduler();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AtomicLong f5577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicLong(0);

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, boolean z, boolean z2) {
        CDJobScheduler cDJobScheduler = INSTANCE;
        if (!cDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        if (z) {
            AlarmReceiver.Companion companion = AlarmReceiver.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            }
        }
        if (!z2) {
            PictureDownloadJobService.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        }
        cDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = f5577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (elapsedRealtime - j < 10000) {
            return false;
        }
        return f5577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(j, elapsedRealtime);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy) {
        PeriodicWorkRequest build = new PeriodicWorkRequest.Builder(PeriodicHeartbeatWorker.class, 20L, TimeUnit.MINUTES).build();
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniquePeriodicWork("periodic_heartbeat_periodic", existingPeriodicWorkPolicy, build);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (Build.VERSION.SDK_INT >= 33) {
            VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().registerReceiver(broadcastReceiver, intentFilter, 2);
        } else {
            VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        WakeReceiver wakeReceiver = new WakeReceiver();
        f5576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = wakeReceiver;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(wakeReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(wakeReceiver, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter3.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(wakeReceiver, intentFilter3);
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter4.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter4.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter4.addDataScheme(TPDownloadProxyEnum.DLPARAM_PACKAGE);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(wakeReceiver, intentFilter4);
        IntentFilter intentFilter5 = new IntentFilter();
        intentFilter5.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter5.addAction("android.net.wifi.STATE_CHANGE");
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(wakeReceiver, intentFilter5);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(context, ExistingPeriodicWorkPolicy.UPDATE);
        PictureDownloadJobService.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        PictureContentTriggerJobService.Companion.Wwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(context, ExistingPeriodicWorkPolicy.KEEP);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(TokenSyncWorker.class).setInputData(TokenSyncWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)).setBackoffCriteria(BackoffPolicy.LINEAR, 20L, TimeUnit.SECONDS).setConstraints(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).build();
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork("token_sync_now", ExistingWorkPolicy.KEEP, build);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull PushPayload pushPayload, boolean z) {
        OneTimeWorkRequest.Builder constraints = new OneTimeWorkRequest.Builder(PushProcessWorker.class).setInputData(pushPayload.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 10L, TimeUnit.SECONDS).setConstraints(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (z) {
            constraints.setExpedited(OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST);
        }
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushPayload.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork("push_process_" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ExistingWorkPolicy.KEEP, constraints.build());
        }
    }

    public final Constraints Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
    }
}
