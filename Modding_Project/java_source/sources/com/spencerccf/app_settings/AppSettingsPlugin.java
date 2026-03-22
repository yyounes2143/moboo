package com.spencerccf.app_settings;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\nJ\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u0010J\u001f\u0010\u001a\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u0010J!\u0010\u001d\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ!\u0010 \u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b \u0010\u001eJ!\u0010!\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b!\u0010\u001eJ\u001f\u0010\"\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\"\u0010\u001eJ\u001f\u0010#\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b#\u0010\u001eJ)\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b&\u0010'J)\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b*\u0010+J\u001f\u0010,\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b,\u0010\u001eR\u0018\u0010/\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u00101¨\u00063"}, d2 = {"Lcom/spencerccf/app_settings/AppSettingsPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "asAnotherTask", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "url", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Z)V", "Landroid/content/Intent;", "intent", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;Lio/flutter/plugin/common/MethodChannel$Result;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "Landroid/app/Activity;", "activity", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "app_settings_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAppSettingsPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSettingsPlugin.kt\ncom/spencerccf/app_settings/AppSettingsPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"})
/* loaded from: classes6.dex */
public final class AppSettingsPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f10050Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f10051Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        if (Build.VERSION.SDK_INT >= 24) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.VPN_SETTINGS", result, z);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwww("android.net.vpn.SETTINGS", result, z);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(Intent intent, MethodChannel.Result result, boolean z) {
        if (z) {
            try {
                intent.addFlags(268435456);
            } catch (Exception unused) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                return;
            }
        }
        Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            activity.startActivity(intent);
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(String str, MethodChannel.Result result, boolean z) {
        try {
            Intent intent = new Intent(str);
            if (z) {
                intent.addFlags(268435456);
            }
            Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                activity.startActivity(intent);
            }
            result.success(null);
        } catch (Exception unused) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                Intent putExtra = new Intent("android.settings.APP_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
                if (z) {
                    putExtra.addFlags(268435456);
                }
                activity.startActivity(putExtra);
            }
            result.success(null);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        Wwwwwwwwwwwwwwwwwwwwwwwww(new Intent().setClassName("com.android.settings", "com.android.settings.TetherSettings"), result, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS", result, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        if (z) {
            intent.addFlags(268435456);
        }
        Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            intent.setData(Uri.fromParts(TPDownloadProxyEnum.DLPARAM_PACKAGE, activity.getPackageName(), null));
            activity.startActivity(intent);
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        if (Build.VERSION.SDK_INT < 33) {
            result.success(null);
            return;
        }
        Intent intent = new Intent("android.settings.APP_LOCALE_SETTINGS");
        if (z) {
            intent.addFlags(268435456);
        }
        Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            intent.setData(Uri.fromParts(TPDownloadProxyEnum.DLPARAM_PACKAGE, activity.getPackageName(), null));
            activity.startActivity(intent);
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z) {
        Uri uri;
        if (Build.VERSION.SDK_INT >= 31) {
            Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                uri = Uri.fromParts(TPDownloadProxyEnum.DLPARAM_PACKAGE, activity.getPackageName(), null);
            } else {
                uri = null;
            }
            if (uri == null) {
                result.success(null);
                return;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwww(new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM", uri), result, z);
                return;
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT < 29) {
            result.success(null);
            return;
        }
        Activity activity = this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            String str = (String) methodCall.argument("type");
            if (str != null) {
                switch (str.hashCode()) {
                    case -810883302:
                        if (str.equals("volume")) {
                            activity.startActivity(new Intent("android.settings.panel.action.VOLUME"));
                            result.success(null);
                            return;
                        }
                        break;
                    case 108971:
                        if (str.equals("nfc")) {
                            activity.startActivity(new Intent("android.settings.panel.action.NFC"));
                            result.success(null);
                            return;
                        }
                        break;
                    case 3649301:
                        if (str.equals("wifi")) {
                            activity.startActivity(new Intent("android.settings.panel.action.WIFI"));
                            result.success(null);
                            return;
                        }
                        break;
                    case 21015448:
                        if (str.equals("internetConnectivity")) {
                            activity.startActivity(new Intent("android.settings.panel.action.INTERNET_CONNECTIVITY"));
                            result.success(null);
                            return;
                        }
                        break;
                }
            }
            result.notImplemented();
            return;
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        boolean z;
        Boolean bool = (Boolean) methodCall.argument("asAnotherTask");
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        String str = (String) methodCall.argument("type");
        if (str != null) {
            switch (str.hashCode()) {
                case -2045253606:
                    if (str.equals("batteryOptimization")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case -1928150741:
                    if (str.equals("generalSettings")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.SETTINGS", result, z);
                        return;
                    }
                    break;
                case -1335157162:
                    if (str.equals("device")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.DEVICE_INFO_SETTINGS", result, z);
                        return;
                    }
                    break;
                case -1000044642:
                    if (str.equals("wireless")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.WIRELESS_SETTINGS", result, z);
                        return;
                    }
                    break;
                case -213139122:
                    if (str.equals("accessibility")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.ACCESSIBILITY_SETTINGS", result, z);
                        return;
                    }
                    break;
                case -114233073:
                    if (str.equals("dataRoaming")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.DATA_ROAMING_SETTINGS", result, z);
                        return;
                    }
                    break;
                case -80681014:
                    if (str.equals("developer")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.APPLICATION_DEVELOPMENT_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 96799:
                    if (str.equals("apn")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.APN_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 108971:
                    if (str.equals("nfc")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.NFC_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 116980:
                    if (str.equals("vpn")) {
                        Wwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 3076014:
                    if (str.equals("date")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.DATE_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 3649301:
                    if (str.equals("wifi")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.WIFI_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 92895825:
                    if (str.equals(NotificationCompat.CATEGORY_ALARM)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 109627663:
                    if (str.equals("sound")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.SOUND_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 595233003:
                    if (str.equals("notification")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 949122880:
                    if (str.equals("security")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.SECURITY_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 1039955198:
                    if (str.equals("internalStorage")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.INTERNAL_STORAGE_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 1099603663:
                    if (str.equals("hotspot")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 1214667623:
                    if (str.equals("lockAndPassword")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.app.action.SET_NEW_PASSWORD", result, z);
                        return;
                    }
                    break;
                case 1294374875:
                    if (str.equals("appLocale")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 1434631203:
                    if (str.equals("settings")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, z);
                        return;
                    }
                    break;
                case 1671764162:
                    if (str.equals(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.DISPLAY_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 1901043637:
                    if (str.equals(FirebaseAnalytics.Param.LOCATION)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.LOCATION_SOURCE_SETTINGS", result, z);
                        return;
                    }
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.BLUETOOTH_SETTINGS", result, z);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.spencerccf.app_settings/methods");
        this.f10050Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f10050Wwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        String str = methodCall.method;
        if (Intrinsics.areEqual(str, "openSettings")) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
        } else if (Intrinsics.areEqual(str, "openSettingsPanel")) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
        } else {
            result.notImplemented();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f10051Wwwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }
}
