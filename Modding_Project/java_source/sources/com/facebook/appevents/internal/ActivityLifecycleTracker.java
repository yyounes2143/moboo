package com.facebook.appevents.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.aam.MetadataIndexer;
import com.facebook.appevents.codeless.CodelessManager;
import com.facebook.appevents.iap.InAppPurchaseManager;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0015\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0018\u0010\u0014J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0019\u0010\u0014J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0003R\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\"\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010&\u001a\b\u0012\u0002\b\u0003\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010\u001cR\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001e\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010@R\u0014\u0010D\u001a\u00020;8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/facebook/appevents/internal/ActivityLifecycleTracker;", "", "<init>", "()V", "Landroid/app/Application;", "application", "", RemoteConfigConstants.RequestFieldKey.APP_ID, "", "Wwwwwwwwwww", "(Landroid/app/Application;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwww", "()Z", "Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/UUID;", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "Wwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "()Landroid/app/Activity;", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledExecutorService;", "singleThreadExecutor", "Ljava/util/concurrent/ScheduledFuture;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledFuture;", "currentFuture", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "currentFutureLock", "Ljava/util/concurrent/atomic/AtomicInteger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicInteger;", "foregroundActivityCount", "Lcom/facebook/appevents/internal/SessionInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/internal/SessionInfo;", "currentSession", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "tracking", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "J", "currentActivityAppearTime", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "I", "activityReferences", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "currActivity", "Wwwwwwwwwwwwwwwwwwwww", "()I", "sessionTimeoutInSeconds", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ActivityLifecycleTracker {
    @NotNull
    public static final ActivityLifecycleTracker INSTANCE = new ActivityLifecycleTracker();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static WeakReference<Activity> f6412Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f6413Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f6414Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6416Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile SessionInfo f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicInteger f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f6419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile ScheduledFuture<?> f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ScheduledExecutorService f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        String canonicalName = ActivityLifecycleTracker.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.internal.ActivityLifecycleTracker";
        }
        f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = canonicalName;
        f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadScheduledExecutor();
        f6419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicInteger(0);
        f6416Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    }

    public static final void Wwwwwwwwww(boolean z) {
        if (z) {
            CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwww(@NotNull Application application, @Nullable String str) {
        if (!f6416Wwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            return;
        }
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.CodelessEvents, new FeatureManager.Callback() { // from class: com.facebook.appevents.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                ActivityLifecycleTracker.Wwwwwwwwww(z);
            }
        });
        f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker$startTracking$2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
                String str2;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityCreated");
                AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwww(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(@NotNull Activity activity) {
                String str2;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityDestroyed");
                ActivityLifecycleTracker.INSTANCE.Wwwwwwwwwwwwwwwww(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(@NotNull Activity activity) {
                String str2;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityPaused");
                AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ActivityLifecycleTracker.INSTANCE.Wwwwwwwwwwwwwwww(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(@NotNull Activity activity) {
                String str2;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityResumed");
                AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ActivityLifecycleTracker.Wwwwwwwwwwwww(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle bundle) {
                String str2;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivitySaveInstanceState");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(@NotNull Activity activity) {
                int i;
                String str2;
                i = ActivityLifecycleTracker.f6413Wwwwwwwwwwwwwwwwwwwwwwwww;
                ActivityLifecycleTracker.f6413Wwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityStarted");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(@NotNull Activity activity) {
                String str2;
                int i;
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                str2 = ActivityLifecycleTracker.f6422Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str2, "onActivityStopped");
                AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                i = ActivityLifecycleTracker.f6413Wwwwwwwwwwwwwwwwwwwwwwwww;
                ActivityLifecycleTracker.f6413Wwwwwwwwwwwwwwwwwwwwwwwww = i - 1;
            }
        });
    }

    public static final void Wwwwwwwwwwww(long j, String str, Context context) {
        Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        SessionInfo sessionInfo;
        SessionInfo sessionInfo2 = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sessionInfo2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionInfo2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SessionInfo(Long.valueOf(j), null, null, 4, null);
            SessionLogger sessionLogger = SessionLogger.INSTANCE;
            SessionLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null, f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww, context);
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            long longValue = j - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue();
            if (longValue > INSTANCE.Wwwwwwwwwwwwwwwwwwwww() * 1000) {
                SessionLogger sessionLogger2 = SessionLogger.INSTANCE;
                SessionLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                SessionLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null, f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww, context);
                f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SessionInfo(Long.valueOf(j), null, null, 4, null);
            } else if (longValue > 1000 && (sessionInfo = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
        SessionInfo sessionInfo3 = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sessionInfo3 != null) {
            sessionInfo3.Wwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(j));
        }
        SessionInfo sessionInfo4 = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sessionInfo4 == null) {
            return;
        }
        sessionInfo4.Wwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwww(@NotNull Activity activity) {
        f6412Wwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(activity);
        f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.incrementAndGet();
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww();
        final long currentTimeMillis = System.currentTimeMillis();
        f6414Wwwwwwwwwwwwwwwwwwwwwwwwww = currentTimeMillis;
        final String Wwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwww(activity);
        CodelessManager.Wwwwwwwwwwwwwwwwwwwwwww(activity);
        MetadataIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        SuggestedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        InAppPurchaseManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        final Context applicationContext = activity.getApplicationContext();
        f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ActivityLifecycleTracker.Wwwwwwwwwwww(currentTimeMillis, Wwwwwwwwwwwwww2, applicationContext);
            }
        });
    }

    public static final void Wwwwwwwwwwwwww(long j, String str) {
        if (f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SessionInfo(Long.valueOf(j), null, null, 4, null);
        }
        if (f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() <= 0) {
            SessionLogger sessionLogger = SessionLogger.INSTANCE;
            SessionLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, f6415Wwwwwwwwwwwwwwwwwwwwwwwwwww);
            SessionInfo.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        synchronized (f6419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public static final void Wwwwwwwwwwwwwww(final long j, final String str) {
        if (f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SessionInfo(Long.valueOf(j), null, null, 4, null);
        }
        SessionInfo sessionInfo = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sessionInfo != null) {
            sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(j));
        }
        if (f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() <= 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.appevents.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityLifecycleTracker.Wwwwwwwwwwwwww(j, str);
                }
            };
            synchronized (f6419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.schedule(runnable, INSTANCE.Wwwwwwwwwwwwwwwwwwwww(), TimeUnit.SECONDS);
                Unit unit = Unit.INSTANCE;
            }
        }
        long j2 = f6414Wwwwwwwwwwwwwwwwwwwwwwwwww;
        long j3 = 0;
        if (j2 > 0) {
            j3 = (j - j2) / 1000;
        }
        AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, j3);
        SessionInfo sessionInfo2 = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sessionInfo2 == null) {
            return;
        }
        sessionInfo2.Wwwwwwwwwwwwwwwwwwwwww();
    }

    public static final void Wwwwwwwwwwwwwwwwww() {
        if (f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = SessionInfo.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwww();
            }
        });
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean Wwwwwwwwwwwwwwwwwwww() {
        if (f6413Wwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return true;
        }
        return false;
    }

    @JvmStatic
    @Nullable
    public static final UUID Wwwwwwwwwwwwwwwwwwwwww() {
        SessionInfo sessionInfo;
        if (f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null || (sessionInfo = f6417Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) == null) {
            return null;
        }
        return sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @Nullable
    public static final Activity Wwwwwwwwwwwwwwwwwwwwwww() {
        WeakReference<Activity> weakReference = f6412Wwwwwwwwwwwwwwwwwwwwwwww;
        if (weakReference == null || weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final void Wwwwwwwwwwwwwwww(Activity activity) {
        AtomicInteger atomicInteger = f6418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (atomicInteger.decrementAndGet() < 0) {
            atomicInteger.set(0);
        }
        Wwwwwwwwwwwwwwwwwwwwwwww();
        final long currentTimeMillis = System.currentTimeMillis();
        final String Wwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwww(activity);
        CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwww(activity);
        f6421Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ActivityLifecycleTracker.Wwwwwwwwwwwwwww(currentTimeMillis, Wwwwwwwwwwwwww2);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwww(Activity activity) {
        CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwww(activity);
    }

    public final int Wwwwwwwwwwwwwwwwwwwww() {
        FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
        FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return Constants.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (f6419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && (scheduledFuture = f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                    scheduledFuture.cancel(false);
                }
                f6420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
