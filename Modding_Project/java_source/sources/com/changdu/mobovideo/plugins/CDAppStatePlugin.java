package com.changdu.mobovideo.plugins;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.component.httpbiz.CDHttpRequest;
import com.changdu.component.memguard.CDMemGuard;
import com.changdu.mobovideo.AppFrontBackHelper;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.media.MediaNotificationManager;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.AppUtil;
import com.changdu.mobovideo.utils.CoroutineUtil;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.Firebase;
import com.google.firebase.analytics.AnalyticsKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.remoteconfig.ConfigUpdateListenerRegistration;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigValue;
import com.google.firebase.remoteconfig.RemoteConfigKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u001f\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u0005J/\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020 0\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b#\u0010\u0011R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010%R\u0016\u0010)\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u00103R\u0014\u00107\u001a\u00020\u00188\u0002X\u0082D¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010<¨\u0006>"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;", "parameters", "", "Wwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/content/Context;", "Landroid/content/Context;", "applicationContext", "Landroid/content/ContentResolver;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/ContentResolver;", "mContentResolver", "", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "cdMemsInited", "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;", "Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;", "mConfigUpdateListenerRegistration", "Wwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "APP_PROTECT", "Landroid/app/Activity;", "Landroid/app/Activity;", "mActivity", "Lcom/changdu/mobovideo/media/MediaNotificationManager;", "Lcom/changdu/mobovideo/media/MediaNotificationManager;", "mediaNotificationManager", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDAppStatePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaNotificationManager f5589Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5590Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5591Wwwwwwwwwwwwwwwwwwww = "appProtect";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConfigUpdateListenerRegistration f5592Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5593Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ContentResolver f5594Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5595Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5596Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static final Unit Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(null);
        return Unit.INSTANCE;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(CDAppStatePlugin cDAppStatePlugin, FirebaseRemoteConfig firebaseRemoteConfig, Task task) {
        if (task.isSuccessful()) {
            cDAppStatePlugin.Wwwwwwwwwwwwwwwwwwwww();
            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$getFirebaseRemoteConfig$1$1(firebaseRemoteConfig, cDAppStatePlugin, null), 3, null);
        }
    }

    public static final Unit Wwwwwwwwwwwwwwwwwwwwwww(FirebaseRemoteConfigSettings.Builder builder) {
        builder.setMinimumFetchIntervalInSeconds(3600L);
        builder.setFetchTimeoutInSeconds(60L);
        return Unit.INSTANCE;
    }

    public final void Wwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        double d;
        try {
            FirebaseAnalytics analytics = AnalyticsKt.getAnalytics(Firebase.INSTANCE);
            Bundle bundle = new Bundle();
            String str = (String) methodCall.argument("adPlatform");
            String str2 = "";
            if (str == null) {
                str = "";
            }
            String str3 = (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID);
            if (str3 == null) {
                str3 = "";
            }
            String str4 = (String) methodCall.argument("formatLabel");
            if (str4 == null) {
                str4 = "";
            }
            String str5 = (String) methodCall.argument("adSource");
            if (str5 == null) {
                str5 = "";
            }
            Double d2 = (Double) methodCall.argument("revenue");
            if (d2 != null) {
                d = d2.doubleValue();
            } else {
                d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            }
            String str6 = (String) methodCall.argument("currency");
            if (str6 != null) {
                str2 = str6;
            }
            bundle.putString(FirebaseAnalytics.Param.AD_PLATFORM, str);
            bundle.putString(FirebaseAnalytics.Param.AD_UNIT_NAME, str3);
            bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, str4);
            bundle.putString(FirebaseAnalytics.Param.AD_SOURCE, str5);
            bundle.putDouble("value", d);
            bundle.putString("currency", str2);
            analytics.logEvent(FirebaseAnalytics.Event.AD_IMPRESSION, bundle);
            result.success(null);
        } catch (Throwable unused) {
            result.success(null);
        }
    }

    public final Map<String, Object> Wwwwwwwwwwwwwwwwwww(Map<String, ? extends FirebaseRemoteConfigValue> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            FirebaseRemoteConfigValue firebaseRemoteConfigValue = map.get(str);
            if (firebaseRemoteConfigValue != null) {
                hashMap.put(str, firebaseRemoteConfigValue.asByteArray());
            }
        }
        return hashMap;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        if (this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$handleFirebaseRemoteConfigToFlutter$1(this, null), 3, null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        final FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
        remoteConfig.setConfigSettingsAsync(RemoteConfigKt.remoteConfigSettings(new Function1() { // from class: com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Wwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwww2 = CDAppStatePlugin.Wwwwwwwwwwwwwwwwwwwwwww((FirebaseRemoteConfigSettings.Builder) obj);
                return Wwwwwwwwwwwwwwwwwwwwwww2;
            }
        }));
        remoteConfig.fetchAndActivate().addOnCompleteListener(new OnCompleteListener() { // from class: com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CDAppStatePlugin.Wwwwwwwwwwwwwwwwwwwwww(CDAppStatePlugin.this, remoteConfig, task);
            }
        });
        ConfigUpdateListenerRegistration configUpdateListenerRegistration = this.f5592Wwwwwwwwwwwwwwwwwwwww;
        if (configUpdateListenerRegistration != null) {
            configUpdateListenerRegistration.remove();
        }
        this.f5592Wwwwwwwwwwwwwwwwwwwww = remoteConfig.addOnConfigUpdateListener(new CDAppStatePlugin$getFirebaseRemoteConfig$2(remoteConfig, this));
    }

    @SuppressLint({"HardwareIds"})
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        ContentResolver contentResolver = this.f5594Wwwwwwwwwwwwwwwwwwwwwww;
        if (contentResolver != null) {
            return Settings.Secure.getString(contentResolver, "android_id");
        }
        return Settings.Secure.getString(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver(), "android_id");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5590Wwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_app_state_util");
        this.f5594Wwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext().getContentResolver();
        this.f5595Wwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(this);
        }
        MediaNotificationManager.Companion companion = MediaNotificationManager.Companion;
        Context context = this.f5595Wwwwwwwwwwwwwwwwwwwwwwww;
        if (context == null) {
            context = null;
        }
        MediaNotificationManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        this.f5589Wwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        new AppFrontBackHelper().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Application) flutterPluginBinding.getApplicationContext(), new AppFrontBackHelper.OnAppStatusListener() { // from class: com.changdu.mobovideo.plugins.CDAppStatePlugin$onAttachedToEngine$1
            @Override // com.changdu.mobovideo.AppFrontBackHelper.OnAppStatusListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel2;
                methodChannel2 = CDAppStatePlugin.this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel2 != null) {
                    methodChannel2.invokeMethod("onBack", null);
                }
            }

            @Override // com.changdu.mobovideo.AppFrontBackHelper.OnAppStatusListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MethodChannel methodChannel2;
                methodChannel2 = CDAppStatePlugin.this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel2 != null) {
                    methodChannel2.invokeMethod("onResume", null);
                }
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5590Wwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f5590Wwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            ConfigUpdateListenerRegistration configUpdateListenerRegistration = this.f5592Wwwwwwwwwwwwwwwwwwwww;
            if (configUpdateListenerRegistration != null) {
                configUpdateListenerRegistration.remove();
            }
        } catch (Throwable unused) {
        }
        MediaNotificationManager mediaNotificationManager = this.f5589Wwwwwwwwwwwwwwwwww;
        if (mediaNotificationManager != null) {
            mediaNotificationManager.Wwwwwwwwwwwwwwwwww();
        }
        this.f5589Wwwwwwwwwwwwwwwwww = null;
        MethodChannel methodChannel = this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f5596Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull final MethodChannel.Result result) {
        Intent intent;
        Map map;
        String str;
        String str2;
        Double d;
        double d2;
        Double d3;
        Number number;
        String str3;
        Map map2;
        Double d4;
        double d5;
        Number number2;
        Number number3;
        String str4 = methodCall.method;
        if (str4 != null) {
            int hashCode = str4.hashCode();
            float f = 1.0f;
            boolean z = false;
            double d6 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            Context context = null;
            HashMap<String, String> hashMap = null;
            Long l = null;
            Boolean bool = null;
            Double d7 = null;
            String str5 = null;
            r13 = null;
            String str6 = null;
            try {
                switch (hashCode) {
                    case -1861825723:
                        if (str4.equals("getFirebaseRemoteConfig")) {
                            Wwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                        return;
                    case -1848381159:
                        if (str4.equals("tryTriggerGC")) {
                            AppBizDataManager.Wwwwwwwwwwwwwww(AppBizDataManager.INSTANCE, 0L, 1, null);
                            return;
                        }
                        return;
                    case -1267804858:
                        if (str4.equals("nativeAESDecode")) {
                            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$onMethodCall$9(methodCall, result, null), 3, null);
                            return;
                        }
                        return;
                    case -1165466865:
                        if (str4.equals("getTotalMemByte")) {
                            try {
                                AppUtil appUtil = AppUtil.INSTANCE;
                                Context context2 = this.f5595Wwwwwwwwwwwwwwwwwwwwwwww;
                                if (context2 != null) {
                                    context = context2;
                                }
                                result.success(Long.valueOf(appUtil.Wwwwwwwwwwwwwwwwwwwww(context)));
                                return;
                            } catch (Exception unused) {
                                result.success(0);
                                return;
                            }
                        }
                        return;
                    case -492195773:
                        if (str4.equals("getIntentString")) {
                            Activity activity = this.f5590Wwwwwwwwwwwwwwwwwww;
                            if (activity != null) {
                                if (activity != null && (intent = activity.getIntent()) != null) {
                                    str6 = intent.getDataString();
                                }
                                result.success(str6);
                                return;
                            }
                            result.success(null);
                            return;
                        }
                        return;
                    case -416885517:
                        if (str4.equals("clearNowPlayingInfo")) {
                            try {
                                MediaNotificationManager mediaNotificationManager = this.f5589Wwwwwwwwwwwwwwwwww;
                                if (mediaNotificationManager != null) {
                                    mediaNotificationManager.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                                result.success(Boolean.TRUE);
                                return;
                            } catch (Exception unused2) {
                                result.success(Boolean.FALSE);
                                return;
                            }
                        }
                        return;
                    case -244526513:
                        if (str4.equals("initCDMems") && !this.f5593Wwwwwwwwwwwwwwwwwwwwww) {
                            this.f5593Wwwwwwwwwwwwwwwwwwwwww = true;
                            CDMemGuard.INSTANCE.init();
                            return;
                        }
                        return;
                    case -136452115:
                        if (str4.equals("checkMetaInstallReferrer")) {
                            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$onMethodCall$5(this, result, null), 3, null);
                            return;
                        }
                        return;
                    case 335549000:
                        if (str4.equals("setNowPlayingInfo")) {
                            try {
                                Object obj = methodCall.arguments;
                                if (obj instanceof Map) {
                                    map = (Map) obj;
                                } else {
                                    map = null;
                                }
                                if (map != null) {
                                    Object obj2 = map.get(CampaignEx.JSON_KEY_TITLE);
                                    if (obj2 instanceof String) {
                                        str = (String) obj2;
                                    } else {
                                        str = null;
                                    }
                                    if (str == null) {
                                        str = "";
                                    }
                                    Object obj3 = map.get("artist");
                                    if (obj3 instanceof String) {
                                        str2 = (String) obj3;
                                    } else {
                                        str2 = null;
                                    }
                                    if (str2 == null) {
                                        str2 = "";
                                    }
                                    Object obj4 = map.get(TypedValues.TransitionType.S_DURATION);
                                    if (obj4 instanceof Double) {
                                        d = (Double) obj4;
                                    } else {
                                        d = null;
                                    }
                                    if (d != null) {
                                        d2 = d.doubleValue();
                                    } else {
                                        d2 = 0.0d;
                                    }
                                    Object obj5 = map.get("position");
                                    if (obj5 instanceof Double) {
                                        d3 = (Double) obj5;
                                    } else {
                                        d3 = null;
                                    }
                                    if (d3 != null) {
                                        d6 = d3.doubleValue();
                                    }
                                    Object obj6 = map.get("playbackRate");
                                    if (obj6 instanceof Number) {
                                        number = (Number) obj6;
                                    } else {
                                        number = null;
                                    }
                                    if (number != null) {
                                        f = number.floatValue();
                                    }
                                    float f2 = f;
                                    Object obj7 = map.get("imageUrl");
                                    if (obj7 instanceof String) {
                                        str5 = (String) obj7;
                                    }
                                    if (str5 == null) {
                                        str3 = "";
                                    } else {
                                        str3 = str5;
                                    }
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$onMethodCall$11(this, str, str2, d2, d6, f2, str3, result, null), 3, null);
                                    return;
                                }
                                result.success(Boolean.FALSE);
                                return;
                            } catch (Exception unused3) {
                                result.success(Boolean.FALSE);
                                return;
                            }
                        }
                        return;
                    case 383635666:
                        if (str4.equals("updatePlaybackInfo")) {
                            try {
                                Object obj8 = methodCall.arguments;
                                if (obj8 instanceof Map) {
                                    map2 = (Map) obj8;
                                } else {
                                    map2 = null;
                                }
                                if (map2 != null) {
                                    Object obj9 = map2.get("position");
                                    if (obj9 instanceof Double) {
                                        d4 = (Double) obj9;
                                    } else {
                                        d4 = null;
                                    }
                                    if (d4 != null) {
                                        d5 = d4.doubleValue();
                                    } else {
                                        d5 = 0.0d;
                                    }
                                    Object obj10 = map2.get("playbackRate");
                                    if (obj10 instanceof Number) {
                                        number2 = (Number) obj10;
                                    } else {
                                        number2 = null;
                                    }
                                    if (number2 != null) {
                                        f = number2.floatValue();
                                    }
                                    float f3 = f;
                                    Object obj11 = map2.get(TypedValues.TransitionType.S_DURATION);
                                    if (obj11 instanceof Double) {
                                        d7 = (Double) obj11;
                                    }
                                    if (d7 != null) {
                                        d6 = d7.doubleValue();
                                    }
                                    double d8 = d6;
                                    MediaNotificationManager mediaNotificationManager2 = this.f5589Wwwwwwwwwwwwwwwwww;
                                    if (mediaNotificationManager2 != null) {
                                        mediaNotificationManager2.Wwwwwwwwwwwwww(d5, f3, d8);
                                    }
                                    result.success(Boolean.TRUE);
                                    return;
                                }
                                result.success(Boolean.FALSE);
                                return;
                            } catch (Exception unused4) {
                                result.success(Boolean.FALSE);
                                return;
                            }
                        }
                        return;
                    case 415545844:
                        if (str4.equals("setPlaybackState")) {
                            try {
                                Object obj12 = methodCall.arguments;
                                if (obj12 instanceof Boolean) {
                                    bool = (Boolean) obj12;
                                }
                                if (bool != null) {
                                    z = bool.booleanValue();
                                }
                                MediaNotificationManager mediaNotificationManager3 = this.f5589Wwwwwwwwwwwwwwwwww;
                                if (mediaNotificationManager3 != null) {
                                    mediaNotificationManager3.Wwwwwwwwwwwwwwww(z);
                                }
                                result.success(Boolean.TRUE);
                                return;
                            } catch (Exception unused5) {
                                result.success(Boolean.FALSE);
                                return;
                            }
                        }
                        return;
                    case 750547496:
                        if (str4.equals("executeOnIdle")) {
                            Object obj13 = methodCall.arguments;
                            if (obj13 instanceof Number) {
                                number3 = (Number) obj13;
                            } else {
                                number3 = null;
                            }
                            AppUtil appUtil2 = AppUtil.INSTANCE;
                            Function0<Unit> function0 = new Function0() { // from class: com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    Unit Wwwwwwwwwwwwwwwwwwww2;
                                    Wwwwwwwwwwwwwwwwwwww2 = CDAppStatePlugin.Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this);
                                    return Wwwwwwwwwwwwwwwwwwww2;
                                }
                            };
                            if (number3 != null) {
                                l = Long.valueOf(number3.longValue());
                            }
                            appUtil2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(function0, l);
                            return;
                        }
                        return;
                    case 1122095412:
                        if (str4.equals("getAndroidId")) {
                            result.success(Wwwwwwwwwwwwwwwwwwwwwwwww());
                            return;
                        }
                        return;
                    case 1368436880:
                        if (str4.equals("setFallbackHostMap")) {
                            Object obj14 = methodCall.arguments;
                            if (obj14 instanceof HashMap) {
                                hashMap = (HashMap) obj14;
                            }
                            if (hashMap != null) {
                                CDHttpRequest.INSTANCE.setRetryHostMap(hashMap);
                                return;
                            }
                            return;
                        }
                        return;
                    case 1430544699:
                        if (str4.equals("saveUserRequestCache")) {
                            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppStatePlugin$onMethodCall$12(methodCall, this, null), 3, null);
                            return;
                        }
                        return;
                    case 1516180967:
                        if (str4.equals("reportIAARevenue")) {
                            Wwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case 1532432964:
                        if (str4.equals("openProxy")) {
                            ProxySelector.setDefault(new ProxySelector() { // from class: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$1
                                @Override // java.net.ProxySelector
                                public List<Proxy> select(URI uri) {
                                    ArrayList arrayList = new ArrayList();
                                    if (uri.getHost() != null && (Intrinsics.areEqual(uri.getHost(), "localhost") || Intrinsics.areEqual(uri.getHost(), "127.0.0.1") || Intrinsics.areEqual(uri.getHost(), "::1"))) {
                                        arrayList.add(Proxy.NO_PROXY);
                                    }
                                    return arrayList;
                                }

                                @Override // java.net.ProxySelector
                                public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
                                }
                            });
                            return;
                        }
                        return;
                    case 1726148918:
                        if (str4.equals("setFirebaseCrashlyticsUserId")) {
                            FirebaseCrashlytics.getInstance().setUserId(methodCall.arguments.toString());
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } catch (Throwable unused6) {
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5590Wwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }
}
