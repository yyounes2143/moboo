package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFj1wSDK extends AFi1cSDK {
    private final AFd1zSDK AFAdRevenueData;
    private final AFj1vSDK getCurrencyIso4217Code;

    public AFj1wSDK(Runnable runnable, AFd1zSDK aFd1zSDK, AFj1vSDK aFj1vSDK) {
        super("store", "huawei", aFd1zSDK.AFAdRevenueData(), runnable);
        this.AFAdRevenueData = aFd1zSDK;
        this.getCurrencyIso4217Code = aFj1vSDK;
    }

    private boolean getCurrencyIso4217Code(Context context) {
        if (!getRevenue()) {
            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by counter.");
            return false;
        } else if (!this.getCurrencyIso4217Code.getCurrencyIso4217Code(context)) {
            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by missing content provider.");
            return false;
        } else if (!this.getCurrencyIso4217Code.getRevenue(context)) {
            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by invalid content provider.");
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0104, code lost:
        if (0 == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0107, code lost:
        getMediationNetwork();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x010a, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void getRevenue(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1wSDK.getRevenue(android.content.Context):void");
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    public final void getMonetizationNetwork(final Context context) {
        if (!getCurrencyIso4217Code(context)) {
            return;
        }
        this.AFAdRevenueData.getMonetizationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.Kkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                AFj1wSDK.this.getRevenue(context);
            }
        });
    }
}
