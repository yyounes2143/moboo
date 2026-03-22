package com.changdu.mobovideo.picture.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.changdu.mobovideo.picture.CDJobScheduler;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/changdu/mobovideo/picture/receiver/AlarmReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AlarmReceiver extends BroadcastReceiver {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/picture/receiver/AlarmReceiver$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "", "ACTION_ALARM", "Ljava/lang/String;", "TAG", "", "REQUEST_CODE_ALARM", "I", "CALENDAR_COUNT", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            try {
                AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
                if (alarmManager != null) {
                    Intent intent = new Intent("com.changdu.mobovideo.action.alarm").setPackage(context.getPackageName());
                    PushAutoTrackHelper.hookIntentGetBroadcast(context, 1001, intent, 201326592);
                    PendingIntent broadcast = PendingIntent.getBroadcast(context, 1001, intent, 201326592);
                    PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, 1001, intent, 201326592);
                    Calendar calendar = Calendar.getInstance();
                    calendar.add(12, 30);
                    long timeInMillis = calendar.getTimeInMillis();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
                        alarmManager.setExactAndAllowWhileIdle(0, timeInMillis, broadcast);
                    } else {
                        alarmManager.setAndAllowWhileIdle(0, timeInMillis, broadcast);
                    }
                }
            } catch (SecurityException | Exception unused) {
            }
        }

        @JvmStatic
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            AlarmManager alarmManager;
            boolean canScheduleExactAlarms;
            Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (systemService instanceof AlarmManager) {
                alarmManager = (AlarmManager) systemService;
            } else {
                alarmManager = null;
            }
            if (alarmManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 31) {
                canScheduleExactAlarms = alarmManager.canScheduleExactAlarms();
                return canScheduleExactAlarms;
            }
            return true;
        }

        public Companion() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @Nullable Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (intent != null && intent.getAction() != null && Intrinsics.areEqual("com.changdu.mobovideo.action.alarm", intent.getAction())) {
            CDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, NotificationCompat.CATEGORY_ALARM, true, false);
        }
    }
}
