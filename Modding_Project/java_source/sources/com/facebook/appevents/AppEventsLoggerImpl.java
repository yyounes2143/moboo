package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.AppEventsLoggerImpl;
import com.facebook.appevents.integrity.BlocklistEventsManager;
import com.facebook.appevents.integrity.MACARuleMatchingManager;
import com.facebook.appevents.integrity.ProtectedModeManager;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InstallReferrerUtil;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 72\u00020\u0001:\u00017B%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB'\b\u0010\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\u000bJ#\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0014\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010\u001f\u001a\u00020\u000f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001f\u0010 J+\u0010!\u001a\u00020\u000f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b!\u0010 J3\u0010$\u001a\u00020\u000f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u000f¢\u0006\u0004\b&\u0010'J+\u0010(\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b(\u0010)J5\u0010*\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b*\u0010+J=\u0010.\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010#\u001a\u00020\"2\b\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b.\u0010/R\u0014\u00102\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00068"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl;", "", "", "activityName", "applicationId", "Lcom/facebook/AccessToken;", "accessToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "eventName", "Landroid/os/Bundle;", "parameters", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)V", "", "valueToSum", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;DLandroid/os/Bundle;)V", "buttonText", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Ljava/math/BigDecimal;", "purchaseAmount", "Ljava/util/Currency;", "currency", "Wwwwwwwwwwwwwwwwww", "(Ljava/math/BigDecimal;Ljava/util/Currency;)V", "Wwwwwwwwwwwwwwwww", "(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwww", "", "isImplicitlyLogged", "Wwwwwwwwwwwwwwww", "(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V", "Ljava/util/UUID;", "currentSessionId", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "contextName", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "accessTokenAppId", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsLoggerImpl {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6188Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6189Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6190Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f6191Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AppEventsLogger.FlushBehavior f6192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f6193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AccessTokenAppIdPair f6195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0014\u0010\u0003J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0015\u0010\tJ\u0019\u0010\u0017\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001f\u0010\u0003J\u001f\u0010$\u001a\u00020\r2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010\u0018R\u0014\u0010(\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010)R\u0014\u0010+\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010)R\u0014\u0010,\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010)R\u0014\u0010-\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010)R\u0014\u0010.\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010)R\u0014\u00100\u001a\u00020/8\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00102\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010)R\u0014\u00103\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010)R\u0014\u00104\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010)R\u0018\u00105\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010)R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u00109\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010<\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010>\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010)R\u0014\u0010?\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006A"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "", "Wwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Landroid/app/Application;", "application", "applicationId", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "referrer", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/AppEvent;", "event", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "accessTokenAppId", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V", "message", "Wwwwwwwwwwwwwwwww", "ACCOUNT_KIT_EVENT_NAME_PREFIX", "Ljava/lang/String;", "APP_EVENTS_KILLSWITCH", "APP_EVENT_NAME_PUSH_OPENED", "APP_EVENT_PREFERENCES", "APP_EVENT_PUSH_PARAMETER_ACTION", "APP_EVENT_PUSH_PARAMETER_CAMPAIGN", "", "APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS", "I", "PUSH_PAYLOAD_CAMPAIGN_KEY", "PUSH_PAYLOAD_KEY", "TAG", "anonymousAppDeviceGUID", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "backgroundExecutor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "flushBehaviorField", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "", "isActivateAppEventRequested", "Z", "pushNotificationsRegistrationIdField", "staticLock", "Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Wwwwwwwwwwwwwwwwwww() {
            HashSet<String> hashSet = new HashSet();
            for (AccessTokenAppIdPair accessTokenAppIdPair : AppEventQueue.Wwwwwwwwwwwwwwwwwww()) {
                hashSet.add(accessTokenAppIdPair.getApplicationId());
            }
            for (String str : hashSet) {
                FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(str, true);
            }
        }

        public static final void Wwwwwwwwwwwwwwwwwwwww(Context context, AppEventsLoggerImpl appEventsLoggerImpl) {
            Bundle bundle = new Bundle();
            String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
            String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                String str = strArr[i];
                String str2 = strArr2[i];
                try {
                    Class.forName(str);
                    bundle.putInt(str2, 1);
                    i2 |= 1 << i;
                } catch (ClassNotFoundException unused) {
                }
                if (i3 > 10) {
                    break;
                }
                i = i3;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (sharedPreferences.getInt("kitsBitmask", 0) != i2) {
                sharedPreferences.edit().putInt("kitsBitmask", i2).apply();
                appEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwww("fb_sdk_initialize", null, bundle);
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwww(@Nullable String str) {
            SharedPreferences sharedPreferences = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (str != null) {
                sharedPreferences.edit().putString("install_referrer", str).apply();
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwww() {
            AppEventQueue.Wwwwwwwwwwwwwwww();
        }

        public final void Wwwwwwwwwwwwwwwww(String str) {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", str);
        }

        public final void Wwwwwwwwwwwwwwwwww(AppEvent appEvent, AccessTokenAppIdPair accessTokenAppIdPair) {
            AppEventQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair, appEvent);
            FeatureManager featureManager = FeatureManager.INSTANCE;
            if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.OnDevicePostInstallEventProcessing) && OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair.getApplicationId(), appEvent);
            }
            if (!appEvent.getIsImplicit() && !AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (Intrinsics.areEqual(appEvent.getName(), "fb_mobile_activate_app")) {
                    AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                } else {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwww() {
            synchronized (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    return;
                }
                AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwww(new ScheduledThreadPoolExecutor(1));
                Unit unit = Unit.INSTANCE;
                Runnable runnable = new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwww();
                    }
                };
                ScheduledThreadPoolExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.scheduleAtFixedRate(runnable, 0L, 86400L, TimeUnit.SECONDS);
                    return;
                }
                throw new IllegalStateException("Required value was null.");
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context, @Nullable String str) {
            if (!FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
                return;
            }
            final AppEventsLoggerImpl appEventsLoggerImpl = new AppEventsLoggerImpl(context, str, (AccessToken) null);
            ScheduledThreadPoolExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwww(context, appEventsLoggerImpl);
                    }
                });
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwww() {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            synchronized (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
            InstallReferrerUtil installReferrerUtil = InstallReferrerUtil.INSTANCE;
            InstallReferrerUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new InstallReferrerUtil.Callback() { // from class: com.facebook.appevents.AppEventsLoggerImpl$Companion$getInstallReferrer$1
                @Override // com.facebook.internal.InstallReferrerUtil.Callback
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
                    AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwww(str);
                }
            });
            return FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
        }

        @JvmStatic
        @NotNull
        public final AppEventsLogger.FlushBehavior Wwwwwwwwwwwwwwwwwwwwwwwww() {
            AppEventsLogger.FlushBehavior Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            synchronized (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            if (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                synchronized (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    try {
                        if (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                            AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null));
                            if (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                                AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("XZ", UUID.randomUUID()));
                                context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).apply();
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @JvmStatic
        @NotNull
        public final Executor Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                Wwwwwwwwwwwwwwwwwwww();
            }
            ScheduledThreadPoolExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new IllegalStateException("Required value was null.");
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwww() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
                AppEventQueue.Wwwwwwwwwwwwwwwwwwwwwww(FlushReason.EAGER_FLUSHING_EVENT);
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, @Nullable String str) {
            if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk()) {
                AnalyticsUserIDStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                UserDataStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (str == null) {
                    str = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
                }
                FacebookSdk.Kkkkkkkkkkkkkkkkkkkkk(application, str);
                ActivityLifecycleTracker.Wwwwwwwwwww(application, str);
                return;
            }
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }

        public Companion() {
        }
    }

    static {
        String canonicalName = AppEventsLoggerImpl.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.AppEventsLoggerImpl";
        }
        f6194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = canonicalName;
        f6192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AppEventsLogger.FlushBehavior.AUTO;
        f6191Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
    }

    public AppEventsLoggerImpl(@NotNull String str, @Nullable String str2, @Nullable AccessToken accessToken) {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        this.f6196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        accessToken = accessToken == null ? AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() : accessToken;
        if (accessToken == null || accessToken.Wwwwwwwwwwwwwwwwwwww() || !(str2 == null || Intrinsics.areEqual(str2, accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) {
            if (str2 == null) {
                Utility utility = Utility.INSTANCE;
                str2 = Utility.Kkkkkkkkkkkkkkkkkkkkkk(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            }
            if (str2 != null) {
                this.f6195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AccessTokenAppIdPair(null, str2);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        } else {
            this.f6195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AccessTokenAppIdPair(accessToken);
        }
        Companion.Wwwwwwwwwwwwwwwwwwww();
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            f6193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scheduledThreadPoolExecutor;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            f6190Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return;
        }
        try {
            f6189Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
        }
    }

    public static final /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return false;
        }
        try {
            return f6189Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return false;
        }
    }

    public static final /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return f6191Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return f6188Wwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ AppEventsLogger.FlushBehavior Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return f6192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ ScheduledThreadPoolExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return f6193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public static final /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerImpl.class)) {
            return null;
        }
        try {
            return f6190Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsLoggerImpl.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwww(bigDecimal, currency, bundle, true);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, boolean z) {
        Throwable th;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            if (bigDecimal == null) {
                Companion.Wwwwwwwwwwwwwwwww("purchaseAmount cannot be null");
            } else if (currency == null) {
                Companion.Wwwwwwwwwwwwwwwww("currency cannot be null");
            } else {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                try {
                    bundle2.putString("fb_currency", currency.getCurrencyCode());
                    try {
                        Wwwwwwwwwwwwwwwwwwwwww("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwww());
                        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } catch (Throwable th2) {
                        th = th2;
                        th = th;
                        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void Wwwwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwww(bigDecimal, currency, bundle, false);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwww(bigDecimal, currency, null);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        Throwable th;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            if (bigDecimal != null && currency != null) {
                if (bundle == null) {
                    try {
                        bundle = new Bundle();
                    } catch (Throwable th2) {
                        th = th2;
                        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                        return;
                    }
                }
                Bundle bundle2 = bundle;
                try {
                    bundle2.putString("fb_currency", currency.getCurrencyCode());
                    Wwwwwwwwwwwwwwwwwwwwww(str, Double.valueOf(bigDecimal.doubleValue()), bundle2, true, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwww());
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                    return;
                }
            }
            Utility utility = Utility.INSTANCE;
            Utility.Illllllllllllllllllllll(f6194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "purchaseAmount and currency cannot be null");
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Double d, @Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwww(str, d, bundle, true, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwww());
            } catch (Throwable th) {
                th = th;
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_is_suggested_event", "1");
            bundle.putString("_button_text", str2);
            Wwwwwwwwwwwwwwwwwwwwwww(str, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Double d, @Nullable Bundle bundle, boolean z, @Nullable UUID uuid) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) && str != null) {
            try {
                if (str.length() == 0) {
                    return;
                }
                FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
                if (FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("app_events_killswitch", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false)) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                } else if (!BlocklistEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                    try {
                        try {
                            MACARuleMatchingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, str);
                            ProtectedModeManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                            Companion.Wwwwwwwwwwwwwwwwww(new AppEvent(this.f6196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, d, bundle, z, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwww(), uuid), this.f6195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        } catch (JSONException e) {
                            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e.toString());
                        }
                    } catch (FacebookException e2) {
                        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event: %s", e2.toString());
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwww(str, null, bundle, false, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwww());
            } catch (Throwable th) {
                th = th;
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, double d, @Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwww(str, Double.valueOf(d), bundle, false, ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwww());
            } catch (Throwable th) {
                th = th;
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            AppEventQueue appEventQueue = AppEventQueue.INSTANCE;
            AppEventQueue.Wwwwwwwwwwwwwwwwwwwwwww(FlushReason.EXPLICIT);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public AppEventsLoggerImpl(@Nullable Context context, @Nullable String str, @Nullable AccessToken accessToken) {
        this(Utility.Wwwwwwwwwwwwww(context), str, accessToken);
    }
}
