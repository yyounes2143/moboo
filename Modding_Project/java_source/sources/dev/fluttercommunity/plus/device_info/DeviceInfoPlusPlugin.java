package dev.fluttercommunity.plus.device_info;

import android.content.Context;
import android.view.WindowManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Ldev/fluttercommunity/plus/device_info/DeviceInfoPlusPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "device_info_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class DeviceInfoPlusPlugin implements FlutterPlugin {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f11136Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger, Context context) {
        this.f11136Wwwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(binaryMessenger, "dev.fluttercommunity.plus/device_info");
        MethodCallHandlerImpl methodCallHandlerImpl = new MethodCallHandlerImpl(context.getPackageManager(), (WindowManager) context.getSystemService("window"));
        MethodChannel methodChannel = this.f11136Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(methodCallHandlerImpl);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f11136Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }
}
