package com.appsflyer.internal;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AFd1aSDK {
    public final long getMediationNetwork;

    public AFd1aSDK(long j) {
        this.getMediationNetwork = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.getMediationNetwork == ((AFd1aSDK) obj).getMediationNetwork) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j = this.getMediationNetwork;
        return (int) (j ^ (j >>> 32));
    }
}
