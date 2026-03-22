package com.appsflyer.internal;

import androidx.annotation.WorkerThread;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AFc1tSDK {
    @WorkerThread
    @NotNull
    List<AFc1uSDK> getCurrencyIso4217Code();

    @WorkerThread
    @Nullable
    String getMediationNetwork(@NotNull AFc1uSDK aFc1uSDK);

    void getMediationNetwork();

    @WorkerThread
    void getRevenue();

    @WorkerThread
    boolean getRevenue(@Nullable String str);
}
