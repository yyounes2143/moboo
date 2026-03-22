package com.applovin.impl;

import com.applovin.sdk.AppLovinSdkConfiguration;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkConfiguration.ConsentFlowUserGeography f3130a;

    public g0(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography) {
        this.f3130a = consentFlowUserGeography;
    }

    public boolean a(Object obj) {
        return obj instanceof g0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (!g0Var.a(this)) {
            return false;
        }
        AppLovinSdkConfiguration.ConsentFlowUserGeography a2 = a();
        AppLovinSdkConfiguration.ConsentFlowUserGeography a3 = g0Var.a();
        if (a2 != null ? a2.equals(a3) : a3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        AppLovinSdkConfiguration.ConsentFlowUserGeography a2 = a();
        if (a2 == null) {
            hashCode = 43;
        } else {
            hashCode = a2.hashCode();
        }
        return hashCode + 59;
    }

    public String toString() {
        return "CmpAdapterParameters(debugUserGeography=" + a() + ")";
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography a() {
        return this.f3130a;
    }
}
