package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFb1aSDK;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1iSDK implements Application.ActivityLifecycleCallbacks {
    @NotNull
    private final AFi1oSDK AFAdRevenueData;
    @NotNull
    private final Runnable areAllFieldsValid = new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            AFb1iSDK.getMediationNetwork(AFb1iSDK.this);
        }
    };
    @Nullable
    private ScheduledFuture<?> component4;
    @NotNull
    private final ScheduledExecutorService getCurrencyIso4217Code;
    private volatile boolean getMediationNetwork;
    @NotNull
    private final AFa1mSDK getMonetizationNetwork;
    @NotNull
    final AFb1aSDK.AFa1tSDK getRevenue;

    public AFb1iSDK(@NotNull ScheduledExecutorService scheduledExecutorService, @NotNull AFa1mSDK aFa1mSDK, @NotNull AFi1oSDK aFi1oSDK, @NotNull AFb1aSDK.AFa1tSDK aFa1tSDK) {
        this.getCurrencyIso4217Code = scheduledExecutorService;
        this.getMonetizationNetwork = aFa1mSDK;
        this.AFAdRevenueData = aFi1oSDK;
        this.getRevenue = aFa1tSDK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMediationNetwork(AFb1iSDK aFb1iSDK) {
        Object m438constructorimpl;
        aFb1iSDK.getMediationNetwork = false;
        try {
            Result.Companion companion = Result.Companion;
            aFb1iSDK.getRevenue.getMediationNetwork();
            m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
        if (m441exceptionOrNullimpl != null) {
            AFLogger.afErrorLog("Background task failed with a throwable: ", m441exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMonetizationNetwork(AFb1iSDK aFb1iSDK, AFh1qSDK aFh1qSDK) {
        Object m438constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            aFb1iSDK.getRevenue.getRevenue(aFh1qSDK);
            m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
        if (m441exceptionOrNullimpl != null) {
            AFLogger.afErrorLog("Listener thrown an exception: ", m441exceptionOrNullimpl, true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Uri uri;
        AFa1mSDK aFa1mSDK = this.getMonetizationNetwork;
        Intent intent = activity.getIntent();
        if (intent != null && "android.intent.action.VIEW".equals(intent.getAction())) {
            uri = intent.getData();
        } else {
            uri = null;
        }
        if (uri != null && intent != aFa1mSDK.AFAdRevenueData) {
            aFa1mSDK.AFAdRevenueData = intent;
        }
        this.AFAdRevenueData.getMonetizationNetwork(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NotNull Activity activity) {
        if (this.getMediationNetwork) {
            ScheduledExecutorService scheduledExecutorService = this.getCurrencyIso4217Code;
            Runnable runnable = this.areAllFieldsValid;
            AFb1aSDK.AFa1zSDK aFa1zSDK = AFb1aSDK.AFa1zSDK;
            this.component4 = scheduledExecutorService.schedule(runnable, AFb1aSDK.AFa1zSDK.getMediationNetwork(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NotNull Activity activity) {
        if (!this.getMediationNetwork) {
            this.getMediationNetwork = true;
            final AFh1qSDK aFh1qSDK = new AFh1qSDK(activity, this.AFAdRevenueData);
            this.getCurrencyIso4217Code.execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFb1iSDK.getMonetizationNetwork(AFb1iSDK.this, aFh1qSDK);
                }
            });
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.component4;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NotNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NotNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NotNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle bundle) {
    }
}
