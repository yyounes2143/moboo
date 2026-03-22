package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k4 implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final int f3171a;
    private final float b;
    private final b0 c;
    private final Sensor d;
    private final Sensor e;
    private final com.applovin.impl.sdk.k f;
    private float[] g;
    private float h;

    public k4(com.applovin.impl.sdk.k kVar) {
        this.f = kVar;
        b0 b0Var = new b0(kVar);
        this.c = b0Var;
        this.d = b0Var.a(9);
        this.e = b0Var.a(4);
        this.f3171a = ((Integer) kVar.a(l4.X3)).intValue();
        this.b = ((Float) kVar.a(l4.W3)).floatValue();
    }

    private void a(Sensor sensor) {
        try {
            this.c.b(this, sensor, (int) TimeUnit.MILLISECONDS.toMicros(this.f3171a));
        } catch (Throwable th) {
            this.f.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f.O().a("SensorDataManager", "Unable to register sensor listener", th);
            }
        }
    }

    public float b() {
        return this.h;
    }

    public void c() {
        if (Boolean.parseBoolean(this.f.n0().getExtraParameters().get("disable_sensor_data_collection"))) {
            return;
        }
        this.c.b(this);
        if (((Boolean) this.f.o0().a(l4.U3)).booleanValue()) {
            a(this.d);
        }
        if (((Boolean) this.f.o0().a(l4.V3)).booleanValue()) {
            a(this.e);
        }
        AppLovinBroadcastManager.unregisterReceiver(this);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.c.b(this);
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.g = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() == 4) {
            float f = this.h * this.b;
            this.h = f;
            this.h = f + Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
        }
    }

    public float a() {
        float[] fArr = this.g;
        if (fArr == null) {
            return 0.0f;
        }
        return (float) Math.toDegrees(Math.acos(fArr[2] / 9.81f));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }
}
