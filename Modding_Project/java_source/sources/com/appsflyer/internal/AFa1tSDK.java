package com.appsflyer.internal;

import com.appsflyer.internal.AFe1oSDK;
import com.appsflyer.internal.AFe1rSDK;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFa1tSDK implements Runnable {
    @NotNull
    private final AFh1mSDK getCurrencyIso4217Code;
    @NotNull
    private final AFd1zSDK getMonetizationNetwork;
    @Nullable
    private final Map<String, Object> getRevenue;

    public AFa1tSDK(@NotNull AFd1zSDK aFd1zSDK, @NotNull AFh1mSDK aFh1mSDK, @Nullable Map<String, ? extends Object> map) {
        this.getMonetizationNetwork = aFd1zSDK;
        this.getCurrencyIso4217Code = aFh1mSDK;
        this.getRevenue = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AFf1rSDK aFf1rSDK;
        if (this.getCurrencyIso4217Code.getRevenue()) {
            AFf1rSDK aFf1rSDK2 = new AFf1rSDK(this.getCurrencyIso4217Code, this.getMonetizationNetwork);
            aFf1rSDK2.hashCode = this.getRevenue;
            aFf1rSDK = aFf1rSDK2;
        } else if (this.getCurrencyIso4217Code instanceof AFh1lSDK) {
            aFf1rSDK = new AFf1tSDK((AFh1lSDK) this.getCurrencyIso4217Code, this.getMonetizationNetwork);
        } else {
            aFf1rSDK = new AFf1sSDK(this.getCurrencyIso4217Code, this.getMonetizationNetwork);
        }
        AFe1oSDK copydefault = this.getMonetizationNetwork.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1rSDK));
        this.getMonetizationNetwork.AFKeystoreWrapper();
        if (AFe1vSDK.getMediationNetwork()) {
            AFe1sSDK currencyIso4217Code = this.getMonetizationNetwork.getCurrencyIso4217Code();
            AFh1mSDK aFh1mSDK = this.getCurrencyIso4217Code;
            if (AFj1kSDK.getRevenue(currencyIso4217Code.AFAdRevenueData.getMonetizationNetwork)) {
                AFe1rSDK.AFa1ySDK aFa1ySDK = AFe1rSDK.AFa1ySDK;
                AFe1rSDK mediationNetwork = AFe1rSDK.AFa1ySDK.getMediationNetwork(aFh1mSDK);
                if (mediationNetwork != null) {
                    currencyIso4217Code.AFAdRevenueData(mediationNetwork, new Function1<AFe1uSDK, Unit>() { // from class: com.appsflyer.internal.AFe1sSDK.4
                        @Override // kotlin.jvm.functions.Function1
                        public final /* synthetic */ Unit invoke(AFe1uSDK aFe1uSDK) {
                            AFAdRevenueData(aFe1uSDK);
                            return Unit.INSTANCE;
                        }

                        public final void AFAdRevenueData(@NotNull AFe1uSDK aFe1uSDK) {
                        }
                    });
                }
            }
        }
    }
}
