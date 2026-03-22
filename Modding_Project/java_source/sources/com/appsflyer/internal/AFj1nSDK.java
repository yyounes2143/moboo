package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFj1nSDK implements SensorEventListener {
    @NonNull
    private final String AFAdRevenueData;
    @NonNull
    private final Executor component3;
    private long component4;
    @NonNull
    private final String getCurrencyIso4217Code;
    private double getMediationNetwork;
    private final int getMonetizationNetwork;
    private final int getRevenue;
    private final float[][] component2 = new float[2];
    private final long[] areAllFieldsValid = new long[2];

    public AFj1nSDK(Sensor sensor, @NonNull ExecutorService executorService) {
        int type = sensor.getType();
        this.getMonetizationNetwork = type;
        String name = sensor.getName();
        name = name == null ? "" : name;
        this.getCurrencyIso4217Code = name;
        String vendor = sensor.getVendor();
        String str = vendor != null ? vendor : "";
        this.AFAdRevenueData = str;
        this.getRevenue = ((((type + 31) * 31) + name.hashCode()) * 31) + str.hashCode();
        this.component3 = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: F_ */
    public void G_(SensorEvent sensorEvent) {
        long j = sensorEvent.timestamp;
        float[] fArr = sensorEvent.values;
        long currentTimeMillis = System.currentTimeMillis();
        float[][] fArr2 = this.component2;
        float[] fArr3 = fArr2[0];
        if (fArr3 == null) {
            fArr2[0] = Arrays.copyOf(fArr, fArr.length);
            this.areAllFieldsValid[0] = currentTimeMillis;
            return;
        }
        float[] fArr4 = fArr2[1];
        if (fArr4 == null) {
            float[] copyOf = Arrays.copyOf(fArr, fArr.length);
            this.component2[1] = copyOf;
            this.areAllFieldsValid[1] = currentTimeMillis;
            this.getMediationNetwork = getCurrencyIso4217Code(fArr3, copyOf);
        } else if (50000000 <= j - this.component4) {
            this.component4 = j;
            if (Arrays.equals(fArr4, fArr)) {
                this.areAllFieldsValid[1] = currentTimeMillis;
                return;
            }
            double currencyIso4217Code = getCurrencyIso4217Code(fArr3, fArr);
            if (currencyIso4217Code > this.getMediationNetwork) {
                this.component2[1] = Arrays.copyOf(fArr, fArr.length);
                this.areAllFieldsValid[1] = currentTimeMillis;
                this.getMediationNetwork = currencyIso4217Code;
            }
        }
    }

    private static double getCurrencyIso4217Code(@NonNull float[] fArr, @NonNull float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        for (int i = 0; i < min; i++) {
            d += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(d);
    }

    @NonNull
    private static List<Float> getMediationNetwork(@NonNull float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    @NonNull
    private Map<String, Object> getMonetizationNetwork() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.getMonetizationNetwork));
        concurrentHashMap.put("sN", this.getCurrencyIso4217Code);
        concurrentHashMap.put("sV", this.AFAdRevenueData);
        float[] fArr = this.component2[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", getMediationNetwork(fArr));
        }
        float[] fArr2 = this.component2[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", getMediationNetwork(fArr2));
        }
        return concurrentHashMap;
    }

    private boolean getRevenue(int i, @NonNull String str, @NonNull String str2) {
        if (this.getMonetizationNetwork == i && this.getCurrencyIso4217Code.equals(str) && this.AFAdRevenueData.equals(str2)) {
            return true;
        }
        return false;
    }

    public final void AFAdRevenueData(@NonNull Map<AFj1nSDK, Map<String, Object>> map, boolean z) {
        if (AFAdRevenueData()) {
            map.put(this, getMonetizationNetwork());
            if (z) {
                int length = this.component2.length;
                for (int i = 0; i < length; i++) {
                    this.component2[i] = null;
                }
                int length2 = this.areAllFieldsValid.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.areAllFieldsValid[i2] = 0;
                }
                this.getMediationNetwork = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                this.component4 = 0L;
            }
        } else if (!map.containsKey(this)) {
            map.put(this, getMonetizationNetwork());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AFj1nSDK) {
            AFj1nSDK aFj1nSDK = (AFj1nSDK) obj;
            return getRevenue(aFj1nSDK.getMonetizationNetwork, aFj1nSDK.getCurrencyIso4217Code, aFj1nSDK.AFAdRevenueData);
        }
        return false;
    }

    public final int hashCode() {
        return this.getRevenue;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.component3.execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFj1nSDK.this.G_(sensorEvent);
                }
            });
        } else {
            G_(sensorEvent);
        }
    }

    private boolean AFAdRevenueData() {
        return this.component2[0] != null;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }
}
