package com.changdu.mobovideo.plugins;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Observer;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.ad.AdProcessService;
import com.changdu.mobovideo.ad.EcpmEntity;
import com.jeremyliao.liveeventbus.LiveEventBus;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0007J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u0007J\u0017\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/changdu/mobovideo/plugins/AdProcessPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Landroidx/lifecycle/Observer;", "Lcom/changdu/mobovideo/ad/EcpmEntity;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/ad/EcpmEntity;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "mActivity", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "applicationContext", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAdProcessPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdProcessPlugin.kt\ncom/changdu/mobovideo/plugins/AdProcessPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1761#2,3:120\n*S KotlinDebug\n*F\n+ 1 AdProcessPlugin.kt\ncom/changdu/mobovideo/plugins/AdProcessPlugin\n*L\n78#1:120,3\n*E\n"})
/* loaded from: classes3.dex */
public final class AdProcessPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, Observer<EcpmEntity> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5586Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5587Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5588Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Context context = this.f5586Wwwwwwwwwwwwwwwwwwwwwww;
        Context context2 = null;
        if (context == null) {
            context = null;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        Context context3 = this.f5586Wwwwwwwwwwwwwwwwwwwwwww;
        if (context3 != null) {
            context2 = context3;
        }
        String str = context2.getPackageName() + ":ads";
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            List<ActivityManager.RunningAppProcessInfo> list = runningAppProcesses;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
                if (Intrinsics.areEqual(runningAppProcessInfo.processName, str)) {
                    Process.killProcess(runningAppProcessInfo.pid);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.lifecycle.Observer
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onChanged(@NotNull EcpmEntity ecpmEntity) {
        MethodChannel methodChannel = this.f5588Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("ecpmLoadResult", MapsKt.hashMapOf(TuplesKt.to("loadSuccess", Boolean.valueOf(ecpmEntity.getLoadSuccess())), TuplesKt.to("value", Double.valueOf(ecpmEntity.getValue())), TuplesKt.to("adId", ecpmEntity.getAdId()), TuplesKt.to("revenuePrecision", ecpmEntity.getRevenuePrecision()), TuplesKt.to("networkName", ecpmEntity.getNetworkName())));
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5587Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "ad_process_plugin");
        this.f5588Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f5586Wwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        LiveEventBus.get("ecpmReport").observeForever(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5587Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5587Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        LiveEventBus.get("ecpmReport").removeObserver(this);
        MethodChannel methodChannel = this.f5588Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f5588Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        String str = methodCall.method;
        if (str != null) {
            int hashCode = str.hashCode();
            String str2 = "";
            String str3 = null;
            if (hashCode != -1097520215) {
                if (hashCode != -285871641) {
                    if (hashCode == 595062576 && str.equals("stopAdService")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        result.success(Boolean.TRUE);
                        return;
                    }
                } else if (str.equals("initAdSDK")) {
                    if (this.f5587Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                        Intent intent = new Intent(this.f5587Wwwwwwwwwwwwwwwwwwwwwwww, AdProcessService.class);
                        intent.setAction("init");
                        Object obj = methodCall.arguments;
                        if (obj instanceof String) {
                            str3 = (String) obj;
                        }
                        if (str3 != null) {
                            str2 = str3;
                        }
                        intent.putExtra("platformKey", str2);
                        this.f5587Wwwwwwwwwwwwwwwwwwwwwwww.startService(intent);
                        result.success(Boolean.TRUE);
                        return;
                    }
                    result.success(Boolean.FALSE);
                    return;
                }
            } else if (str.equals("loadAd")) {
                if (this.f5587Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                    Intent intent2 = new Intent(this.f5587Wwwwwwwwwwwwwwwwwwwwwwww, AdProcessService.class);
                    intent2.setAction("load");
                    Object obj2 = methodCall.arguments;
                    if (obj2 instanceof String) {
                        str3 = (String) obj2;
                    }
                    if (str3 != null) {
                        str2 = str3;
                    }
                    intent2.putExtra("adId", str2);
                    this.f5587Wwwwwwwwwwwwwwwwwwwwwwww.startService(intent2);
                    result.success(Boolean.TRUE);
                    return;
                }
                result.success(Boolean.FALSE);
                return;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5587Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }
}
