package com.appsflyer.internal;

import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1gSDK extends AFh1mSDK {
    @Nullable
    public final AFe1pSDK hashCode;

    @Deprecated
    public AFh1gSDK() {
        this.hashCode = null;
    }

    @Override // com.appsflyer.internal.AFh1mSDK
    public final AFe1pSDK AFAdRevenueData() {
        AFe1pSDK aFe1pSDK = this.hashCode;
        if (aFe1pSDK != null) {
            return aFe1pSDK;
        }
        return AFe1pSDK.CACHED_EVENT;
    }

    public AFh1gSDK(String str, byte[] bArr, String str2, @Nullable AFe1pSDK aFe1pSDK, @Nullable Map<String, String> map) {
        super(null, str, Boolean.FALSE);
        this.component3 = str2;
        getMediationNetwork(bArr);
        this.hashCode = aFe1pSDK;
        if (map != null) {
            this.getMediationNetwork.putAll(map);
        }
    }
}
