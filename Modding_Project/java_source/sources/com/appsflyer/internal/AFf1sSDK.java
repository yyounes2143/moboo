package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.attribution.AppsFlyerRequestListener;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AFf1sSDK extends AFe1fSDK<String> {
    private static final AFe1pSDK[] registerClient = {AFe1pSDK.DLSDK, AFe1pSDK.ONELINK, AFe1pSDK.REGISTER};
    private final AFf1fSDK AFInAppEventType;
    private final AFc1hSDK AFKeystoreWrapper;
    protected final AFc1qSDK component2;
    private final AFh1mSDK copy;
    private final AFe1vSDK copydefault;
    @NonNull
    private final AFc1oSDK equals;
    private final AFf1kSDK hashCode;
    protected final AFg1nSDK toString;

    public AFf1sSDK(@NonNull AFh1mSDK aFh1mSDK, @NonNull AFd1zSDK aFd1zSDK) {
        this(aFh1mSDK, aFd1zSDK, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009a A[Catch: all -> 0x00ee, TryCatch #6 {all -> 0x00ee, blocks: (B:32:0x0086, B:36:0x00c8, B:35:0x009a), top: B:88:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d4 A[Catch: all -> 0x00db, Exception -> 0x00de, NullPointerException -> 0x00e3, TRY_ENTER, TryCatch #10 {NullPointerException -> 0x00e3, Exception -> 0x00de, all -> 0x00db, blocks: (B:40:0x00d4, B:47:0x00e6, B:48:0x00eb), top: B:98:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e6 A[Catch: all -> 0x00db, Exception -> 0x00de, NullPointerException -> 0x00e3, TryCatch #10 {NullPointerException -> 0x00e3, Exception -> 0x00de, all -> 0x00db, blocks: (B:40:0x00d4, B:47:0x00e6, B:48:0x00eb), top: B:98:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0164  */
    @Override // com.appsflyer.internal.AFe1fSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFd1hSDK<java.lang.String> AFAdRevenueData(@androidx.annotation.NonNull java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1sSDK.AFAdRevenueData(java.lang.String):com.appsflyer.internal.AFd1hSDK");
    }

    public void component1(AFh1mSDK aFh1mSDK) {
        this.toString.getMediationNetwork(aFh1mSDK);
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AppsFlyerRequestListener component2() {
        return this.copy.getCurrencyIso4217Code;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public boolean copydefault() {
        return true;
    }

    public void getCurrencyIso4217Code(AFh1mSDK aFh1mSDK) {
        this.toString.AFAdRevenueData(aFh1mSDK);
    }

    public void getMediationNetwork(AFh1mSDK aFh1mSDK) {
        this.toString.getMonetizationNetwork(aFh1mSDK.AFAdRevenueData);
    }

    public void getMonetizationNetwork(AFh1mSDK aFh1mSDK) {
        this.toString.getRevenue(aFh1mSDK);
    }

    public void getRevenue(AFh1mSDK aFh1mSDK) {
        this.toString.getCurrencyIso4217Code(aFh1mSDK);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1sSDK(@NonNull AFh1mSDK aFh1mSDK, @NonNull AFd1zSDK aFd1zSDK, String str) {
        super(aFh1mSDK.AFAdRevenueData(), new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, aFd1zSDK, str);
        this.copy = aFh1mSDK;
        this.copydefault = aFd1zSDK.AFKeystoreWrapper();
        this.component2 = aFd1zSDK.component4();
        this.hashCode = aFd1zSDK.component1();
        this.AFKeystoreWrapper = aFd1zSDK.AFInAppEventParameterName();
        this.equals = aFd1zSDK.AFAdRevenueData();
        this.toString = aFd1zSDK.component3();
        this.AFInAppEventType = aFd1zSDK.afDebugLog();
        for (AFe1pSDK aFe1pSDK : registerClient) {
            if (this.getRevenue == aFe1pSDK) {
                return;
            }
        }
        int i = this.copy.component4;
        AFe1pSDK aFe1pSDK2 = this.getRevenue;
        if (i <= 0) {
            AFe1pSDK aFe1pSDK3 = AFe1pSDK.CONVERSION;
            if (aFe1pSDK2 != aFe1pSDK3) {
                this.AFAdRevenueData.add(aFe1pSDK3);
                return;
            }
            return;
        }
        this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:7:0x001e, B:9:0x0024, B:12:0x0040, B:14:0x0046, B:15:0x004f, B:17:0x005a, B:22:0x0066, B:25:0x006e, B:26:0x0079, B:28:0x007f, B:30:0x0099, B:32:0x009e, B:34:0x00b3, B:35:0x00ba, B:37:0x00be, B:40:0x00c5, B:41:0x00cc, B:31:0x009c, B:42:0x00cf, B:44:0x00d9, B:45:0x00e6, B:2:0x0000), top: B:49:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d9 A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:7:0x001e, B:9:0x0024, B:12:0x0040, B:14:0x0046, B:15:0x004f, B:17:0x005a, B:22:0x0066, B:25:0x006e, B:26:0x0079, B:28:0x007f, B:30:0x0099, B:32:0x009e, B:34:0x00b3, B:35:0x00ba, B:37:0x00be, B:40:0x00c5, B:41:0x00cc, B:31:0x009c, B:42:0x00cf, B:44:0x00d9, B:45:0x00e6, B:2:0x0000), top: B:49:0x0000 }] */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void AFAdRevenueData(com.appsflyer.internal.AFh1mSDK r9) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1sSDK.AFAdRevenueData(com.appsflyer.internal.AFh1mSDK):void");
    }
}
