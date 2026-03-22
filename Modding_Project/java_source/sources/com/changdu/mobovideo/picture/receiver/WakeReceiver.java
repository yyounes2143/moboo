package com.changdu.mobovideo.picture.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.changdu.mobovideo.picture.CDJobScheduler;
import com.changdu.mobovideo.picture.receiver.AlarmReceiver;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/changdu/mobovideo/picture/receiver/WakeReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "", "action", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Landroid/net/Uri;", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WakeReceiver extends BroadcastReceiver {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/changdu/mobovideo/picture/receiver/WakeReceiver$Companion;", "", "<init>", "()V", "TAG", "", "EXTRA_REASON", "REASON_HOME", "REASON_RECENTS", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (!Intrinsics.areEqual("android.intent.action.BOOT_COMPLETED", str) && !Intrinsics.areEqual("android.intent.action.MY_PACKAGE_REPLACED", str) && !Intrinsics.areEqual("android.intent.action.TIME_SET", str) && !Intrinsics.areEqual("android.intent.action.TIMEZONE_CHANGED", str) && !Intrinsics.areEqual("android.intent.action.DATE_CHANGED", str) && !Intrinsics.areEqual("android.intent.action.USER_UNLOCKED", str) && !Intrinsics.areEqual("android.app.action.NEXT_ALARM_CLOCK_CHANGED", str)) {
            return false;
        }
        return true;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Uri uri) {
        if (uri == null) {
            return "broadcast:" + str;
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (schemeSpecificPart != null && !StringsKt.isBlank(schemeSpecificPart)) {
            return "broadcast:" + str + ":" + schemeSpecificPart;
        }
        return "broadcast:" + str;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String action;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (context != null && intent != null && (action = intent.getAction()) != null) {
            if (Build.VERSION.SDK_INT >= 31 && Intrinsics.areEqual("android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED", action)) {
                AlarmReceiver.Companion companion = AlarmReceiver.Companion;
                if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
                    companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                }
            } else if (Intrinsics.areEqual(action, "android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                String stringExtra = intent.getStringExtra("reason");
                if (Intrinsics.areEqual(stringExtra, "homekey") || Intrinsics.areEqual(stringExtra, "recentapps")) {
                    CDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "system_dialog:" + stringExtra, false, false);
                }
            } else {
                CDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(action, intent.getData()), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(action), false);
            }
        }
    }
}
