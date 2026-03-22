package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AFd1xSDK {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface AFa1vSDK {
        void onConfigurationChanged(boolean z);
    }

    void AFAdRevenueData();

    void getMonetizationNetwork();

    void getMonetizationNetwork(@Nullable AFa1vSDK aFa1vSDK);

    void getMonetizationNetwork(@NonNull Throwable th, @NonNull String str);
}
