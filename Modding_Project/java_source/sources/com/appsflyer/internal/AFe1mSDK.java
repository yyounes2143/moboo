package com.appsflyer.internal;

import android.net.TrafficStats;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AFe1mSDK<Result> implements Comparable<AFe1mSDK<?>>, Callable<AFe1uSDK> {
    private static final AtomicInteger component3 = new AtomicInteger();
    @NonNull
    public final Set<AFe1pSDK> AFAdRevenueData;
    private long areAllFieldsValid;
    @Nullable
    private Throwable component1;
    private final int component2;
    private final String component4;
    private boolean copy;
    @NonNull
    public final Set<AFe1pSDK> getCurrencyIso4217Code;
    public volatile int getMediationNetwork;
    @Nullable
    public AFe1uSDK getMonetizationNetwork;
    @NonNull
    public final AFe1pSDK getRevenue;

    public AFe1mSDK(@NonNull AFe1pSDK aFe1pSDK, @NonNull AFe1pSDK[] aFe1pSDKArr, @Nullable String str) {
        HashSet hashSet = new HashSet();
        this.AFAdRevenueData = hashSet;
        this.getCurrencyIso4217Code = new HashSet();
        int incrementAndGet = component3.incrementAndGet();
        this.component2 = incrementAndGet;
        this.copy = false;
        this.getMediationNetwork = 0;
        this.getRevenue = aFe1pSDK;
        Collections.addAll(hashSet, aFe1pSDKArr);
        if (str != null) {
            this.component4 = str;
        } else {
            this.component4 = String.valueOf(incrementAndGet);
        }
    }

    public abstract long AFAdRevenueData();

    @WorkerThread
    public void AFAdRevenueData(Throwable th) {
    }

    public final boolean areAllFieldsValid() {
        return this.copy;
    }

    @Nullable
    public final Throwable component1() {
        return this.component1;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: component4 */
    public final AFe1uSDK call() throws Exception {
        TrafficStats.setThreadStatsTag(82339054);
        this.getMonetizationNetwork = null;
        this.component1 = null;
        long currentTimeMillis = System.currentTimeMillis();
        this.getMediationNetwork++;
        try {
            AFe1uSDK revenue = getRevenue();
            this.getMonetizationNetwork = revenue;
            return revenue;
        } finally {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AFe1mSDK aFe1mSDK = (AFe1mSDK) obj;
        if (this.getRevenue != aFe1mSDK.getRevenue) {
            return false;
        }
        return this.component4.equals(aFe1mSDK.component4);
    }

    @CallSuper
    @WorkerThread
    public void getMediationNetwork() {
        this.copy = true;
    }

    @WorkerThread
    public abstract boolean getMonetizationNetwork();

    @Override // java.lang.Comparable
    /* renamed from: getRevenue */
    public final int compareTo(AFe1mSDK<?> aFe1mSDK) {
        int i = this.getRevenue.unregisterClient - aFe1mSDK.getRevenue.unregisterClient;
        if (i == 0) {
            if (this.component4.equals(aFe1mSDK.component4)) {
                return 0;
            }
            return this.component2 - aFe1mSDK.component2;
        }
        return i;
    }

    @NonNull
    @WorkerThread
    public abstract AFe1uSDK getRevenue() throws Exception;

    public final int hashCode() {
        return (this.getRevenue.hashCode() * 31) + this.component4.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.getRevenue);
        sb.append("-");
        sb.append(this.component4);
        String obj = sb.toString();
        if (!String.valueOf(this.component2).equals(this.component4)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(obj);
            sb2.append("-");
            sb2.append(this.component2);
            return sb2.toString();
        }
        return obj;
    }

    @WorkerThread
    public void getCurrencyIso4217Code() {
    }
}
