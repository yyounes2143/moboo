package com.appsflyer.internal;

import android.annotation.SuppressLint;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1tSDK extends AFh1mSDK {
    @SuppressLint({"VisibleForTests"})
    public AFg1tSDK() {
        super("Register", null, Boolean.FALSE);
    }

    @Override // com.appsflyer.internal.AFh1mSDK
    public final AFe1pSDK AFAdRevenueData() {
        return AFe1pSDK.REGISTER;
    }

    @Override // com.appsflyer.internal.AFh1mSDK
    public final boolean getMediationNetwork() {
        return false;
    }
}
