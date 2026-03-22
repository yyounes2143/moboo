package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFe1kSDK extends AFe1hSDK {
    public AFe1kSDK(@NonNull Map<String, Object> map, @Nullable PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback, @NonNull AFd1zSDK aFd1zSDK) {
        super(AFe1pSDK.ARS_VALIDATE, new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, aFd1zSDK, map, purchaseValidationCallback);
        this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
    }

    @Override // com.appsflyer.internal.AFe1hSDK, com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        ResponseNetwork responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (responseNetwork != null && responseNetwork.getStatusCode() == 424) {
            return true;
        }
        return super.getMonetizationNetwork();
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    @Nullable
    public final AFd1hSDK<String> getRevenue(@NonNull Map<String, Object> map, @NonNull String str, @Nullable String str2) {
        return ((AFe1fSDK) this).component4.AFAdRevenueData(map, str, str2);
    }
}
