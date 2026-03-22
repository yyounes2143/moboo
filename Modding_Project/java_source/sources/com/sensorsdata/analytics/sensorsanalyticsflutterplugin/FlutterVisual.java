package com.sensorsdata.analytics.sensorsanalyticsflutterplugin;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterVisual {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile FlutterVisual f10040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f10042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f10041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DynamicReceiver f10043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DynamicReceiver();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class DynamicReceiver extends BroadcastReceiver {
        public DynamicReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (FlutterVisual.this.f10042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && intent != null && intent.getStringExtra("visualizedChanged") != null) {
                if (intent.getStringExtra("visualizedChanged").equals("visualizedConnectionStatusChanged")) {
                    SALog.i("SA.FlutterVisual", "visualizedConnectionStatusChanged");
                    FlutterVisual.this.f10042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("visualizedConnectionStatusChanged", null);
                } else if (intent.getStringExtra("visualizedChanged").equals("visualizedPropertiesConfigChanged")) {
                    SALog.i("SA.FlutterVisual", "visualizedPropertiesConfigChanged");
                    FlutterVisual.this.f10042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("visualizedPropertiesConfigChanged", null);
                }
            }
        }
    }

    public static FlutterVisual Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f10040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (FlutterVisual.class) {
                try {
                    if (f10040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f10040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FlutterVisual();
                    }
                } finally {
                }
            }
        }
        return f10040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        SALog.i("SA.FlutterVisual", "unRegisterBroadcast");
        try {
            context.unregisterReceiver(this.f10043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        this.f10041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel methodChannel) {
        this.f10042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        SALog.i("SA.FlutterVisual", "registerBroadcast:" + this.f10041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (!this.f10041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                SALog.i("SA.FlutterVisual", "registerBroadcast");
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.FLUTTER_VISUALIZED");
                context.registerReceiver(this.f10043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, intentFilter);
                this.f10041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }
}
