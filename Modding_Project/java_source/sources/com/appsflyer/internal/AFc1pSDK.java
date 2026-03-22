package com.appsflyer.internal;

import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFc1pSDK implements AFc1qSDK {
    @NotNull
    private final Lazy getMediationNetwork = LazyKt.lazy(new Function0<SharedPreferences>() { // from class: com.appsflyer.internal.AFc1pSDK.4
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: m_ */
        public final SharedPreferences invoke() {
            return (SharedPreferences) AFc1pSDK.this.getMonetizationNetwork.getMonetizationNetwork.invoke();
        }
    });
    @NotNull
    private final AFc1gSDK<SharedPreferences> getMonetizationNetwork;

    public AFc1pSDK(@NotNull AFc1gSDK<SharedPreferences> aFc1gSDK) {
        this.getMonetizationNetwork = aFc1gSDK;
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final void AFAdRevenueData(@Nullable String str, boolean z) {
        ((SharedPreferences) this.getMediationNetwork.getValue()).edit().putBoolean(str, z).apply();
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    @Nullable
    public final String getMonetizationNetwork(@Nullable String str, @Nullable String str2) {
        try {
            return ((SharedPreferences) this.getMediationNetwork.getValue()).getString(str, str2);
        } catch (ClassCastException e) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PREFERENCES;
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Unexpected data type found for key " + str, e, false, false, false, false, 120, null);
            return str2;
        }
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final void getRevenue(@Nullable String str, @Nullable String str2) {
        ((SharedPreferences) this.getMediationNetwork.getValue()).edit().putString(str, str2).apply();
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final boolean getMediationNetwork(@Nullable String str, boolean z) {
        try {
            return ((SharedPreferences) this.getMediationNetwork.getValue()).getBoolean(str, z);
        } catch (ClassCastException e) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PREFERENCES;
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Unexpected data type found for key " + str, e, false, false, false, false, 120, null);
            return z;
        }
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final void AFAdRevenueData(@Nullable String str, long j) {
        ((SharedPreferences) this.getMediationNetwork.getValue()).edit().putLong(str, j).apply();
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final int getRevenue(@Nullable String str, int i) {
        try {
            return ((SharedPreferences) this.getMediationNetwork.getValue()).getInt(str, i);
        } catch (ClassCastException e) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PREFERENCES;
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Unexpected data type found for key " + str, e, false, false, false, false, 120, null);
            return i;
        }
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final long getMonetizationNetwork(@Nullable String str, long j) {
        try {
            return ((SharedPreferences) this.getMediationNetwork.getValue()).getLong(str, j);
        } catch (ClassCastException e) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PREFERENCES;
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Unexpected data type found for key " + str, e, false, false, false, false, 120, null);
            return j;
        }
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final void AFAdRevenueData(@Nullable String str) {
        ((SharedPreferences) this.getMediationNetwork.getValue()).edit().remove(str).apply();
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final void getMediationNetwork(@Nullable String str, int i) {
        ((SharedPreferences) this.getMediationNetwork.getValue()).edit().putInt(str, i).apply();
    }

    @Override // com.appsflyer.internal.AFc1qSDK
    public final boolean getMonetizationNetwork(@Nullable String str) {
        return ((SharedPreferences) this.getMediationNetwork.getValue()).contains(str);
    }
}
