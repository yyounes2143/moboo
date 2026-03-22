package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFj1pSDK implements AFj1lSDK {
    private static final BitSet component3;
    boolean AFAdRevenueData;
    private final Map<AFj1nSDK, Map<String, Object>> areAllFieldsValid;
    private final SensorManager component1;
    private final ExecutorService component2;
    private final Map<AFj1nSDK, AFj1nSDK> component4;
    private boolean equals;
    final Runnable getCurrencyIso4217Code;
    final Runnable getMediationNetwork;
    final Object getMonetizationNetwork;
    final Handler getRevenue;
    private final Runnable toString;

    static {
        BitSet bitSet = new BitSet(6);
        component3 = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    @VisibleForTesting
    private AFj1pSDK(@NonNull SensorManager sensorManager, Handler handler, ExecutorService executorService) {
        this.getMonetizationNetwork = new Object();
        BitSet bitSet = component3;
        this.component4 = new HashMap(bitSet.size());
        this.areAllFieldsValid = new ConcurrentHashMap(bitSet.size());
        this.getMediationNetwork = new Runnable() { // from class: com.appsflyer.internal.AFj1pSDK.2
            {
                AFj1pSDK.this = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFj1pSDK.this.getMonetizationNetwork) {
                    AFj1pSDK.this.getRevenue();
                    AFj1pSDK aFj1pSDK = AFj1pSDK.this;
                    aFj1pSDK.getRevenue.postDelayed(aFj1pSDK.getCurrencyIso4217Code, 150L);
                    AFj1pSDK.this.AFAdRevenueData = true;
                }
            }
        };
        this.getCurrencyIso4217Code = new Runnable() { // from class: com.appsflyer.internal.Wwwww
            @Override // java.lang.Runnable
            public final void run() {
                AFj1pSDK.this.component4();
            }
        };
        this.toString = new Runnable() { // from class: com.appsflyer.internal.AFj1pSDK.5
            {
                AFj1pSDK.this = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFj1pSDK.this.getMonetizationNetwork) {
                    try {
                        AFj1pSDK aFj1pSDK = AFj1pSDK.this;
                        if (aFj1pSDK.AFAdRevenueData) {
                            aFj1pSDK.getRevenue.removeCallbacks(aFj1pSDK.getMediationNetwork);
                            AFj1pSDK aFj1pSDK2 = AFj1pSDK.this;
                            aFj1pSDK2.getRevenue.removeCallbacks(aFj1pSDK2.getCurrencyIso4217Code);
                            AFj1pSDK.this.getCurrencyIso4217Code();
                            AFj1pSDK.this.AFAdRevenueData = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.component1 = sensorManager;
        this.getRevenue = handler;
        this.component2 = executorService;
    }

    @NonNull
    @VisibleForTesting
    private List<Map<String, Object>> areAllFieldsValid() {
        synchronized (this.getMonetizationNetwork) {
            try {
                if (!this.component4.isEmpty() && this.equals) {
                    for (AFj1nSDK aFj1nSDK : this.component4.values()) {
                        aFj1nSDK.AFAdRevenueData(this.areAllFieldsValid, false);
                    }
                }
                if (this.areAllFieldsValid.isEmpty()) {
                    return new CopyOnWriteArrayList(Collections.EMPTY_LIST);
                }
                return new CopyOnWriteArrayList(this.areAllFieldsValid.values());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void component1() {
        try {
            for (Sensor sensor : this.component1.getSensorList(-1)) {
                if (getMonetizationNetwork(sensor.getType())) {
                    AFj1nSDK aFj1nSDK = new AFj1nSDK(sensor, this.component2);
                    if (!this.component4.containsKey(aFj1nSDK)) {
                        this.component4.put(aFj1nSDK, aFj1nSDK);
                    }
                    this.component1.registerListener(this.component4.get(aFj1nSDK), sensor, 1, this.getRevenue);
                }
            }
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("registerListeners error", th);
        }
        this.equals = true;
    }

    public /* synthetic */ void component2() {
        try {
            if (!this.component4.isEmpty()) {
                for (AFj1nSDK aFj1nSDK : this.component4.values()) {
                    this.component1.unregisterListener(aFj1nSDK);
                    aFj1nSDK.AFAdRevenueData(this.areAllFieldsValid, true);
                }
            }
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("error while unregistering listeners", th);
        }
        this.equals = false;
    }

    @NonNull
    @VisibleForTesting
    private List<Map<String, Object>> component3() {
        synchronized (this.getMonetizationNetwork) {
            try {
                for (AFj1nSDK aFj1nSDK : this.component4.values()) {
                    aFj1nSDK.AFAdRevenueData(this.areAllFieldsValid, true);
                }
                if (this.areAllFieldsValid.isEmpty()) {
                    return new CopyOnWriteArrayList(Collections.EMPTY_LIST);
                }
                return new CopyOnWriteArrayList(this.areAllFieldsValid.values());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void component4() {
        synchronized (this.getMonetizationNetwork) {
            this.getRevenue.post(new Wwww(this));
        }
    }

    private static boolean getMonetizationNetwork(int i) {
        return i >= 0 && component3.get(i);
    }

    @Override // com.appsflyer.internal.AFj1lSDK
    public final void AFAdRevenueData() {
        this.getRevenue.post(this.toString);
        this.getRevenue.post(this.getMediationNetwork);
    }

    public final void getCurrencyIso4217Code() {
        this.getRevenue.post(new Wwww(this));
    }

    @Override // com.appsflyer.internal.AFj1lSDK
    @NonNull
    public final Map<String, Object> getMediationNetwork() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        List<Map<String, Object>> areAllFieldsValid = areAllFieldsValid();
        if (!areAllFieldsValid.isEmpty()) {
            concurrentHashMap.put("sensors", areAllFieldsValid);
            return concurrentHashMap;
        }
        List<Map<String, Object>> component32 = component3();
        if (!component32.isEmpty()) {
            concurrentHashMap.put("sensors", component32);
        }
        return concurrentHashMap;
    }

    @VisibleForTesting
    public final void getRevenue() {
        this.getRevenue.post(new Runnable() { // from class: com.appsflyer.internal.Www
            @Override // java.lang.Runnable
            public final void run() {
                AFj1pSDK.this.component1();
            }
        });
    }

    @Override // com.appsflyer.internal.AFj1lSDK
    public final synchronized void getMonetizationNetwork() {
        this.getRevenue.post(this.toString);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AFj1pSDK(@androidx.annotation.NonNull android.content.Context r3, java.util.concurrent.ExecutorService r4) {
        /*
            r2 = this;
            android.content.Context r3 = r3.getApplicationContext()
            java.lang.String r0 = "sensor"
            java.lang.Object r3 = r3.getSystemService(r0)
            android.hardware.SensorManager r3 = (android.hardware.SensorManager) r3
            android.os.HandlerThread r0 = new android.os.HandlerThread
            java.lang.String r1 = "internal"
            r0.<init>(r1)
            r0.start()
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r0 = r0.getLooper()
            r1.<init>(r0)
            r2.<init>(r3, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1pSDK.<init>(android.content.Context, java.util.concurrent.ExecutorService):void");
    }
}
