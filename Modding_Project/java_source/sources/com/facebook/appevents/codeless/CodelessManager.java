package com.facebook.appevents.codeless;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.codeless.ViewIndexingTrigger;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\rH\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u0012R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010)R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010)R\u0016\u0010-\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010,¨\u0006."}, d2 = {"Lcom/facebook/appevents/codeless/CodelessManager;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "appIndexingEnabled", "Wwwwwwwwwwwwwwwwwwwww", "(Z)V", "applicationId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/ViewIndexingTrigger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/ViewIndexingTrigger;", "viewIndexingTrigger", "Landroid/hardware/SensorManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/hardware/SensorManager;", "sensorManager", "Lcom/facebook/appevents/codeless/ViewIndexer;", "Lcom/facebook/appevents/codeless/ViewIndexer;", "viewIndexer", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "deviceSessionID", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isCodelessEnabled", "isAppIndexingEnabled", "Z", "isCheckingSession", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CodelessManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f6269Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ViewIndexer f6273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SensorManager f6274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final CodelessManager INSTANCE = new CodelessManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ViewIndexingTrigger f6275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ViewIndexingTrigger();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(true);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return;
        }
        try {
            f6270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(z);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(FetchedAppSettings fetchedAppSettings, String str) {
        boolean z;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            if (fetchedAppSettings != null) {
                try {
                    if (fetchedAppSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        z = true;
                        boolean Wwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwww();
                        if (!z && Wwwwwwwwwwwwwww2) {
                            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
                    return;
                }
            }
            z = false;
            boolean Wwwwwwwwwwwwwww22 = FacebookSdk.Wwwwwwwwwwwwwww();
            if (!z) {
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        Boolean valueOf;
        CodelessManager codelessManager;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            try {
                if (f6271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                    CodelessMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
                    Context applicationContext = activity.getApplicationContext();
                    final String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
                    final FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        valueOf = null;
                    } else {
                        valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    if (!Intrinsics.areEqual(valueOf, Boolean.TRUE)) {
                        if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        }
                        codelessManager = INSTANCE;
                        if (!codelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwww() && !f6270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                            codelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
                            return;
                        }
                    }
                    SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
                    if (sensorManager != null) {
                        f6274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sensorManager;
                        Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                        ViewIndexer viewIndexer = new ViewIndexer(activity);
                        f6273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = viewIndexer;
                        ViewIndexingTrigger viewIndexingTrigger = f6275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        viewIndexingTrigger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ViewIndexingTrigger.OnShakeListener() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // com.facebook.appevents.codeless.ViewIndexingTrigger.OnShakeListener
                            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                CodelessManager.Wwwwwwwwwwwwwwwwwwwwww(FetchedAppSettings.this, Wwwwwwwwwwwwwwwwwwwwww2);
                            }
                        });
                        sensorManager.registerListener(viewIndexingTrigger, defaultSensor, 2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            viewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        codelessManager = INSTANCE;
                        if (!codelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            try {
                if (f6271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                    CodelessMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
                    ViewIndexer viewIndexer = f6273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (viewIndexer != null) {
                        viewIndexer.Wwwwwwwwwwwwwwwwwwwwwww();
                    }
                    SensorManager sensorManager = f6274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (sensorManager == null) {
                        return;
                    }
                    sensorManager.unregisterListener(f6275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return;
        }
        try {
            CodelessMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return false;
        }
        try {
            return f6270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return null;
        }
        try {
            if (f6272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                f6272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = UUID.randomUUID().toString();
            }
            String str = f6272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return;
        }
        try {
            f6271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(true);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return;
        }
        try {
            f6271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        boolean z = true;
        String str2 = "0";
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessManager.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AttributionIdentifiers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            JSONArray jSONArray = new JSONArray();
            String str3 = Build.MODEL;
            if (str3 == null) {
                str3 = "";
            }
            jSONArray.put(str3);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                jSONArray.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                jSONArray.put("");
            }
            jSONArray.put("0");
            if (AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                str2 = "1";
            }
            jSONArray.put(str2);
            Locale Wwwwwww2 = Utility.Wwwwwww();
            jSONArray.put(Wwwwwww2.getLanguage() + '_' + ((Object) Wwwwwww2.getCountry()));
            String jSONArray2 = jSONArray.toString();
            bundle.putString("device_session_id", Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            bundle.putString("extinfo", jSONArray2);
            GraphRequest.Companion companion = GraphRequest.Companion;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwww(null, String.format(Locale.US, "%s/app_indexing_session", Arrays.copyOf(new Object[]{str}, 1)), bundle, null).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            AtomicBoolean atomicBoolean = f6270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optBoolean("is_app_indexing_enabled", false)) {
                z = false;
            }
            atomicBoolean.set(z);
            if (!atomicBoolean.get()) {
                f6272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                ViewIndexer viewIndexer = f6273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (viewIndexer != null) {
                    viewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
            f6269Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessManager.class);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (f6269Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return;
                }
                f6269Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                    }
                });
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
