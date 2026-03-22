package com.appsflyer.internal;

import com.appsflyer.PurchaseHandler;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AFe1hSDK extends AFe1jSDK {
    @Nullable
    private final PurchaseHandler.PurchaseValidationCallback component2;

    public AFe1hSDK(@NotNull AFe1pSDK aFe1pSDK, @NotNull AFe1pSDK[] aFe1pSDKArr, @NotNull AFd1zSDK aFd1zSDK, @NotNull Map<String, ? extends Object> map, @Nullable PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        super(aFe1pSDK, aFe1pSDKArr, aFd1zSDK, null, map);
        this.component2 = purchaseValidationCallback;
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    public final boolean component3() {
        return true;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback;
        PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback2;
        super.getCurrencyIso4217Code();
        Throwable component1 = component1();
        if (component1 != null && (purchaseValidationCallback2 = this.component2) != null) {
            purchaseValidationCallback2.onFailure(component1);
        }
        ResponseNetwork<String> responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (responseNetwork == null || (purchaseValidationCallback = this.component2) == null) {
            return;
        }
        purchaseValidationCallback.onResponse(responseNetwork);
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    @Nullable
    public final String getMonetizationNetwork(@NotNull Map<String, Object> map) {
        if (map.containsKey("connector_version")) {
            Object remove = map.remove("connector_version");
            if (remove instanceof String) {
                return (String) remove;
            }
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public boolean getMonetizationNetwork() {
        ResponseNetwork responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (responseNetwork == null || responseNetwork.getStatusCode() != 503) {
            return super.getMonetizationNetwork();
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFe1jSDK
    @Nullable
    public final String getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        if (map.containsKey("billing_library_version")) {
            Object remove = map.remove("billing_library_version");
            if (remove instanceof String) {
                return (String) remove;
            }
        }
        return null;
    }
}
