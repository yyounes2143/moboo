package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0010H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0013\u0010\tJ!\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ1\u0010#\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0016H\u0007¢\u0006\u0004\b#\u0010$J7\u0010(\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020&2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0016H\u0007¢\u0006\u0004\b(\u0010)R\u001c\u0010.\u001a\n +*\u0004\u0018\u00010*0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082D¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001c\u00108\u001a\n +*\u0004\u0018\u000105058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001c\u0010<\u001a\b\u0012\u0002\b\u0003\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/facebook/appevents/AppEventQueue;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwww", "Lcom/facebook/appevents/FlushReason;", "reason", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/FlushReason;)V", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "accessTokenAppId", "Lcom/facebook/appevents/AppEvent;", "appEvent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V", "", "Wwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/AppEventCollection;", "appEventCollection", "Lcom/facebook/appevents/FlushStatistics;", "Wwwwwwwwwwwwww", "(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;", "flushResults", "", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AppEventCollection;Lcom/facebook/appevents/FlushStatistics;)Ljava/util/List;", "Lcom/facebook/appevents/SessionEventsState;", "appEvents", "", "limitEventUsage", "flushState", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/facebook/GraphResponse;", "response", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V", "", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/AppEventCollection;", "Ljava/util/concurrent/ScheduledExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledExecutorService;", "singleThreadExecutor", "Ljava/util/concurrent/ScheduledFuture;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledFuture;", "scheduledFuture", "Ljava/lang/Runnable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Runnable;", "flushRunnable", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventQueue {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ScheduledFuture<?> f6180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AppEventQueue INSTANCE = new AppEventQueue();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AppEventQueue.class.getName();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f6183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 100;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile AppEventCollection f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AppEventCollection();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ScheduledExecutorService f6181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadScheduledExecutor();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f6179Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            AppEventQueue.Wwwwwwwwwwwwwwwwwwww();
        }
    };

    @JvmStatic
    @VisibleForTesting(otherwise = 2)
    @Nullable
    public static final FlushStatistics Wwwwwwwwwwwwww(@NotNull FlushReason flushReason, @NotNull AppEventCollection appEventCollection) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return null;
        }
        try {
            FlushStatistics flushStatistics = new FlushStatistics();
            List<GraphRequest> Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(appEventCollection, flushStatistics);
            if (Wwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                return null;
            }
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Flushing %d events due to %s.", Integer.valueOf(flushStatistics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), flushReason.toString());
            for (GraphRequest graphRequest : Wwwwwwwwwwwwwwwwwwwwwwww2) {
                graphRequest.Wwwwwwwwwwwwwwwwwwwwwwww();
            }
            return flushStatistics;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            AppEventStore appEventStore = AppEventStore.INSTANCE;
            AppEventStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AppEventCollection();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            f6181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.Wwwwwwwwwwwwwww();
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwww(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            AppEventStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair, sessionEventsState);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwww(@NotNull final AccessTokenAppIdPair accessTokenAppIdPair, @NotNull GraphRequest graphRequest, @NotNull GraphResponse graphResponse, @NotNull final SessionEventsState sessionEventsState, @NotNull FlushStatistics flushStatistics) {
        String str;
        boolean z = true;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            try {
                FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                String str2 = "Success";
                FlushResult flushResult = FlushResult.SUCCESS;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == -1) {
                        str2 = "Failed: No Connectivity";
                        flushResult = FlushResult.NO_CONNECTIVITY;
                    } else {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        str2 = String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{graphResponse.toString(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString()}, 2));
                        flushResult = FlushResult.SERVER_ERROR;
                    }
                }
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.APP_EVENTS)) {
                    try {
                        str = new JSONArray((String) graphRequest.Wwwwwwwwwwww()).toString(2);
                    } catch (JSONException unused) {
                        str = "<Can't encode events for debug logging>";
                    }
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", String.valueOf(graphRequest.Wwwwwwwwwwwwwwwwww()), str2, str);
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    z = false;
                }
                sessionEventsState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                FlushResult flushResult2 = FlushResult.NO_CONNECTIVITY;
                if (flushResult == flushResult2) {
                    FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppEventQueue.Wwwwwwwwwwwwwwwww(AccessTokenAppIdPair.this, sessionEventsState);
                        }
                    });
                }
                if (flushResult != FlushResult.SUCCESS && flushStatistics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != flushResult2) {
                    flushStatistics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flushResult);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final Set<AccessTokenAppIdPair> Wwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return null;
        }
        try {
            return f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            try {
                f6180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                if (AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                    Wwwwwwwwwwwwwwwwwwwww(FlushReason.TIMER);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwww(@NotNull FlushReason flushReason) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            try {
                f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventDiskStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                try {
                    FlushStatistics Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww(flushReason, f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    if (Wwwwwwwwwwwwww2 != null) {
                        Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                        intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        LocalBroadcastManager.getInstance(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).sendBroadcast(intent);
                    }
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(FlushReason flushReason) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwww(flushReason);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull final FlushReason flushReason) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            f6181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.Wwwwwwwwwwwwwwwwwwwwww(FlushReason.this);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final List<GraphRequest> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppEventCollection appEventCollection, @NotNull FlushStatistics flushStatistics) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return null;
        }
        try {
            boolean Wwwwwwww2 = FacebookSdk.Wwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            ArrayList arrayList = new ArrayList();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                SessionEventsState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = appEventCollection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwww2, flushStatistics);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (AppEventsCAPIManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            AppEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    }
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, SessionEventsState sessionEventsState, FlushStatistics flushStatistics, GraphResponse graphResponse) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwww(accessTokenAppIdPair, graphRequest, graphResponse, sessionEventsState, flushStatistics);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }

    @JvmStatic
    @Nullable
    public static final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final AccessTokenAppIdPair accessTokenAppIdPair, @NotNull final SessionEventsState sessionEventsState, boolean z, @NotNull final FlushStatistics flushStatistics) {
        boolean z2 = false;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return null;
        }
        try {
            String applicationId = accessTokenAppIdPair.getApplicationId();
            FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(applicationId, false);
            GraphRequest.Companion companion = GraphRequest.Companion;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            final GraphRequest Wwwwwwww2 = companion.Wwwwwwww(null, String.format("%s/activities", Arrays.copyOf(new Object[]{applicationId}, 1)), null, null);
            Wwwwwwww2.Www(true);
            Bundle Wwwwwwwwwwwwww2 = Wwwwwwww2.Wwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwww2 = new Bundle();
            }
            Wwwwwwwwwwwwww2.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwww2.putString("device_token", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            String Wwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwww2.putString("install_referrer", Wwwwwwwwwwwwwwwwwwwwwwww2);
            }
            Wwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwww2 != null) {
                z2 = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww();
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionEventsState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwww2, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), z2, z);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                return null;
            }
            flushStatistics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flushStatistics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwww2.Wwww(new GraphRequest.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    AppEventQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenAppIdPair.this, Wwwwwwww2, sessionEventsState, flushStatistics, graphResponse);
                }
            });
            return Wwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            try {
                f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair, appEvent);
                if (AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY && f6182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > f6183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwww(FlushReason.EVENT_THRESHOLD);
                } else if (f6180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    f6180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f6181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.schedule(f6179Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, 15L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final AccessTokenAppIdPair accessTokenAppIdPair, @NotNull final AppEvent appEvent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventQueue.class)) {
            return;
        }
        try {
            f6181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppEventQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenAppIdPair.this, appEvent);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventQueue.class);
        }
    }
}
