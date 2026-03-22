package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1cSDK implements AFb1hSDK {
    @NotNull
    private final AFc1eSDK AFAdRevenueData;
    @NotNull
    private final AFf1eSDK getCurrencyIso4217Code;
    @NotNull
    private final AFc1hSDK getMonetizationNetwork;

    public AFb1cSDK(@NotNull AFc1eSDK aFc1eSDK, @NotNull AFc1hSDK aFc1hSDK, @NotNull AFf1eSDK aFf1eSDK) {
        this.AFAdRevenueData = aFc1eSDK;
        this.getMonetizationNetwork = aFc1hSDK;
        this.getCurrencyIso4217Code = aFf1eSDK;
    }

    @Override // com.appsflyer.internal.AFb1hSDK
    public final boolean AFAdRevenueData() {
        if (!this.getCurrencyIso4217Code.getCurrencyIso4217Code() && !this.AFAdRevenueData.getMediationNetwork() && AFj1kSDK.getMediationNetwork(this.getMonetizationNetwork.getMonetizationNetwork) && AFj1kSDK.getMonetizationNetwork(this.getMonetizationNetwork.getMonetizationNetwork)) {
            return true;
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFb1hSDK
    public final void getMonetizationNetwork() {
        Context context = this.getMonetizationNetwork.getMonetizationNetwork;
        if (context != null) {
            try {
                AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        AFb1cSDK.getMonetizationNetwork(AFb1cSDK.this, (AppSetIdInfo) obj);
                    }
                });
            } catch (Throwable th) {
                AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.APP_SET_ID, "Error while trying to  fetch App set ID", th, false, false, false, false, 120, null);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMonetizationNetwork(AFb1cSDK aFb1cSDK, AppSetIdInfo appSetIdInfo) {
        aFb1cSDK.AFAdRevenueData.copydefault = new AFb1gSDK(appSetIdInfo.getScope(), appSetIdInfo.getId());
    }
}
