package com.changdu.mobovideo.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.changdu.mobovideo.R;
import com.changdu.mobovideo.VideoApplication;
import com.google.firebase.messaging.Constants;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.coroutines.BuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0018\u0010\u0019Ja\u0010%\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020\u0006¢\u0006\u0004\b%\u0010&J\u0015\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b(\u0010)J\u0015\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0006¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0006¢\u0006\u0004\b-\u0010,Ji\u00102\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006¢\u0006\u0004\b2\u00103J=\u00106\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00062\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107JI\u00108\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00101\u001a\u00020\u00062\u0006\u00105\u001a\u000204¢\u0006\u0004\b8\u00109JA\u0010:\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u00105\u001a\u000204¢\u0006\u0004\b:\u0010;R\u001a\u0010?\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b8\u0010<\u001a\u0004\b=\u0010>R\u001a\u0010A\u001a\u00020\u00068\u0006X\u0086D¢\u0006\f\n\u0004\b\u0012\u0010<\u001a\u0004\b@\u0010>¨\u0006B"}, d2 = {"Lcom/changdu/mobovideo/utils/NotificationUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Landroid/app/NotificationManager;", "notificationManager", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/app/NotificationManager;)V", "Landroid/app/NotificationChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Landroid/app/NotificationChannel;", "id", "name", "", "importance", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannel;", "iconResId", "contentTitle", "contentText", Constants.ScionAnalytics.PARAM_LABEL, "button", "Landroid/content/Intent;", "targetIntent", "Landroid/graphics/Bitmap;", "image", "image2", "pushStyle", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "jsonString", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwww", "", "progress", "bonusStr", "tip", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroidx/core/app/NotificationCompat$Builder;", "builder", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Double;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "INTENT_KEY_LOCAL_PUSH_MESSAGE", "Wwwwwwwwwwwwwwwwwwwwwwwww", "INTENT_KEY_LOCAL_ACTIVITY_PUSH_MESSAGE", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NotificationUtil {
    @NotNull
    public static final NotificationUtil INSTANCE = new NotificationUtil();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5654Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "localPushMessage";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5653Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "localActivityMessage";

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull String str) {
        NotificationManager notificationManager;
        VideoApplication.Companion companion = VideoApplication.Companion;
        Object systemService = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getSystemService("notification");
        if (systemService instanceof NotificationManager) {
            notificationManager = (NotificationManager) systemService;
        } else {
            notificationManager = null;
        }
        if (notificationManager == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), notificationManager);
        BuildersKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new NotificationUtil$notifyLocalPush$1(str, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        NotificationManager notificationManager;
        VideoApplication.Companion companion = VideoApplication.Companion;
        Object systemService = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getSystemService("notification");
        if (systemService instanceof NotificationManager) {
            notificationManager = (NotificationManager) systemService;
        } else {
            notificationManager = null;
        }
        if (notificationManager == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), notificationManager);
        BuildersKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new NotificationUtil$notifyLocalActivityPush$1(str, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull Intent intent, @Nullable Bitmap bitmap, @Nullable Double d, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, notificationManager);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, Wwwwwwwwwwwwwwwwwwwwwwwwwww(context));
        switch (str6.hashCode()) {
            case 49:
                if (str6.equals("1")) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2, str3, str4, builder);
                    break;
                }
                break;
            case 50:
                if (str6.equals("2")) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2, bitmap, d, str5, builder);
                    builder = builder;
                    break;
                }
                break;
            case 51:
                if (str6.equals("3")) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2, bitmap, str3, builder);
                    break;
                }
                break;
        }
        builder.setSmallIcon(i).setContentTitle(str).setContentText(str2).setStyle(new NotificationCompat.DecoratedCustomViewStyle());
        PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent, 201326592);
        builder.setContentIntent(activity).build();
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setBadgeIconType(1);
        }
        Notification build = builder.build();
        build.flags |= 16;
        notificationManager.notify(10087, build);
        PushAutoTrackHelper.onNotify(notificationManager, 10087, build);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull Intent intent, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2, @NotNull String str5) {
        NotificationManager notificationManager;
        Object systemService = context.getSystemService("notification");
        if (systemService instanceof NotificationManager) {
            notificationManager = (NotificationManager) systemService;
        } else {
            notificationManager = null;
        }
        if (notificationManager == null) {
            return;
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.notification_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.notification_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.content, str2);
        if (str3.length() == 0) {
            remoteViews.setViewVisibility(R.id.labelView, 8);
            remoteViews2.setViewVisibility(R.id.labelView, 8);
        } else {
            remoteViews.setViewVisibility(R.id.labelView, 0);
            remoteViews2.setViewVisibility(R.id.labelView, 0);
            remoteViews.setTextViewText(R.id.labelView, str3);
            remoteViews2.setTextViewText(R.id.labelView, str3);
        }
        if (bitmap != null) {
            if (Intrinsics.areEqual(str5, "2")) {
                remoteViews.setImageViewBitmap(R.id.startImageView, bitmap);
                remoteViews.setViewVisibility(R.id.startImageView, 0);
            } else {
                remoteViews.setImageViewBitmap(R.id.endImageView, bitmap);
                remoteViews.setViewVisibility(R.id.endImageView, 0);
            }
            remoteViews2.setViewVisibility(R.id.endImageView, 0);
            remoteViews2.setImageViewBitmap(R.id.endImageView, bitmap);
        }
        if (bitmap2 != null && Intrinsics.areEqual(str5, "2")) {
            remoteViews.setImageViewBitmap(R.id.endImageView, bitmap2);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
        }
        if (str4.length() != 0) {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str4);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, notificationManager);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, Wwwwwwwwwwwwwwwwwwwwwwwwwww(context));
        builder.setSmallIcon(i).setContentTitle(str).setContentText(str2).setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setCustomContentView(remoteViews).setCustomBigContentView(remoteViews2);
        PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent, 201326592);
        builder.setContentIntent(activity).build();
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setBadgeIconType(1);
        }
        Notification build = builder.build();
        build.flags |= 16;
        int nextInt = Random.Default.nextInt(110000, 99999999);
        notificationManager.notify(nextInt, build);
        PushAutoTrackHelper.onNotify(notificationManager, nextInt, build);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return NotificationManagerCompat.from(context).areNotificationsEnabled();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return f5654Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5653Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return "MoboReels";
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return AppUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull NotificationManager notificationManager) {
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull NotificationCompat.Builder builder) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_sign_in_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_sign_in_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.title, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.content, str2);
        if (str3.length() == 0) {
            remoteViews2.setViewVisibility(R.id.button, 8);
        } else {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str3);
        }
        if (str4.length() != 0 && !Intrinsics.areEqual(str4, "0")) {
            remoteViews2.setViewVisibility(R.id.bonusView, 0);
            remoteViews2.setTextViewText(R.id.bonusView, str4);
            remoteViews.setViewVisibility(R.id.bonusView, 0);
            remoteViews.setTextViewText(R.id.bonusView, str4);
        } else {
            remoteViews2.setViewVisibility(R.id.bonusView, 8);
            remoteViews.setViewVisibility(R.id.bonusView, 8);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @Nullable Bitmap bitmap, @Nullable String str3, @NotNull NotificationCompat.Builder builder) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_recommend_series_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_recommend_series_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.title, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.content, str2);
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
            remoteViews2.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews2.setViewVisibility(R.id.endImageView, 0);
        } else {
            remoteViews.setViewVisibility(R.id.endImageView, 8);
            remoteViews2.setViewVisibility(R.id.endImageView, 8);
        }
        if (str3 != null && str3.length() != 0) {
            remoteViews2.setViewVisibility(R.id.btnView, 0);
            remoteViews2.setTextViewText(R.id.btnView, str3);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }

    @RequiresApi(26)
    @NotNull
    public final NotificationChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, int i) {
        androidx.media3.common.util.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        NotificationChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.browser.trusted.Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, i);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setDescription("");
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setShowBadge(true);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @RequiresApi(26)
    @NotNull
    public final NotificationChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww(context), Wwwwwwwwwwwwwwwwwwwwwwwwww(context), 3);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @Nullable Bitmap bitmap, @Nullable Double d, @NotNull String str3, @NotNull NotificationCompat.Builder builder) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_continue_series_small);
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), (int) R.layout.local_activity_continue_series_large);
        remoteViews.setTextViewText(R.id.title, str);
        remoteViews2.setTextViewText(R.id.title, str);
        remoteViews.setTextViewText(R.id.content, str2);
        remoteViews2.setTextViewText(R.id.content, str2);
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews.setViewVisibility(R.id.endImageView, 0);
            remoteViews2.setImageViewBitmap(R.id.endImageView, bitmap);
            remoteViews2.setViewVisibility(R.id.endImageView, 0);
        } else {
            remoteViews.setViewVisibility(R.id.endImageView, 8);
            remoteViews2.setViewVisibility(R.id.endImageView, 8);
        }
        if (d != null) {
            remoteViews2.setViewVisibility(R.id.progressBar, 0);
            remoteViews2.setProgressBar(R.id.progressBar, 100, (int) (d.doubleValue() * 100), false);
        } else {
            remoteViews2.setViewVisibility(R.id.progressBar, 8);
        }
        if (str3.length() == 0) {
            remoteViews2.setViewVisibility(R.id.notificationHintText, 8);
        } else {
            remoteViews2.setTextViewText(R.id.notificationHintText, str3);
            remoteViews2.setViewVisibility(R.id.notificationHintText, 0);
        }
        builder.setCustomContentView(remoteViews);
        builder.setCustomBigContentView(remoteViews2);
    }
}
