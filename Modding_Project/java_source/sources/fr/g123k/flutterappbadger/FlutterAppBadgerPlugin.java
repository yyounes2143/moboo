package fr.g123k.flutterappbadger;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import me.leolin.shortcutbadger.ShortcutBadger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterAppBadgerPlugin implements MethodChannel.MethodCallHandler, FlutterPlugin {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f11157Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f11158Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "g123k/flutter_app_badger");
        this.f11157Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f11158Wwwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f11157Wwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        this.f11158Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("updateBadgeCount")) {
            ShortcutBadger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f11158Wwwwwwwwwwwwwwwwwwwwwwwww, Integer.valueOf(methodCall.argument("count").toString()).intValue());
            result.success(null);
        } else if (methodCall.method.equals("removeBadge")) {
            ShortcutBadger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f11158Wwwwwwwwwwwwwwwwwwwwwwwww);
            result.success(null);
        } else if (methodCall.method.equals("isAppBadgeSupported")) {
            result.success(Boolean.valueOf(ShortcutBadger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f11158Wwwwwwwwwwwwwwwwwwwwwwwww)));
        } else {
            result.notImplemented();
        }
    }
}
