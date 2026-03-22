package com.cd_core4.cd_webview;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.component.core.CDComponent;
import com.google.ads.mediation.vungle.VungleConstants;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 +2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001+B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0016\u0010\u000eJ\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u001f\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001e\u0010\u0014J\u0017\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\"\u0010\u001aJ\u000f\u0010#\u001a\u00020\bH\u0002¢\u0006\u0004\b#\u0010\u0005R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/cd_core4/cd_webview/CdWebViewPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "", "jsonStr", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "p0", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "activityPluginBinding", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "mWebViewUserAgent", "Companion", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCdWebViewPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdWebViewPlugin.kt\ncom/cd_core4/cd_webview/CdWebViewPlugin\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,211:1\n215#2,2:212\n215#2,2:214\n*S KotlinDebug\n*F\n+ 1 CdWebViewPlugin.kt\ncom/cd_core4/cd_webview/CdWebViewPlugin\n*L\n191#1:212,2\n202#1:214,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CdWebViewPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<Integer, PluginRegistry.ActivityResultListener> f5291Wwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ActivityPluginBinding f5292Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Activity f5293Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Context f5294Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5295Wwwwwwwwwwwwwwwwwwwwwwww = "";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5296Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/cd_core4/cd_webview/CdWebViewPlugin$Companion;", "", "<init>", "()V", "", "id", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "result", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Landroid/app/Activity;", "activity", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/app/Activity;", "setActivity", "(Landroid/app/Activity;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "_activityPluginBinding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "", "_activityListener", "Ljava/util/Map;", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            ActivityPluginBinding activityPluginBinding;
            PluginRegistry.ActivityResultListener activityResultListener = (PluginRegistry.ActivityResultListener) CdWebViewPlugin.f5291Wwwwwwwwwwwwwwwwwwww.remove(Integer.valueOf(i));
            if (activityResultListener != null && (activityPluginBinding = CdWebViewPlugin.f5292Wwwwwwwwwwwwwwwwwwwww) != null) {
                activityPluginBinding.removeActivityResultListener(activityResultListener);
            }
        }

        @Nullable
        public final Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return CdWebViewPlugin.f5293Wwwwwwwwwwwwwwwwwwwwww;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull PluginRegistry.ActivityResultListener activityResultListener) {
            CdWebViewPlugin.f5291Wwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i), activityResultListener);
            ActivityPluginBinding activityPluginBinding = CdWebViewPlugin.f5292Wwwwwwwwwwwwwwwwwwwww;
            if (activityPluginBinding != null) {
                activityPluginBinding.addActivityResultListener(activityResultListener);
            }
        }

        public Companion() {
        }
    }

    private final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            System.out.getClass();
            if (jSONObject.has("langId")) {
                CDComponent.getInstance().setLangId(jSONObject.getInt("langId"));
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
            if (jSONObject.has("httpBaseUrl")) {
                CDComponent.getInstance().setHttpBaseUrl(jSONObject.getString("httpBaseUrl"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityPluginBinding activityPluginBinding) {
        try {
            f5293Wwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
            f5292Wwwwwwwwwwwwwwwwwwwww = activityPluginBinding;
            for (Map.Entry<Integer, PluginRegistry.ActivityResultListener> entry : f5291Wwwwwwwwwwwwwwwwwwww.entrySet()) {
                f5292Wwwwwwwwwwwwwwwwwwwww.addActivityResultListener(entry.getValue());
            }
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            f5293Wwwwwwwwwwwwwwwwwwwwww = null;
            if (f5292Wwwwwwwwwwwwwwwwwwwww != null) {
                for (Map.Entry<Integer, PluginRegistry.ActivityResultListener> entry : f5291Wwwwwwwwwwwwwwwwwwww.entrySet()) {
                    f5292Wwwwwwwwwwwwwwwwwwwww.removeActivityResultListener(entry.getValue());
                }
                f5292Wwwwwwwwwwwwwwwwwwwww = null;
            }
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        try {
            String str = (String) methodCall.argument("url");
            Map map = (Map) methodCall.argument("extraParamsMap");
            if (map == null) {
                map = MapsKt.emptyMap();
            }
            if (str != null && !StringsKt.isBlank(str)) {
                result.success(com.changdu.component.webviewcache.CDWebView.Companion.parseHtmlUrl(str, (LinkedHashMap) MapsKt.toMap(map, new LinkedHashMap())));
                result.success("");
                return;
            }
            result.success("");
        } catch (Exception unused) {
            result.success("");
        } catch (Throwable th) {
            result.success("");
            throw th;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        String str = this.f5295Wwwwwwwwwwwwwwwwwwwwwwww;
        if (str == null || StringsKt.isBlank(str)) {
            try {
                Context context = f5294Wwwwwwwwwwwwwwwwwwwwwww;
                if (context != null) {
                    this.f5295Wwwwwwwwwwwwwwwwwwwwwwww = new WebView(context).getSettings().getUserAgentString();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable unused) {
                this.f5295Wwwwwwwwwwwwwwwwwwwwwwww = "";
                Unit unit2 = Unit.INSTANCE;
            }
        }
        if (this.f5295Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f5295Wwwwwwwwwwwwwwwwwwwwwwww = "";
        }
        result.success(this.f5295Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_webview");
            this.f5296Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
            methodChannel.setMethodCallHandler(this);
            f5294Wwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
            flutterPluginBinding.getPlatformViewRegistry().registerViewFactory("com.cd_core4.cd_webView/webView", new CDWebViewFactory(flutterPluginBinding.getBinaryMessenger()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5296Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        try {
            if (Intrinsics.areEqual(methodCall.method, "getPlatformVersion")) {
                result.success("Android " + Build.VERSION.RELEASE);
            } else if (Intrinsics.areEqual(methodCall.method, "setAppParams")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.arguments());
                result.success("设置成功");
            } else if (Intrinsics.areEqual(methodCall.method, "cleanCache")) {
                com.changdu.component.webviewcache.CDWebView.Companion.clearCache(CDComponent.context);
            } else if (Intrinsics.areEqual(methodCall.method, "parseHtmlUrl")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
            } else if (Intrinsics.areEqual(methodCall.method, "getWebViewUserAgent")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
            } else {
                result.notImplemented();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }
}
