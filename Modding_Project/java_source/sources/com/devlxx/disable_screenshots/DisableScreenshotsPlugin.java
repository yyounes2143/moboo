package com.devlxx.disable_screenshots;

import android.app.Activity;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.devlxx.disable_screenshots.ScreenShotListenManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u000bJ#\u0010\u0018\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001c\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u001dH\u0016¢\u0006\u0004\b \u0010\u001fJ\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0006J\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R\"\u0010>\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010%¨\u0006?"}, d2 = {"Lcom/devlxx/disable_screenshots/DisableScreenshotsPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/plugin/common/EventChannel$StreamHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "", "arguments", "Lio/flutter/plugin/common/EventChannel$EventSink;", DbParams.TABLE_EVENTS, "onListen", "(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V", "onCancel", "(Ljava/lang/Object;)V", "onDetachedFromActivity", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onReattachedToActivityForConfigChanges", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onAttachedToActivity", "onDetachedFromActivityForConfigChanges", "", "disable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "applicationContext", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/EventChannel$EventSink;", "eventSink", "Lcom/devlxx/disable_screenshots/ScreenShotListenManager;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/devlxx/disable_screenshots/ScreenShotListenManager;", "screenShotListenManager", "Wwwwwwwwwwwwwwwwwwww", "Z", "getDisableScreenshots", "()Z", "setDisableScreenshots", "disableScreenshots", "disable_screenshots_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DisableScreenshotsPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, EventChannel.StreamHandler, ActivityAware {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5681Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScreenShotListenManager f5682Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EventChannel.EventSink f5683Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5684Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5685Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5686Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DisableScreenshotsPlugin disableScreenshotsPlugin, String str) {
        System.out.getClass();
        EventChannel.EventSink eventSink = disableScreenshotsPlugin.f5683Wwwwwwwwwwwwwwwwwwwwww;
        if (eventSink != null) {
            eventSink.success("监听到截屏行为");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        Activity activity = null;
        if (z) {
            Activity activity2 = this.f5684Wwwwwwwwwwwwwwwwwwwwwww;
            if (activity2 != null) {
                activity = activity2;
            }
            activity.getWindow().setFlags(8192, 8192);
            System.out.getClass();
            return;
        }
        Activity activity3 = this.f5684Wwwwwwwwwwwwwwwwwwwwwww;
        if (activity3 != null) {
            activity = activity3;
        }
        activity.getWindow().clearFlags(8192);
        System.out.getClass();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5684Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5681Wwwwwwwwwwwwwwwwwwww);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5685Wwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        this.f5686Wwwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.devlxx.DisableScreenshots/disableScreenshots");
        EventChannel eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "com.devlxx.DisableScreenshots/observer");
        MethodChannel methodChannel = this.f5686Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(this);
        eventChannel.setStreamHandler(this);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(@Nullable Object obj) {
        ScreenShotListenManager screenShotListenManager = this.f5682Wwwwwwwwwwwwwwwwwwwww;
        if (screenShotListenManager == null) {
            screenShotListenManager = null;
        }
        screenShotListenManager.Wwwwwwwwwwwwwwwwwwwwwww();
        this.f5683Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5686Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(@Nullable Object obj, @Nullable EventChannel.EventSink eventSink) {
        System.out.getClass();
        this.f5683Wwwwwwwwwwwwwwwwwwwwww = eventSink;
        Context context = this.f5685Wwwwwwwwwwwwwwwwwwwwwwww;
        ScreenShotListenManager screenShotListenManager = null;
        if (context == null) {
            context = null;
        }
        ScreenShotListenManager Wwwwwwwwwwwwwwwwwwwwwwwwww2 = ScreenShotListenManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(context);
        this.f5682Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww(new ScreenShotListenManager.OnScreenShotListener() { // from class: com.devlxx.disable_screenshots.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.devlxx.disable_screenshots.ScreenShotListenManager.OnScreenShotListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
                DisableScreenshotsPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DisableScreenshotsPlugin.this, str);
            }
        });
        ScreenShotListenManager screenShotListenManager2 = this.f5682Wwwwwwwwwwwwwwwwwwwww;
        if (screenShotListenManager2 != null) {
            screenShotListenManager = screenShotListenManager2;
        }
        screenShotListenManager.Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        if (Intrinsics.areEqual(methodCall.method, "disableScreenshots")) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.areEqual(methodCall.argument("disable"), Boolean.TRUE));
            result.success("");
            return;
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5684Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5681Wwwwwwwwwwwwwwwwwwww);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }
}
