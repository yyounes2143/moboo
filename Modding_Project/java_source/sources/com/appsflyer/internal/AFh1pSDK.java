package com.appsflyer.internal;

import android.content.Intent;
import androidx.annotation.WorkerThread;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AFh1pSDK {
    void AFAdRevenueData();

    void getCurrencyIso4217Code(@NotNull AFh1mSDK aFh1mSDK);

    @WorkerThread
    void getMediationNetwork(@NotNull AFh1mSDK aFh1mSDK);

    @WorkerThread
    void getMonetizationNetwork(@NotNull AFf1rSDK aFf1rSDK, @NotNull Function0<Unit> function0);

    @WorkerThread
    void getMonetizationNetwork(@NotNull AFh1mSDK aFh1mSDK);

    boolean getMonetizationNetwork();

    boolean getRevenue();

    void u_(@NotNull Intent intent, @NotNull AFa1mSDK aFa1mSDK);
}
