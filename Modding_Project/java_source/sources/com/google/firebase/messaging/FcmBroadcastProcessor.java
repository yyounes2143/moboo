package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes5.dex */
public class FcmBroadcastProcessor {
    private static final String EXTRA_BINARY_DATA = "rawData";
    private static final String EXTRA_BINARY_DATA_BASE_64 = "gcm.rawData64";
    @GuardedBy("lock")
    private static WithinAppServiceConnection fcmServiceConn;
    private static final Object lock = new Object();
    private final Context context;
    private final Executor executor;

    public FcmBroadcastProcessor(Context context) {
        this.context = context;
        this.executor = new androidx.media3.exoplayer.dash.offline.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static /* synthetic */ Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
        return 403;
    }

    public static /* synthetic */ Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
        return -1;
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Intent intent, boolean z, Task task) {
        if (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) {
            return bindToMessagingService(context, intent, z).continueWith(new androidx.media3.exoplayer.dash.offline.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new Continuation() { // from class: com.google.firebase.messaging.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return FcmBroadcastProcessor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task2);
                }
            });
        }
        return task;
    }

    private static Task<Integer> bindToMessagingService(Context context, Intent intent, boolean z) {
        WithinAppServiceConnection serviceConnection = getServiceConnection(context, "com.google.firebase.MESSAGING_EVENT");
        if (z) {
            if (ServiceStarter.getInstance().hasWakeLockPermission(context)) {
                WakeLockHolder.sendWakefulServiceIntent(context, serviceConnection, intent);
            } else {
                serviceConnection.sendIntent(intent);
            }
            return Tasks.forResult(-1);
        }
        return serviceConnection.sendIntent(intent).continueWith(new androidx.media3.exoplayer.dash.offline.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new Continuation() { // from class: com.google.firebase.messaging.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task);
            }
        });
    }

    private static WithinAppServiceConnection getServiceConnection(Context context, String str) {
        WithinAppServiceConnection withinAppServiceConnection;
        synchronized (lock) {
            try {
                if (fcmServiceConn == null) {
                    fcmServiceConn = new WithinAppServiceConnection(context, str);
                }
                withinAppServiceConnection = fcmServiceConn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return withinAppServiceConnection;
    }

    @VisibleForTesting
    public static void reset() {
        synchronized (lock) {
            fcmServiceConn = null;
        }
    }

    @VisibleForTesting
    public static void setServiceConnection(WithinAppServiceConnection withinAppServiceConnection) {
        synchronized (lock) {
            fcmServiceConn = withinAppServiceConnection;
        }
    }

    @KeepForSdk
    public Task<Integer> process(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_BINARY_DATA_BASE_64);
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra(EXTRA_BINARY_DATA_BASE_64);
        }
        return startMessagingService(this.context, intent);
    }

    @SuppressLint({"InlinedApi"})
    public Task<Integer> startMessagingService(final Context context, final Intent intent) {
        boolean z;
        final boolean z2 = false;
        if (PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z = true;
        } else {
            z = false;
        }
        if ((intent.getFlags() & 268435456) != 0) {
            z2 = true;
        }
        if (z && !z2) {
            return bindToMessagingService(context, intent, z2);
        }
        return Tasks.call(this.executor, new Callable() { // from class: com.google.firebase.messaging.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(ServiceStarter.getInstance().startMessagingService(context, intent));
                return valueOf;
            }
        }).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.messaging.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return FcmBroadcastProcessor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent, z2, task);
            }
        });
    }

    public FcmBroadcastProcessor(Context context, ExecutorService executorService) {
        this.context = context;
        this.executor = executorService;
    }
}
