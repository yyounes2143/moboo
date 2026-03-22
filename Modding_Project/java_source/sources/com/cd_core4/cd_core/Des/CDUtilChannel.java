package com.cd_core4.cd_core.Des;

import android.content.Context;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.PrintStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDUtilChannel implements MethodChannel.MethodCallHandler, FlutterPlugin {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5243Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5244Wwwwwwwwwwwwwwwwwwwwwwwww;

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        return DESAlgorithm.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        System.out.getClass();
        this.f5244Wwwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.changdu.plus/CDUtil");
        this.f5243Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        System.out.getClass();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5244Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f5243Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        System.out.getClass();
        PrintStream printStream = System.out;
        String str = methodCall.method;
        printStream.getClass();
        if (methodCall.method.equals("desEncode")) {
            try {
                result.success(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.argument("key"), (String) methodCall.argument("data")));
                return;
            } catch (Exception e) {
                result.error("10001", e.getMessage(), e.getMessage());
                return;
            }
        }
        result.notImplemented();
    }
}
