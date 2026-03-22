package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.work.PeriodicWorkRequest;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.security.CertificateUtil;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0016\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\n \u001a*\u0004\u0018\u00010\u00040\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001e¨\u0006 "}, d2 = {"Lcom/facebook/appevents/internal/SessionLogger;", "", "<init>", "()V", "", "activityName", "Lcom/facebook/appevents/internal/SourceApplicationInfo;", "sourceApplicationInfo", RemoteConfigConstants.RequestFieldKey.APP_ID, "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V", "Lcom/facebook/appevents/internal/SessionInfo;", "sessionInfo", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V", "", "timeBetweenSessions", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "", "[J", "INACTIVE_SECONDS_QUANTA", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SessionLogger {
    @NotNull
    public static final SessionLogger INSTANCE = new SessionLogger();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6447Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SessionLogger.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long[] f6446Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {300000, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, 1800000, 3600000, 21600000, 43200000, SignalManager.TWENTY_FOUR_HOURS_MILLIS, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable SessionInfo sessionInfo, @Nullable String str2) {
        long longValue;
        String sourceApplicationInfo;
        long longValue2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SessionLogger.class) || sessionInfo == null) {
            return;
        }
        try {
            Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long j = 0;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    longValue2 = 0;
                } else {
                    longValue2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue();
                }
                longValue = 0 - longValue2;
            } else {
                longValue = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue();
            }
            if (longValue < 0) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                longValue = 0;
            }
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("fb_mobile_app_interruptions", sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Arrays.copyOf(new Object[]{Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(longValue))}, 1)));
            SourceApplicationInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String str3 = "Unclassified";
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (sourceApplicationInfo = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString()) != null) {
                str3 = sourceApplicationInfo;
            }
            bundle.putString("fb_mobile_launch_source", str3);
            Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = sessionInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.longValue();
            }
            bundle.putLong("_logTime", j / 1000);
            InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, null).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_deactivate_app", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / 1000, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SessionLogger.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable SourceApplicationInfo sourceApplicationInfo, @Nullable String str2, @NotNull Context context) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SessionLogger.class)) {
            String str3 = "Unclassified";
            if (sourceApplicationInfo != null) {
                try {
                    String sourceApplicationInfo2 = sourceApplicationInfo.toString();
                    if (sourceApplicationInfo2 != null) {
                        str3 = sourceApplicationInfo2;
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SessionLogger.class);
                    return;
                }
            }
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", str3);
            bundle.putString("fb_mobile_pckg_fp", INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
            bundle.putString("fb_mobile_app_cert_hash", CertificateUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
            InternalAppEventsLogger.Companion companion = InternalAppEventsLogger.Companion;
            InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, null);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_mobile_activate_app", bundle);
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SessionLogger.class)) {
            return 0;
        }
        int i = 0;
        while (true) {
            try {
                long[] jArr = f6446Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i >= jArr.length || jArr[i] >= j) {
                    break;
                }
                i++;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SessionLogger.class);
                return 0;
            }
        }
        return i;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6447Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Clock skew detected");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String stringPlus = Intrinsics.stringPlus("PCKGCHKSUM;", packageManager.getPackageInfo(context.getPackageName(), 0).versionName);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            String string = sharedPreferences.getString(stringPlus, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HashUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HashUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir);
            }
            sharedPreferences.edit().putString(stringPlus, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).apply();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
