package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class PermissionHandlerPlugin implements FlutterPlugin, ActivityAware {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodCallHandlerImpl f3955Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityPluginBinding f3956Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f3957Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PermissionManager f3958Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        PermissionManager permissionManager = this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (permissionManager != null) {
            permissionManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f3957Wwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        this.f3957Wwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f3955Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        PermissionManager permissionManager = this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (permissionManager != null) {
            permissionManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, BinaryMessenger binaryMessenger) {
        this.f3957Wwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(binaryMessenger, "flutter.baseflow.com/permissions/methods");
        MethodCallHandlerImpl methodCallHandlerImpl = new MethodCallHandlerImpl(context, new AppSettingsManager(), this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww, new ServiceManager());
        this.f3955Wwwwwwwwwwwwwwwwwwwwww = methodCallHandlerImpl;
        this.f3957Wwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(methodCallHandlerImpl);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ActivityPluginBinding activityPluginBinding = this.f3956Wwwwwwwwwwwwwwwwwwwwwww;
        if (activityPluginBinding != null) {
            activityPluginBinding.addActivityResultListener(this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f3956Wwwwwwwwwwwwwwwwwwwwwww.addRequestPermissionsResultListener(this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ActivityPluginBinding activityPluginBinding = this.f3956Wwwwwwwwwwwwwwwwwwwwwww;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f3956Wwwwwwwwwwwwwwwwwwwwwww.removeRequestPermissionsResultListener(this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding.getActivity());
        this.f3956Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f3958Wwwwwwwwwwwwwwwwwwwwwwwww = new PermissionManager(flutterPluginBinding.getApplicationContext());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f3956Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
