package com.cd_core4.cd_deep_link;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.cd_core4.cd_deep_link.CdDeepLinkPlugin;
import com.changdu.component.deeplink.base.DeepLinkManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 /2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001/B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u0010\u001a\u00020\t2\b\b\u0001\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\t2\b\b\u0001\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0006J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082D¢\u0006\u0006\n\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "p0", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Landroid/content/Intent;", "", "onNewIntent", "(Landroid/content/Intent;)Z", "Wwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "intent", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;)V", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/app/Activity;", "Landroid/app/Activity;", "activity", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Companion", "cd_deep_link_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CdDeepLinkPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.NewIntentListener {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5268Wwwwwwwwwwwwwwwwwwwwwww = "CdDeepLinkPlugin";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5269Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5270Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5267Wwwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5266Wwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5265Wwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5264Wwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5263Wwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5262Wwwwwwwwwwwwwwwww = "";

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JE\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010R\u0016\u0010\f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "faceBookAppId", "faceBookClientToken", "faceBookScheme", "faceBookHost", "universalLinkScheme", "universalLinkHost", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "cd_deep_link_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
            try {
                CdDeepLinkPlugin.f5267Wwwwwwwwwwwwwwwwwwwwww = str;
                CdDeepLinkPlugin.f5266Wwwwwwwwwwwwwwwwwwwww = str2;
                CdDeepLinkPlugin.f5265Wwwwwwwwwwwwwwwwwwww = str3;
                CdDeepLinkPlugin.f5264Wwwwwwwwwwwwwwwwwww = str4;
                CdDeepLinkPlugin.f5262Wwwwwwwwwwwwwwwww = str6;
                CdDeepLinkPlugin.f5263Wwwwwwwwwwwwwwwwww = str5;
                DeepLinkManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public Companion() {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(CdDeepLinkPlugin cdDeepLinkPlugin, Uri uri) {
        MethodChannel methodChannel = cdDeepLinkPlugin.f5270Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("handleDeepLink", MapsKt.mapOf(TuplesKt.to("referrerStr", uri.toString()), TuplesKt.to(AppsFlyerProperties.CHANNEL, 101), TuplesKt.to(TypedValues.TransitionType.S_DURATION, 0)));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        Intent intent;
        Activity activity;
        Intent intent2;
        try {
            Activity activity2 = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity2 != null) {
                if (activity2.getIntent() != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwww(activity2.getIntent());
                }
                DeepLinkManager deepLinkManager = DeepLinkManager.INSTANCE;
                Activity activity3 = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww;
                if (activity3 != null) {
                    intent = activity3.getIntent();
                } else {
                    intent = null;
                }
                if (deepLinkManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent, f5265Wwwwwwwwwwwwwwwwwwww, f5264Wwwwwwwwwwwwwwwwwww, activity2) && (activity = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww) != null && (intent2 = activity.getIntent()) != null) {
                    intent2.setData(null);
                }
                deepLinkManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity2, new CdDeepLinkPlugin$init$1$1(this));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(Intent intent) {
        Activity activity;
        try {
            final Uri data = intent.getData();
            if (data != null && data.getHost() != null && StringsKt.equals$default(data.getHost(), f5262Wwwwwwwwwwwwwwwww, false, 2, null) && data.getScheme() != null && StringsKt.equals$default(data.getScheme(), f5263Wwwwwwwwwwwwwwwwww, false, 2, null) && (activity = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww) != null) {
                activity.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdDeepLinkPlugin.Wwwwwwwwwwwwwwwwwwwwwww(CdDeepLinkPlugin.this, data);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            this.f5269Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
            activityPluginBinding.addOnNewIntentListener(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_deep_link");
            this.f5270Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
            methodChannel.setMethodCallHandler(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5270Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull @NotNull MethodCall methodCall, @NonNull @NotNull MethodChannel.Result result) {
        try {
            if (Intrinsics.areEqual(methodCall.method, "init")) {
                Wwwwwwwwwwwwwwwwwwwwww(methodCall);
            } else {
                result.notImplemented();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(@NotNull Intent intent) {
        Intent intent2;
        Activity activity;
        Intent intent3;
        try {
            Activity activity2 = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwww(intent);
                DeepLinkManager deepLinkManager = DeepLinkManager.INSTANCE;
                Activity activity3 = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww;
                if (activity3 != null) {
                    intent2 = activity3.getIntent();
                } else {
                    intent2 = null;
                }
                if (deepLinkManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent2, f5265Wwwwwwwwwwwwwwwwwwww, f5264Wwwwwwwwwwwwwwwwwww, activity2) && (activity = this.f5269Wwwwwwwwwwwwwwwwwwwwwwww) != null && (intent3 = activity.getIntent()) != null) {
                    intent3.setData(null);
                }
                deepLinkManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent, activity2);
                return false;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            activityPluginBinding.removeOnNewIntentListener(this);
            onAttachedToActivity(activityPluginBinding);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }
}
