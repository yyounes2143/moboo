package com.appsflyer.internal;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.net.MalformedURLException;
import java.net.URL;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1uSDK extends AFe1fSDK<String> {
    private final AFh1gSDK component2;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AFf1uSDK(@androidx.annotation.NonNull com.appsflyer.internal.AFh1gSDK r8, @androidx.annotation.NonNull com.appsflyer.internal.AFd1zSDK r9) {
        /*
            r7 = this;
            com.appsflyer.internal.AFe1pSDK r0 = r8.hashCode
            if (r0 == 0) goto L6
        L4:
            r2 = r0
            goto L9
        L6:
            com.appsflyer.internal.AFe1pSDK r0 = com.appsflyer.internal.AFe1pSDK.CACHED_EVENT
            goto L4
        L9:
            r0 = 1
            com.appsflyer.internal.AFe1pSDK[] r3 = new com.appsflyer.internal.AFe1pSDK[r0]
            com.appsflyer.internal.AFe1pSDK r0 = com.appsflyer.internal.AFe1pSDK.RC_CDN
            r1 = 0
            r3[r1] = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r8.component3
            r0.append(r1)
            java.lang.String r1 = "-"
            r0.append(r1)
            java.lang.String r1 = getRevenue(r8)
            r0.append(r1)
            java.lang.String r5 = r0.toString()
            java.lang.String r6 = r8.component3
            r1 = r7
            r4 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            r1.component2 = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1uSDK.<init>(com.appsflyer.internal.AFh1gSDK, com.appsflyer.internal.AFd1zSDK):void");
    }

    private boolean copy() {
        boolean z;
        boolean z2;
        ResponseNetwork responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (this.getMonetizationNetwork == AFe1uSDK.FAILURE && responseNetwork != null && responseNetwork.getStatusCode() / 500 == 1) {
            z = true;
        } else {
            z = false;
        }
        AFe1pSDK aFe1pSDK = this.getRevenue;
        if (aFe1pSDK != AFe1pSDK.CONVERSION && aFe1pSDK != AFe1pSDK.ATTR) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    private boolean equals() {
        ResponseNetwork responseNetwork;
        AFe1pSDK aFe1pSDK = this.component2.hashCode;
        if (aFe1pSDK == null) {
            aFe1pSDK = AFe1pSDK.CACHED_EVENT;
        }
        if (aFe1pSDK != AFe1pSDK.ARS_VALIDATE || (responseNetwork = ((AFe1fSDK) this).areAllFieldsValid) == null || responseNetwork.getStatusCode() != 424) {
            return false;
        }
        return true;
    }

    private static String getRevenue(AFh1gSDK aFh1gSDK) {
        try {
            return new URL(aFh1gSDK.component2).getHost();
        } catch (MalformedURLException unused) {
            return "";
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final AFd1hSDK<String> AFAdRevenueData(@NonNull String str) {
        String encodeToString = Base64.encodeToString(this.component2.getMonetizationNetwork(), 2);
        AFLogger.afInfoLog("cached data: ".concat(String.valueOf(encodeToString)));
        this.component3.getRevenue(this.component2.component2, encodeToString);
        return ((AFe1fSDK) this).component4.getRevenue(this.component2);
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AppsFlyerRequestListener component2() {
        return this.component2.getCurrencyIso4217Code;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        if (!super.getMonetizationNetwork() && !equals() && !copy()) {
            return false;
        }
        return true;
    }
}
