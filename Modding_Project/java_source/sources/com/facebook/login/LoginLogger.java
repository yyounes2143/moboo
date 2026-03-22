package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 22\u00020\u0001:\u00012B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\f\u0010\rJc\u0010\u0016\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJg\u0010\u001e\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0018\u0010\u0010\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ/\u0010 \u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b \u0010\u001bJ\u0017\u0010\"\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b$\u0010#J\u0017\u0010%\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b%\u0010#J\u001f\u0010&\u001a\u00020\u000b2\b\u0010!\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b&\u0010'J/\u0010(\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b(\u0010\u001bJ\u0019\u0010)\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b)\u0010#R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010/R\u0018\u00101\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010+¨\u00063"}, d2 = {"Lcom/facebook/login/LoginLogger;", "", "Landroid/content/Context;", "context", "", "applicationId", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "Lcom/facebook/login/LoginClient$Request;", "pendingLoginRequest", "eventName", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)V", "loginRequestId", "", "loggingExtras", "Lcom/facebook/login/LoginClient$Result$Code;", "result", "resultExtras", "Ljava/lang/Exception;", "exception", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;Ljava/lang/String;)V", "authId", FirebaseAnalytics.Param.METHOD, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "errorMessage", "errorCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "loggerRef", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Exception;)V", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lcom/facebook/appevents/InternalAppEventsLogger;", "Lcom/facebook/appevents/InternalAppEventsLogger;", "logger", "facebookVersion", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LoginLogger {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ScheduledExecutorService f7005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadScheduledExecutor();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalAppEventsLogger f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\nR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\nR\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\nR\u0014\u0010\u0013\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\nR\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\nR\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\nR\u0014\u0010\u0018\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\nR\u0014\u0010\u0019\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\nR\u0014\u0010\u001a\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\nR\u0014\u0010\u001b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\nR\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\nR\u0014\u0010\u001d\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\nR\u0014\u0010\u001e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\nR\u0014\u0010\u001f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\nR\u0014\u0010 \u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\nR\u0014\u0010!\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\nR\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\nR\u0014\u0010#\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\nR\u0014\u0010$\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\nR\u0014\u0010%\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\nR\u0014\u0010&\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\nR\u0014\u0010'\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\nR\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\nR\u0014\u0010)\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\nR\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\nR\u0014\u0010+\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\nR\u0014\u0010,\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010\nR\u0014\u0010-\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010\nR\u001c\u00100\u001a\n /*\u0004\u0018\u00010.0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00062"}, d2 = {"Lcom/facebook/login/LoginLogger$Companion;", "", "<init>", "()V", "", "authLoggerId", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/os/Bundle;", "EVENT_EXTRAS_DEFAULT_AUDIENCE", "Ljava/lang/String;", "EVENT_EXTRAS_FACEBOOK_VERSION", "EVENT_EXTRAS_FAILURE", "EVENT_EXTRAS_IS_REAUTHORIZE", "EVENT_EXTRAS_LOGIN_BEHAVIOR", "EVENT_EXTRAS_MISSING_INTERNET_PERMISSION", "EVENT_EXTRAS_NEW_PERMISSIONS", "EVENT_EXTRAS_NOT_TRIED", "EVENT_EXTRAS_PERMISSIONS", "EVENT_EXTRAS_REQUEST_CODE", "EVENT_EXTRAS_TARGET_APP", "EVENT_EXTRAS_TRY_LOGIN_ACTIVITY", "EVENT_NAME_FOA_LOGIN_COMPLETE", "EVENT_NAME_FOA_LOGIN_METHOD_COMPLETE", "EVENT_NAME_FOA_LOGIN_METHOD_NOT_TRIED", "EVENT_NAME_FOA_LOGIN_METHOD_START", "EVENT_NAME_FOA_LOGIN_START", "EVENT_NAME_LOGIN_COMPLETE", "EVENT_NAME_LOGIN_HEARTBEAT", "EVENT_NAME_LOGIN_METHOD_COMPLETE", "EVENT_NAME_LOGIN_METHOD_NOT_TRIED", "EVENT_NAME_LOGIN_METHOD_START", "EVENT_NAME_LOGIN_START", "EVENT_NAME_LOGIN_STATUS_COMPLETE", "EVENT_NAME_LOGIN_STATUS_START", "EVENT_PARAM_AUTH_LOGGER_ID", "EVENT_PARAM_CHALLENGE", "EVENT_PARAM_ERROR_CODE", "EVENT_PARAM_ERROR_MESSAGE", "EVENT_PARAM_EXTRAS", "EVENT_PARAM_FOA_METHOD_RESULT_SKIPPED", "EVENT_PARAM_LOGIN_RESULT", "EVENT_PARAM_METHOD", "EVENT_PARAM_METHOD_RESULT_SKIPPED", "EVENT_PARAM_TIMESTAMP", "FACEBOOK_PACKAGE_NAME", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "worker", "Ljava/util/concurrent/ScheduledExecutorService;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            return bundle;
        }

        public Companion() {
        }
    }

    public LoginLogger(@NotNull Context context, @NotNull String str) {
        PackageInfo packageInfo;
        this.f7008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InternalAppEventsLogger(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(FbValidationUtils.FB_PACKAGE, 0)) != null) {
                this.f7006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwww(LoginLogger loginLogger, String str, String str2, String str3, int i, Object obj) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginLogger.class)) {
            return;
        }
        if ((i & 4) != 0) {
            str3 = "";
        }
        try {
            loginLogger.Wwwwwwwwwwwwwwwwwwwww(str, str2, str3);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, LoginLogger.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(LoginLogger loginLogger, Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginLogger.class)) {
            return;
        }
        try {
            loginLogger.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_login_heartbeat", bundle);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, LoginLogger.class);
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("");
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", LoginClient.Result.Code.ERROR.getLoggingValue());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("5_error_message", str2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("3_method", str3);
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request, @Nullable String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("login_behavior", request.Wwwwwwwwwwwwwwwwwwwwwwwww().toString());
                    jSONObject.put("request_code", LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    jSONObject.put("permissions", TextUtils.join(",", request.Wwwwwwwwwwwwwwwwwwwww()));
                    jSONObject.put("default_audience", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().toString());
                    jSONObject.put("isReauthorize", request.Wwwwwwwwwwwwwwww());
                    String str2 = this.f7006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (str2 != null) {
                        jSONObject.put("facebookVersion", str2);
                    }
                    if (request.Wwwwwwwwwwwwwwwwwwwwwwww() != null) {
                        jSONObject.put("target_app", request.Wwwwwwwwwwwwwwwwwwwwwwww().toString());
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("6_extras", jSONObject.toString());
                } catch (JSONException unused) {
                }
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", LoginClient.Result.Code.SUCCESS.getLoggingValue());
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_login_status_complete", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_login_status_start", Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", "failure");
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_login_status_complete", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @NotNull Exception exc) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", LoginClient.Result.Code.ERROR.getLoggingValue());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("5_error_message", exc.toString());
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_login_status_complete", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                f7005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.schedule(new Runnable() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoginLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwww(LoginLogger.this, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                }, 5L, TimeUnit.SECONDS);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @NotNull Map<String, String> map, @Nullable LoginClient.Result.Code code, @Nullable Map<String, String> map2, @Nullable Exception exc, @Nullable String str2) {
        String message;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                if (code != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", code.getLoggingValue());
                }
                JSONObject jSONObject = null;
                if (exc == null) {
                    message = null;
                } else {
                    message = exc.getMessage();
                }
                if (message != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("5_error_message", exc.getMessage());
                }
                if (!map.isEmpty()) {
                    jSONObject = new JSONObject(map);
                }
                if (map2 != null) {
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    try {
                        for (Map.Entry<String, String> entry : map2.entrySet()) {
                            String key = entry.getKey();
                            String value = entry.getValue();
                            if (key != null) {
                                jSONObject.put(key, value);
                            }
                        }
                    } catch (JSONException unused) {
                    }
                }
                if (jSONObject != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("6_extras", jSONObject.toString());
                }
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (code == LoginClient.Result.Code.SUCCESS) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("3_method", str2);
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("3_method", str2);
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @JvmOverloads
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Map<String, String> map, @Nullable String str6) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                if (str3 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("2_result", str3);
                }
                if (str4 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("5_error_message", str4);
                }
                if (str5 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("4_error_code", str5);
                }
                if (map != null && !map.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (entry.getKey() != null) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("6_extras", new JSONObject(linkedHashMap).toString());
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("3_method", str2);
                this.f7007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return this.f7008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
