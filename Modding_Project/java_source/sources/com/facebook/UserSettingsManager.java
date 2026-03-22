package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\bÁ\u0002\u0018\u00002\u00020\u0001:\u00017B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u000bJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0011\u0010\bJ\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J#\u0010\u0016\u001a\u00020\u00042\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\bJ\u0011\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\"\u0010\u000eJ\u0011\u0010#\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b#\u0010\u000eR\u001c\u0010(\u001a\n %*\u0004\u0018\u00010$0$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010*R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010*R\u0014\u0010.\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010-R\u0014\u0010/\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010-R\u0014\u00100\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010-R\u0014\u00101\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010-R\u0014\u00102\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010-R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105¨\u00068"}, d2 = {"Lcom/facebook/UserSettingsManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "flag", "Wwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "()Ljava/lang/Boolean;", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "", "Lcom/facebook/UserSettingsManager$UserSetting;", "userSettings", "Wwwwwwwwwwwwwwwwwwwwwwww", "([Lcom/facebook/UserSettingsManager$UserSetting;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "userSetting", "Wwwwwwwwwwwww", "(Lcom/facebook/UserSettingsManager$UserSetting;)V", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isInitialized", "isFetchingCodelessStatus", "Lcom/facebook/UserSettingsManager$UserSetting;", "autoInitEnabled", "autoLogAppEventsEnabledLocally", "advertiserIDCollectionEnabled", "codelessSetupEnabled", "monitorEnabled", "Landroid/content/SharedPreferences;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/SharedPreferences;", "userSettingPref", "UserSetting", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserSettingsManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SharedPreferences f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final UserSettingsManager INSTANCE = new UserSettingsManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = UserSettingsManager.class.getName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UserSetting f6105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UserSetting(true, "com.facebook.sdk.AutoInitEnabled");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UserSetting f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UserSetting(true, "com.facebook.sdk.AutoLogAppEventsEnabled");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UserSetting f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UserSetting(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UserSetting f6102Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new UserSetting(false, "auto_event_setup_enabled");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UserSetting f6101Wwwwwwwwwwwwwwwwwwwwwwwwwww = new UserSetting(true, "com.facebook.sdk.MonitorEnabled");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\t\"\u0004\b\f\u0010\rR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u001b\u001a\u0004\b\u0013\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/facebook/UserSettingsManager$UserSetting;", "", "", "defaultVal", "", "key", "<init>", "(ZLjava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "setDefaultVal", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Boolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Boolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Boolean;)V", "value", "", "J", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "lastTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UserSetting {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f6109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Boolean f6110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public UserSetting(boolean z, @NotNull String str) {
            this.f6112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f6111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Boolean bool) {
            this.f6110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bool;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f6109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Boolean bool = this.f6110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (bool == null) {
                return this.f6112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return bool.booleanValue();
        }

        @Nullable
        public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwww(boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return;
        }
        try {
            UserSetting userSetting = f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(z));
            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(System.currentTimeMillis());
            if (f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                INSTANCE.Wwwwwwwwwwwww(userSetting);
            } else {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwww(boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return;
        }
        try {
            UserSetting userSetting = f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(z));
            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(System.currentTimeMillis());
            if (f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                INSTANCE.Wwwwwwwwwwwww(userSetting);
            } else {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
        }
    }

    @JvmStatic
    public static final Boolean Wwwwwwwwwwwwwwwwww() {
        SharedPreferences sharedPreferences;
        String str = "";
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return null;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwww();
            try {
                sharedPreferences = f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
            } catch (JSONException e) {
                Utility utility = Utility.INSTANCE;
                Utility.Illlllllllllllllllllllll(f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            }
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString(f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "");
                if (string != null) {
                    str = string;
                }
                if (str.length() > 0) {
                    return Boolean.valueOf(new JSONObject(str).getBoolean("value"));
                }
                return null;
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            try {
                Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                Bundle bundle = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getApplicationInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 128).metaData;
                if (bundle != null && bundle.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                    InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(Wwwwwwwwwwwwwwwwwwwwwww2);
                    Bundle bundle2 = new Bundle();
                    if (!Utility.Kkkkkkkkkk()) {
                        bundle2.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                    }
                    internalAppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_auto_applink", bundle2);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        String str;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return;
        }
        try {
            if (f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
                if (Wwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AttributionIdentifiers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                        str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("advertiser_id", str);
                        bundle.putString("fields", "auto_event_setup_enabled");
                        GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(null, MBridgeConstans.DYNAMIC_VIEW_WX_APP, null);
                        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
                        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            UserSetting userSetting = f6102Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optBoolean("auto_event_setup_enabled", false)));
                            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                            INSTANCE.Wwwwwwwwwwwww(userSetting);
                        }
                    }
                }
            }
            f6106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return false;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww();
            return f6102Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return false;
        }
        try {
            UserSettingsManager userSettingsManager = INSTANCE;
            userSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwww();
            return userSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return false;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww();
            return f6105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserSettingsManager.class)) {
            return false;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww();
            return f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserSettingsManager.class);
            return false;
        }
    }

    public final void Wwwwwwwwwwwww(UserSetting userSetting) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Wwwwwwwwwwwwww();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("value", userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    jSONObject.put("last_timestamp", userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    SharedPreferences sharedPreferences = f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putString(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), jSONObject.toString()).apply();
                        Wwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    throw null;
                } catch (Exception e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                    return;
                }
                throw new FacebookSdkNotInitializedException("The UserSettingManager has not been initialized successfully");
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwww(UserSetting userSetting) {
        String str = "";
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Wwwwwwwwwwwwww();
                try {
                    SharedPreferences sharedPreferences = f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (sharedPreferences != null) {
                        String string = sharedPreferences.getString(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "");
                        if (string != null) {
                            str = string;
                        }
                        if (str.length() > 0) {
                            JSONObject jSONObject = new JSONObject(str);
                            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(jSONObject.getBoolean("value")));
                            userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.getLong("last_timestamp"));
                            return;
                        }
                        return;
                    }
                    throw null;
                } catch (JSONException e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                Bundle bundle = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getApplicationInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 128).metaData;
                if (bundle != null) {
                    bundle.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled");
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        int i;
        int i2;
        ApplicationInfo applicationInfo;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() && FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk()) {
                    Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                    int i3 = 0;
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = f6105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() | ((f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() ? 1 : 0) << 1) | ((f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() ? 1 : 0) << 2) | ((f6101Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() ? 1 : 0) << 3);
                    SharedPreferences sharedPreferences = f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (sharedPreferences != null) {
                        int i4 = sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
                        if (i4 != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                            SharedPreferences sharedPreferences2 = f6100Wwwwwwwwwwwwwwwwwwwwwwwwww;
                            if (sharedPreferences2 != null) {
                                sharedPreferences2.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).apply();
                                try {
                                    applicationInfo = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getApplicationInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 128);
                                } catch (PackageManager.NameNotFoundException unused) {
                                    i = 0;
                                }
                                if (applicationInfo.metaData != null) {
                                    String[] strArr = {"com.facebook.sdk.AutoInitEnabled", "com.facebook.sdk.AutoLogAppEventsEnabled", "com.facebook.sdk.AdvertiserIDCollectionEnabled", "com.facebook.sdk.MonitorEnabled"};
                                    boolean[] zArr = {true, true, true, true};
                                    i = 0;
                                    i2 = 0;
                                    while (true) {
                                        int i5 = i3 + 1;
                                        try {
                                            i |= (applicationInfo.metaData.containsKey(strArr[i3]) ? 1 : 0) << i3;
                                            i2 |= (applicationInfo.metaData.getBoolean(strArr[i3], zArr[i3]) ? 1 : 0) << i3;
                                            if (i5 > 3) {
                                                break;
                                            }
                                            i3 = i5;
                                        } catch (PackageManager.NameNotFoundException unused2) {
                                            i3 = i2;
                                            i2 = i3;
                                            i3 = i;
                                            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(Wwwwwwwwwwwwwwwwwwwwwww2);
                                            Bundle bundle = new Bundle();
                                            bundle.putInt("usage", i3);
                                            bundle.putInt("initial", i2);
                                            bundle.putInt("previous", i4);
                                            bundle.putInt("current", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                            internalAppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                                            return;
                                        }
                                    }
                                    i3 = i;
                                    InternalAppEventsLogger internalAppEventsLogger2 = new InternalAppEventsLogger(Wwwwwwwwwwwwwwwwwwwwwww2);
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putInt("usage", i3);
                                    bundle2.putInt("initial", i2);
                                    bundle2.putInt("previous", i4);
                                    bundle2.putInt("current", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                    internalAppEventsLogger2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle2);
                                    return;
                                }
                                i2 = 0;
                                InternalAppEventsLogger internalAppEventsLogger22 = new InternalAppEventsLogger(Wwwwwwwwwwwwwwwwwwwwwww2);
                                Bundle bundle22 = new Bundle();
                                bundle22.putInt("usage", i3);
                                bundle22.putInt("initial", i2);
                                bundle22.putInt("previous", i4);
                                bundle22.putInt("current", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                internalAppEventsLogger22.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle22);
                                return;
                            }
                            throw null;
                        }
                        return;
                    }
                    throw null;
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(UserSetting userSetting) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Wwwwwwwwwwwwww();
                try {
                    Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                    ApplicationInfo applicationInfo = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getApplicationInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 128);
                    Bundle bundle = applicationInfo.metaData;
                    if (bundle != null && bundle.containsKey(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                        userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(applicationInfo.metaData.getBoolean(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())));
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Wwwwwwwwwwwwww();
            try {
                Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                ApplicationInfo applicationInfo = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getApplicationInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 128);
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    UserSetting userSetting = f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (bundle.containsKey(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                        return Boolean.valueOf(applicationInfo.metaData.getBoolean(userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Utility utility = Utility.INSTANCE;
                Utility.Illlllllllllllllllllllll(f6108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(UserSetting... userSettingArr) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                int length = userSettingArr.length;
                int i = 0;
                while (i < length) {
                    UserSetting userSetting = userSettingArr[i];
                    i++;
                    if (userSetting == f6102Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } else if (userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                        Wwwwwwwwwwwwwwwww(userSetting);
                        if (userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                            Wwwwwwwwwwwwwwwwwwwwww(userSetting);
                        }
                    } else {
                        Wwwwwwwwwwwww(userSetting);
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (!FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk() || !f6107Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
                    return;
                }
                f6100Wwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
                Wwwwwwwwwwwwwwwwwwwwwwww(f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f6103Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, f6105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                UserSetting userSetting = f6102Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Wwwwwwwwwwwwwwwww(userSetting);
                final long currentTimeMillis = System.currentTimeMillis();
                if (userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null || currentTimeMillis - userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= 604800000) {
                    userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                    userSetting.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0L);
                    if (!f6106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
                        return;
                    }
                    FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(currentTimeMillis);
                        }
                    });
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Boolean Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwww2 == null) {
                Boolean Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return null;
                }
                return Wwwwwwwwwwwwwwwwwwwwwww2;
            }
            return Wwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            Map<String, Boolean> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                Boolean bool = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get("auto_log_app_events_enabled");
                Boolean bool2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get("auto_log_app_events_default");
                if (bool == null) {
                    Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        if (bool2 == null) {
                            return true;
                        }
                        return bool2.booleanValue();
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.booleanValue();
                }
                return bool.booleanValue();
            }
            return f6104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }
}
