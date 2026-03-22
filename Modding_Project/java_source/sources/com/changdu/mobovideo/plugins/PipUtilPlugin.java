package com.changdu.mobovideo.plugins;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.PictureInPictureParams;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.util.Rational;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 /2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001/B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\nJ\u001f\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u0017\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u0015\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010#\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000bH\u0002¢\u0006\u0004\b'\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/changdu/mobovideo/plugins/PipUtilPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "", "inPipModel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "isInPictureInPictureMode", "Landroid/content/res/Configuration;", "newConfig", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "mActivity", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PipUtilPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Rational f5617Wwwwwwwwwwwwwwwwwwwwww = new Rational(9, 16);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5618Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5619Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5620Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/changdu/mobovideo/plugins/PipUtilPlugin$Companion;", "", "<init>", "()V", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        AppOpsManager appOpsManager;
        try {
            Activity activity = this.f5619Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity == null) {
                return false;
            }
            Object systemService = activity.getSystemService("appops");
            if (systemService instanceof AppOpsManager) {
                appOpsManager = (AppOpsManager) systemService;
            } else {
                appOpsManager = null;
            }
            if (appOpsManager == null || Build.VERSION.SDK_INT < 26) {
                return false;
            }
            if (appOpsManager.checkOpNoThrow("android:picture_in_picture", this.f5619Wwwwwwwwwwwwwwwwwwwwwwww.getApplicationInfo().uid, this.f5619Wwwwwwwwwwwwwwwwwwwwwwww.getPackageName()) != 0) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        MethodChannel methodChannel = this.f5620Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.invokeMethod("onPipModelStateChange", Boolean.valueOf(z));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity, boolean z, @Nullable Configuration configuration) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        PictureInPictureParams.Builder aspectRatio;
        PictureInPictureParams build;
        boolean enterPictureInPictureMode;
        if (f5618Wwwwwwwwwwwwwwwwwwwwwww && Build.VERSION.SDK_INT >= 26 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            try {
                Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                aspectRatio = Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setAspectRatio(f5617Wwwwwwwwwwwwwwwwwwwwww);
                build = aspectRatio.build();
                enterPictureInPictureMode = activity.enterPictureInPictureMode(build);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(enterPictureInPictureMode);
            } catch (Exception unused) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5619Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_app_pip_util");
        this.f5620Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5619Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        Activity activity;
        boolean isInPictureInPictureMode;
        Activity activity2;
        PictureInPictureParams.Builder aspectRatio;
        PictureInPictureParams build;
        Activity activity3;
        try {
            String str = methodCall.method;
            if (str != null) {
                switch (str.hashCode()) {
                    case -2062680785:
                        if (str.equals("updatePipSize")) {
                            Number number = (Double) methodCall.argument("width");
                            if (number == null) {
                                number = 0;
                            }
                            Number number2 = (Double) methodCall.argument("height");
                            if (number2 == null) {
                                number2 = 0;
                            }
                            if (!Intrinsics.areEqual((Object) number, (Object) 0) && !Intrinsics.areEqual((Object) number2, (Object) 0)) {
                                Rational rational = new Rational(number.intValue(), number2.intValue());
                                f5617Wwwwwwwwwwwwwwwwwwwwww = rational;
                                double floatValue = rational.floatValue();
                                if (floatValue >= 2.39d || floatValue <= 0.41841004184100417d) {
                                    f5617Wwwwwwwwwwwwwwwwwwwwww = new Rational(9, 16);
                                }
                                if (Build.VERSION.SDK_INT >= 26 && (activity = this.f5619Wwwwwwwwwwwwwwwwwwwwwwww) != null) {
                                    isInPictureInPictureMode = activity.isInPictureInPictureMode();
                                    if (isInPictureInPictureMode && (activity2 = this.f5619Wwwwwwwwwwwwwwwwwwwwwwww) != null) {
                                        Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                        aspectRatio = Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setAspectRatio(f5617Wwwwwwwwwwwwwwwwwwwwww);
                                        build = aspectRatio.build();
                                        activity2.setPictureInPictureParams(build);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case -631668460:
                        if (str.equals("enablePip")) {
                            f5618Wwwwwwwwwwwwwwwwwwwwwww = ((Boolean) methodCall.arguments).booleanValue();
                            return;
                        }
                        return;
                    case 977600163:
                        if (str.equals("openPIPSetting") && (activity3 = this.f5619Wwwwwwwwwwwwwwwwwwwwwwww) != null && activity3 != null) {
                            activity3.startActivityForResult(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.fromParts(TPDownloadProxyEnum.DLPARAM_PACKAGE, this.f5619Wwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), null)), 0);
                            return;
                        }
                        return;
                    case 1332332937:
                        if (str.equals("userEnablePip")) {
                            result.success(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                            return;
                        }
                        return;
                    case 1557360658:
                        if (str.equals("isSupportPip")) {
                            result.success(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }
}
