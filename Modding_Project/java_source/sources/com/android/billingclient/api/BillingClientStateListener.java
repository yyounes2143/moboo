package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface BillingClientStateListener {
    void onBillingServiceDisconnected();

    void onBillingSetupFinished(@NonNull BillingResult billingResult);
}
