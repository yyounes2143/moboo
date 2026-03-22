package dev.fluttercommunity.plus.connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ConnectivityPlugin implements FlutterPlugin {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConnectivityBroadcastReceiver f11130Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EventChannel f11131Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f11132Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f11132Wwwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        this.f11131Wwwwwwwwwwwwwwwwwwwwwwww.setStreamHandler(null);
        this.f11130Wwwwwwwwwwwwwwwwwwwwwww.onCancel(null);
        this.f11132Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f11131Wwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f11130Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger, Context context) {
        this.f11132Wwwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity");
        this.f11131Wwwwwwwwwwwwwwwwwwwwwwww = new EventChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity_status");
        Connectivity connectivity = new Connectivity((ConnectivityManager) context.getSystemService("connectivity"));
        ConnectivityMethodChannelHandler connectivityMethodChannelHandler = new ConnectivityMethodChannelHandler(connectivity);
        this.f11130Wwwwwwwwwwwwwwwwwwwwwww = new ConnectivityBroadcastReceiver(context, connectivity);
        this.f11132Wwwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(connectivityMethodChannelHandler);
        this.f11131Wwwwwwwwwwwwwwwwwwwwwwww.setStreamHandler(this.f11130Wwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
