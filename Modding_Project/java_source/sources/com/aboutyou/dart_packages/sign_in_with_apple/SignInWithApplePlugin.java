package com.aboutyou.dart_packages.sign_in_with_apple;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.aboutyou.dart_packages.sign_in_with_apple.SignInWithApplePlugin;
import com.appsflyer.AppsFlyerProperties;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 .2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001.B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\t2\b\b\u0001\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000bJ#\u0010\u0012\u001a\u00020\t2\b\b\u0001\u0010\u000f\u001a\u00020\u000e2\b\b\u0001\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0006J)\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b \u0010!R\u0014\u0010$\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010\f\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010\u0016¨\u0006/"}, d2 = {"Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "binding", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onReattachedToActivityForConfigChanges", "onDetachedFromActivityForConfigChanges", "onDetachedFromActivity", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "onActivityResult", "(IILandroid/content/Intent;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "I", "CUSTOM_TABS_REQUEST_CODE", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Wwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "getBinding", "()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "setBinding", "Companion", "sign_in_with_apple_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SignInWithApplePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Function0<Unit> f2227Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static MethodChannel.Result f2228Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityPluginBinding f2229Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f2230Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2231Wwwwwwwwwwwwwwwwwwwwwwwww = 1001;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithApplePlugin$Companion;", "", "<init>", "()V", "Lio/flutter/plugin/common/MethodChannel$Result;", "lastAuthorizationRequestResult", "Lio/flutter/plugin/common/MethodChannel$Result;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lio/flutter/plugin/common/MethodChannel$Result;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lkotlin/Function0;", "", "triggerMainActivityToHideChromeCustomTab", "Lkotlin/jvm/functions/Function0;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lkotlin/jvm/functions/Function0;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/jvm/functions/Function0;)V", "sign_in_with_apple_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Function0<Unit> function0) {
            SignInWithApplePlugin.f2227Wwwwwwwwwwwwwwwwwwwww = function0;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MethodChannel.Result result) {
            SignInWithApplePlugin.f2228Wwwwwwwwwwwwwwwwwwwwww = result;
        }

        @Nullable
        public final Function0<Unit> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return SignInWithApplePlugin.f2227Wwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final MethodChannel.Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return SignInWithApplePlugin.f2228Wwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    public static final Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setPackage(null);
        }
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        }
        activity.startActivity(launchIntentForPackage);
        return Unit.INSTANCE;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        MethodChannel.Result result;
        if (i == this.f2231Wwwwwwwwwwwwwwwwwwwwwwwww && (result = f2228Wwwwwwwwwwwwwwwwwwwwww) != null) {
            result.error("authorization-error/canceled", "The user closed the Custom Tab", null);
            f2228Wwwwwwwwwwwwwwwwwwwwww = null;
            f2227Wwwwwwwwwwwwwwwwwwwww = null;
            return false;
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f2229Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.aboutyou.dart_packages.sign_in_with_apple");
        this.f2230Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        ActivityPluginBinding activityPluginBinding = this.f2229Wwwwwwwwwwwwwwwwwwwwwww;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this);
        }
        this.f2229Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f2230Wwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f2230Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull @NotNull MethodCall methodCall, @NonNull @NotNull MethodChannel.Result result) {
        final Activity activity;
        String str = methodCall.method;
        if (Intrinsics.areEqual(str, "isAvailable")) {
            result.success(Boolean.TRUE);
        } else if (Intrinsics.areEqual(str, "performAuthorizationRequest")) {
            ActivityPluginBinding activityPluginBinding = this.f2229Wwwwwwwwwwwwwwwwwwwwwww;
            if (activityPluginBinding != null) {
                activity = activityPluginBinding.getActivity();
            } else {
                activity = null;
            }
            if (activity == null) {
                result.error("MISSING_ACTIVITY", "Plugin is not attached to an activity", methodCall.arguments);
                return;
            }
            String str2 = (String) methodCall.argument("url");
            if (str2 == null) {
                result.error("MISSING_ARG", "Missing 'url' argument", methodCall.arguments);
                return;
            }
            MethodChannel.Result result2 = f2228Wwwwwwwwwwwwwwwwwwwwww;
            if (result2 != null) {
                result2.error("NEW_REQUEST", "A new request came in while this was still pending. The previous request (this one) was then cancelled.", null);
            }
            Function0<Unit> function0 = f2227Wwwwwwwwwwwwwwwwwwwww;
            if (function0 != null) {
                function0.invoke();
            }
            f2228Wwwwwwwwwwwwwwwwwwwwww = result;
            f2227Wwwwwwwwwwwwwwwwwwwww = new Function0() { // from class: Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SignInWithApplePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            };
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(Uri.parse(str2));
            activity.startActivityForResult(build.intent, this.f2231Wwwwwwwwwwwwwwwwwwwwwwwww, build.startAnimationBundle);
        } else {
            result.notImplemented();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
