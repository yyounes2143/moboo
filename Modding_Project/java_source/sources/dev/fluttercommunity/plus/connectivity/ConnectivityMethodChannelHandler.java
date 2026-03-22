package dev.fluttercommunity.plus.connectivity;

import androidx.annotation.NonNull;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ConnectivityMethodChannelHandler implements MethodChannel.MethodCallHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Connectivity f11129Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ConnectivityMethodChannelHandler(Connectivity connectivity) {
        this.f11129Wwwwwwwwwwwwwwwwwwwwwwwww = connectivity;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, @NonNull MethodChannel.Result result) {
        if ("check".equals(methodCall.method)) {
            result.success(this.f11129Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            result.notImplemented();
        }
    }
}
