package com.changdu.mobovideo.homewidget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.changdu.mobovideo.VideoApplication;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\u000f"}, d2 = {"Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "onUpdate", "", "context", "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "onEnabled", "onDeleted", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRecommendHomeWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider\n+ 2 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,248:1\n394#2,6:249\n*S KotlinDebug\n*F\n+ 1 RecommendHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider\n*L\n63#1:249,6\n*E\n"})
/* loaded from: classes3.dex */
public final class RecommendHomeWidgetProvider extends AppWidgetProvider {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "TASK_TAG", "Ljava/lang/String;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRecommendHomeWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider$Companion\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,248:1\n105#2:249\n*S KotlinDebug\n*F\n+ 1 RecommendHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider$Companion\n*L\n43#1:249\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
            if (context != null) {
                HomeWidgetLaunchIntent.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(RecommendHomeWidgetUpdaterWorker.class).build();
                WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueue(build);
                }
            }
        }

        public Companion() {
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(@Nullable Context context, @Nullable int[] iArr) {
        WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        super.onDeleted(context, iArr);
        if (context != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.cancelUniqueWork("RecommendHomeWidgetProvider");
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onEnabled(@Nullable Context context) {
        super.onEnabled(context);
        if (context != null) {
            TimeUnit timeUnit = TimeUnit.MINUTES;
            PeriodicWorkRequest build = new PeriodicWorkRequest.Builder(RecommendHomeWidgetUpdaterWorker.class, 15L, timeUnit, 5L, timeUnit).build();
            WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniquePeriodicWork("RecommendHomeWidgetProvider", ExistingPeriodicWorkPolicy.KEEP, build);
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(@Nullable Context context, @Nullable AppWidgetManager appWidgetManager, @Nullable int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        if (context == null) {
            return;
        }
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }
}
