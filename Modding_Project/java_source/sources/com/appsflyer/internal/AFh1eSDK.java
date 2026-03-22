package com.appsflyer.internal;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1eSDK extends AFh1mSDK {
    @Override // com.appsflyer.internal.AFh1mSDK
    public final AFe1pSDK AFAdRevenueData() {
        if (this.component4 == 1) {
            return AFe1pSDK.CONVERSION;
        }
        return AFe1pSDK.LAUNCH;
    }

    @Override // com.appsflyer.internal.AFh1mSDK
    public final boolean areAllFieldsValid() {
        return true;
    }
}
