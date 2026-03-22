package com.cd_core4.cd_core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.cd_core4.cd_core.CdCorePlugin;
import com.cd_core4.cd_core.Des.DESAlgorithm;
import com.changdu.component.core.CDComponent;
import com.changdu.component.core.CDComponentConfigs;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0014\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\r2\b\b\u0001\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u000fJ\r\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u0005J\u0017\u0010!\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010+\u001a\u00020*2\u0006\u0010'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b/\u0010.J\u0017\u00101\u001a\u00020\r2\u0006\u00100\u001a\u00020\u0006H\u0002¢\u0006\u0004\b1\u0010%R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00108\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b6\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010A¨\u0006C"}, d2 = {"Lcom/cd_core4/cd_core/CdCorePlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "", "key", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Wwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "p0", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Wwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "jsonStr", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Landroid/content/Context;", "context", "Ljava/util/Locale;", "locale", "", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/Locale;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "sendId", "Wwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Landroid/app/Application;", "Landroid/app/Application;", "getApplication", "()Landroid/app/Application;", "setApplication", "(Landroid/app/Application;)V", "application", "Landroid/app/Activity;", "Landroid/app/Activity;", "activity", "cd_core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CdCorePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5239Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Application f5240Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5241Wwwwwwwwwwwwwwwwwwwwwwww = "CdCorePlugin";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5242Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(-1);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, long j) {
        result.success(Long.valueOf(j));
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success("");
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str) {
        result.success(str);
    }

    private final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        return DESAlgorithm.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public final void Wwwwwwwwwwwwwwwwwww(String str) {
        CDComponent.getInstance().setSendId(str);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("langId")) {
                CDComponent.getInstance().setLangId(jSONObject.getInt("langId"));
            }
            if (jSONObject.has("account")) {
                CDComponent.getInstance().setUserAccountName(jSONObject.getString("account"));
            }
            if (jSONObject.has(TPDownloadProxyEnum.USER_GUID)) {
                CDComponent.getInstance().setGuid(jSONObject.getString(TPDownloadProxyEnum.USER_GUID));
            }
            if (jSONObject.has(CmcdConfiguration.KEY_SESSION_ID)) {
                CDComponent.getInstance().setSid(jSONObject.getString(CmcdConfiguration.KEY_SESSION_ID));
            }
            if (jSONObject.has(VungleConstants.KEY_USER_ID)) {
                CDComponent.getInstance().setUserId(jSONObject.getString(VungleConstants.KEY_USER_ID));
            }
            if (jSONObject.has("userNickName")) {
                CDComponent.getInstance().setUserNickname(jSONObject.getString("userNickName"));
            }
            if (jSONObject.has("userHeadUrl")) {
                CDComponent.getInstance().setUserHeadUrl(jSONObject.getString("userHeadUrl"));
            }
            if (jSONObject.has("userHeadFrameUrl")) {
                CDComponent.getInstance().setUserHeadFrameUrl(jSONObject.getString("userHeadFrameUrl"));
            }
            if (jSONObject.has("serverProtocolVersion")) {
                CDComponent.getInstance().setServerProtocolVersion(jSONObject.getInt("serverProtocolVersion"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwww(Context context, Locale locale) {
        try {
            Locale.setDefault(locale);
            Resources resources = context.getResources();
            Configuration configuration = resources.getConfiguration();
            int i = Build.VERSION.SDK_INT;
            configuration.setLocale(locale);
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            if (i >= 24) {
                context.createConfigurationContext(configuration);
                return true;
            }
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        int i;
        int i2;
        try {
            CDComponentConfigs coreVersion = new CDComponentConfigs().setAppId((String) methodCall.argument(RemoteConfigConstants.RequestFieldKey.APP_ID)).setAppKey((String) methodCall.argument("appKey")).setProductX((String) methodCall.argument("productX")).setCoreVersion((String) methodCall.argument("coreVer"));
            Integer num = (Integer) methodCall.argument("langId");
            if (num != null) {
                i = num.intValue();
            } else {
                i = 3;
            }
            CDComponentConfigs langId = coreVersion.setLangId(i);
            Integer num2 = (Integer) methodCall.argument("ver");
            if (num2 != null) {
                i2 = num2.intValue();
            } else {
                i2 = TypedValues.CycleType.TYPE_EASING;
            }
            CDComponent.init(this.f5240Wwwwwwwwwwwwwwwwwwwwwww, langId.setServerProtocolVersion(i2).setSid((String) methodCall.argument(CmcdConfiguration.KEY_SESSION_ID)).setChannel((String) methodCall.argument("chl")));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        LocaleList adjustedDefault;
        Locale locale;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                adjustedDefault = LocaleList.getAdjustedDefault();
                locale = adjustedDefault.get(0);
                return locale.toString();
            }
            return Locale.getDefault().toString();
        } catch (Exception e) {
            e.printStackTrace();
            return Locale.getDefault().toString();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(final MethodChannel.Result result) {
        try {
            final long googleAdIdTimeConsuming = CDComponent.getInstance().getGoogleAdIdTimeConsuming();
            Activity activity = this.f5239Wwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdCorePlugin.Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, googleAdIdTimeConsuming);
                    }
                });
            }
        } catch (Exception unused) {
            Activity activity2 = this.f5239Wwwwwwwwwwwwwwwwwwwwww;
            if (activity2 != null) {
                activity2.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdCorePlugin.Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this);
                    }
                });
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(final MethodChannel.Result result) {
        try {
            final String googleAdId = CDComponent.getInstance().getGoogleAdId();
            Activity activity = this.f5239Wwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdCorePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, googleAdId);
                    }
                });
            }
        } catch (Exception unused) {
            Activity activity2 = this.f5239Wwwwwwwwwwwwwwwwwwwwww;
            if (activity2 != null) {
                activity2.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdCorePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this);
                    }
                });
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5239Wwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5240Wwwwwwwwwwwwwwwwwwwwwww = (Application) flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_core");
        this.f5242Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5239Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f5239Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5242Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull @NotNull MethodCall methodCall, @NonNull @NotNull MethodChannel.Result result) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (Intrinsics.areEqual(methodCall.method, "setAppParams")) {
            Wwwwwwwwwwwwwwwwwwww((String) methodCall.arguments());
            result.success("设置成功");
            return;
        }
        if (Intrinsics.areEqual(methodCall.method, "initAppParams")) {
            try {
                Wwwwwwwwwwwwwwwwwwwwww(methodCall);
                result.success("初始化成功");
                return;
            } catch (Exception e2) {
                result.error("10001", e2.getMessage(), e2.getMessage());
                return;
            }
        } else if (Intrinsics.areEqual(methodCall.method, "desEncode")) {
            try {
                result.success(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.argument("key"), (String) methodCall.argument("data")));
                return;
            } catch (Exception e3) {
                result.error("10001", e3.getMessage(), e3.getMessage());
                return;
            }
        } else if (Intrinsics.areEqual(methodCall.method, "getSystemLanguage")) {
            result.success(Wwwwwwwwwwwwwwwwwwwwwww());
            return;
        } else {
            String str = "";
            if (Intrinsics.areEqual(methodCall.method, "setAppLocale")) {
                Application application = this.f5240Wwwwwwwwwwwwwwwwwwwwwww;
                if (application != null) {
                    String str2 = (String) methodCall.argument(RemoteConfigConstants.RequestFieldKey.LANGUAGE_CODE);
                    String str3 = (String) methodCall.argument(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE);
                    if (str3 != null) {
                        str = str3;
                    }
                    result.success(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwww(application, new Locale(str2, str))));
                    return;
                }
                return;
            } else if (Intrinsics.areEqual(methodCall.method, "setSendId")) {
                String str4 = (String) methodCall.arguments;
                if (str4 != null) {
                    str = str4;
                }
                Wwwwwwwwwwwwwwwwwww(str);
                return;
            } else if (Intrinsics.areEqual(methodCall.method, "getGaid")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            } else if (Intrinsics.areEqual(methodCall.method, "getGaidTimeConsuming")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            } else {
                result.notImplemented();
                return;
            }
        }
        e.printStackTrace();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
