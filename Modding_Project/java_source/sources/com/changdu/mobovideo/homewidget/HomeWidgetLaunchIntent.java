package com.changdu.mobovideo.homewidget;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.work.Constraints;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.changdu.mobovideo.VideoApplication;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\u000e\u001a\u00020\r\"\b\b\u0000\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;", "", "<init>", "()V", "Landroid/app/Activity;", "T", "Landroid/content/Context;", "context", "Ljava/lang/Class;", "activityClass", "", "tag", "ndaction", "Landroid/app/PendingIntent;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHomeWidgetIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeWidgetIntent.kt\ncom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,82:1\n29#2:83\n105#3:84\n*S KotlinDebug\n*F\n+ 1 HomeWidgetIntent.kt\ncom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent\n*L\n34#1:83\n62#1:84\n*E\n"})
/* loaded from: classes3.dex */
public final class HomeWidgetLaunchIntent {
    @NotNull
    public static final HomeWidgetLaunchIntent INSTANCE = new HomeWidgetLaunchIntent();

    @NotNull
    public final <T extends Activity> PendingIntent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull Class<T> cls, @NotNull String str, @NotNull String str2) {
        Intent intent = new Intent(context, (Class<?>) cls);
        String encode = Uri.encode(str2);
        intent.setData(Uri.parse("moboreelshomewidget://homewidgetprovider?provider=" + str + "&ndactionstr=" + encode));
        intent.setAction("android.intent.action.VIEW");
        int i = Build.VERSION.SDK_INT;
        if (i < 34) {
            PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
            PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
            PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent, 201326592);
            return activity;
        }
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        if (i >= 35) {
            makeBasic.setPendingIntentCreatorBackgroundActivityStartMode(1);
        } else if (i >= 34) {
            makeBasic.setPendingIntentBackgroundActivityStartMode(1);
        }
        Bundle bundle = makeBasic.toBundle();
        PushAutoTrackHelper.hookIntentGetActivityBundle(context, 0, intent, 201326592, bundle);
        PendingIntent activity2 = PendingIntent.getActivity(context, 0, intent, 201326592, bundle);
        PushAutoTrackHelper.hookPendingIntentGetActivityBundle(activity2, context, 0, intent, 201326592, bundle);
        return activity2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork("appWidgetWorkerKeepEnabled", ExistingWorkPolicy.KEEP, new OneTimeWorkRequest.Builder(EmptyWorker.class).setInitialDelay(3650L, TimeUnit.DAYS).setConstraints(new Constraints.Builder().setRequiresCharging(true).build()).build());
        }
    }
}
