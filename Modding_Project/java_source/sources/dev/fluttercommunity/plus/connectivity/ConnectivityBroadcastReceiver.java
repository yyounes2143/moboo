package dev.fluttercommunity.plus.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import io.flutter.plugin.common.EventChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ConnectivityBroadcastReceiver extends BroadcastReceiver implements EventChannel.StreamHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConnectivityManager.NetworkCallback f11123Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f11124Wwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EventChannel.EventSink f11125Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Connectivity f11126Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f11127Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ConnectivityBroadcastReceiver(Context context, Connectivity connectivity) {
        this.f11127Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f11126Wwwwwwwwwwwwwwwwwwwwwwww = connectivity;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str) {
        this.f11124Wwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: dev.fluttercommunity.plus.connectivity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ConnectivityBroadcastReceiver.this.f11125Wwwwwwwwwwwwwwwwwwwwwww.success(str);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f11124Wwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: dev.fluttercommunity.plus.connectivity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                r0.f11125Wwwwwwwwwwwwwwwwwwwwwww.success(ConnectivityBroadcastReceiver.this.f11126Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        });
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        if (Build.VERSION.SDK_INT >= 24) {
            if (this.f11123Wwwwwwwwwwwwwwwwwwwww != null) {
                this.f11126Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().unregisterNetworkCallback(this.f11123Wwwwwwwwwwwwwwwwwwwww);
                this.f11123Wwwwwwwwwwwwwwwwwwwww = null;
                return;
            }
            return;
        }
        try {
            this.f11127Wwwwwwwwwwwwwwwwwwwwwwwww.unregisterReceiver(this);
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f11125Wwwwwwwwwwwwwwwwwwwwwww = eventSink;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f11123Wwwwwwwwwwwwwwwwwwwww = new ConnectivityManager.NetworkCallback() { // from class: dev.fluttercommunity.plus.connectivity.ConnectivityBroadcastReceiver.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    ConnectivityBroadcastReceiver.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network) {
                    ConnectivityBroadcastReceiver.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("none");
                }
            };
            this.f11126Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().registerDefaultNetworkCallback(this.f11123Wwwwwwwwwwwwwwwwwwwww);
            return;
        }
        this.f11127Wwwwwwwwwwwwwwwwwwwwwwwww.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        EventChannel.EventSink eventSink = this.f11125Wwwwwwwwwwwwwwwwwwwwwww;
        if (eventSink != null) {
            eventSink.success(this.f11126Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }
}
