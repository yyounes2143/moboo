package com.ajinasokan.flutterdisplaymode;

import android.app.Activity;
import android.os.Build;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DisplayModePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f2233Wwwwwwwwwwwwwwwwwwwwwwwww;

    @RequiresApi(api = 23)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument("mode")).intValue();
        Window window = this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.preferredDisplayModeId = intValue;
        window.setAttributes(attributes);
        result.success(null);
    }

    @RequiresApi(api = 23)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MethodChannel.Result result) {
        result.success(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @RequiresApi(api = 23)
    public final ArrayList<HashMap<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Display.Mode[] supportedModes;
        ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
        for (Display.Mode mode : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getSupportedModes()) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("id", Integer.valueOf(mode.getModeId()));
            hashMap.put("width", Integer.valueOf(mode.getPhysicalWidth()));
            hashMap.put("height", Integer.valueOf(mode.getPhysicalHeight()));
            hashMap.put("refreshRate", Float.valueOf(mode.getRefreshRate()));
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    @RequiresApi(api = 23)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MethodChannel.Result result) {
        Display.Mode[] supportedModes;
        WindowManager.LayoutParams attributes = this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww.getWindow().getAttributes();
        for (Display.Mode mode : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getSupportedModes()) {
            if (attributes.preferredDisplayModeId == mode.getModeId()) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", Integer.valueOf(mode.getModeId()));
                hashMap.put("width", Integer.valueOf(mode.getPhysicalWidth()));
                hashMap.put("height", Integer.valueOf(mode.getPhysicalHeight()));
                hashMap.put("refreshRate", Float.valueOf(mode.getRefreshRate()));
                result.success(hashMap);
                return;
            }
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("id", 0);
        hashMap2.put("width", 0);
        hashMap2.put("height", 0);
        hashMap2.put("refreshRate", Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
        result.success(hashMap2);
    }

    public Display Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Display display;
        if (Build.VERSION.SDK_INT >= 30) {
            display = this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww.getDisplay();
            return display;
        }
        return ((WindowManager) this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("window")).getDefaultDisplay();
    }

    @RequiresApi(api = 23)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MethodChannel.Result result) {
        Display.Mode mode = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getMode();
        HashMap hashMap = new HashMap();
        hashMap.put("id", Integer.valueOf(mode.getModeId()));
        hashMap.put("width", Integer.valueOf(mode.getPhysicalWidth()));
        hashMap.put("height", Integer.valueOf(mode.getPhysicalHeight()));
        hashMap.put("refreshRate", Float.valueOf(mode.getRefreshRate()));
        result.success(hashMap);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_display_mode").setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        if (this.f2233Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            result.error("noActivity", "Activity not attached to plugin. App is probably in background.", null);
            return;
        }
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1726525938:
                if (str.equals("getPreferredMode")) {
                    c = 0;
                    break;
                }
                break;
            case 736998530:
                if (str.equals("setPreferredMode")) {
                    c = 1;
                    break;
                }
                break;
            case 1746006463:
                if (str.equals("getActiveMode")) {
                    c = 2;
                    break;
                }
                break;
            case 2066137112:
                if (str.equals("getSupportedModes")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            case 1:
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                return;
            case 2:
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            case 3:
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }
}
