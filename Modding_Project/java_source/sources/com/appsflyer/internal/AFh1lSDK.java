package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFAdRevenueData;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1lSDK extends AFh1mSDK {
    @Nullable
    public final Map<String, Object> equals;
    @NonNull
    public final AFAdRevenueData toString;

    public AFh1lSDK(@NonNull AFAdRevenueData aFAdRevenueData, @Nullable Map<String, Object> map) {
        super("adrevenue_generic", null, Boolean.TRUE);
        this.toString = aFAdRevenueData;
        this.equals = map;
    }

    @Override // com.appsflyer.internal.AFh1mSDK
    public final AFe1pSDK AFAdRevenueData() {
        return AFe1pSDK.ADREVENUE;
    }
}
