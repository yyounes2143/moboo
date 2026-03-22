package com.appsflyer.internal;

import androidx.annotation.Nullable;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AFh1mSDK {
    public Map<String, Object> AFAdRevenueData;
    public String areAllFieldsValid;
    public String component1;
    public String component2;
    public String component3;
    public int component4;
    @Nullable
    public String copydefault;
    @Nullable
    public AppsFlyerRequestListener getCurrencyIso4217Code;
    public final Map<String, String> getMediationNetwork;
    @Nullable
    public String getMonetizationNetwork;
    @Nullable
    public Map<String, Object> getRevenue;
    private final boolean hashCode;
    private byte[] toString;

    public AFh1mSDK() {
        this(null, null, null);
    }

    public abstract AFe1pSDK AFAdRevenueData();

    public final AFh1mSDK AFAdRevenueData(Map<String, ?> map) {
        synchronized (map) {
            this.AFAdRevenueData.putAll(map);
        }
        return this;
    }

    public boolean areAllFieldsValid() {
        return false;
    }

    public boolean component1() {
        return true;
    }

    public boolean component4() {
        return true;
    }

    public final boolean getCurrencyIso4217Code() {
        return this.hashCode;
    }

    public boolean getMediationNetwork() {
        return true;
    }

    public final AFh1mSDK getMonetizationNetwork(String str, Object obj) {
        synchronized (this.AFAdRevenueData) {
            this.AFAdRevenueData.put(str, obj);
        }
        return this;
    }

    public final boolean getRevenue() {
        return this.areAllFieldsValid == null && this.component3 == null;
    }

    public AFh1mSDK(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
        this.AFAdRevenueData = new HashMap();
        this.getMediationNetwork = new HashMap();
        this.areAllFieldsValid = str;
        this.component2 = str2;
        this.hashCode = bool != null ? bool.booleanValue() : true;
    }

    public static boolean getRevenue(double d) {
        if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || d >= 1.0d) {
            return false;
        }
        if (d == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return true;
        }
        int i = (int) (1.0d / d);
        if (i + 1 > 0) {
            return ((int) ((Math.random() * ((double) i)) + 1.0d)) != i;
        }
        throw new IllegalArgumentException("Unsupported max value");
    }

    public final AFh1mSDK getMediationNetwork(byte[] bArr) {
        this.toString = bArr;
        return this;
    }

    public final AFh1mSDK AFAdRevenueData(int i) {
        this.component4 = i;
        synchronized (this.AFAdRevenueData) {
            try {
                if (this.AFAdRevenueData.containsKey("counter")) {
                    this.AFAdRevenueData.put("counter", Integer.toString(i));
                }
                if (this.AFAdRevenueData.containsKey("launch_counter")) {
                    this.AFAdRevenueData.put("launch_counter", Integer.toString(i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    public final byte[] getMonetizationNetwork() {
        return this.toString;
    }
}
