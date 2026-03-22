package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1qSDK extends AFe1mSDK<AFf1pSDK> {
    public AFi1wSDK areAllFieldsValid;
    private final AFc1oSDK component1;
    @Nullable
    public final AFf1mSDK component2;
    @Nullable
    public AFf1pSDK component3;
    private final AFf1nSDK component4;
    private final AFd1nSDK copy;
    private final AFf1jSDK copydefault;
    private final String equals;
    private final AFf1hSDK hashCode;
    private final AFf1eSDK toString;

    public AFf1qSDK(@NonNull AFf1nSDK aFf1nSDK, @NonNull AFc1oSDK aFc1oSDK, @NonNull AFf1eSDK aFf1eSDK, @NonNull AFf1hSDK aFf1hSDK, @NonNull AFd1nSDK aFd1nSDK, @NonNull AFf1jSDK aFf1jSDK, @NonNull String str, @Nullable AFf1mSDK aFf1mSDK) {
        super(AFe1pSDK.RC_CDN, new AFe1pSDK[0], "UpdateRemoteConfiguration");
        this.component3 = null;
        this.component4 = aFf1nSDK;
        this.component1 = aFc1oSDK;
        this.toString = aFf1eSDK;
        this.hashCode = aFf1hSDK;
        this.copy = aFd1nSDK;
        this.copydefault = aFf1jSDK;
        this.equals = str;
        this.component2 = aFf1mSDK;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.appsflyer.internal.AFf1pSDK component3() throws java.lang.InterruptedException, java.io.InterruptedIOException {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1qSDK.component3():com.appsflyer.internal.AFf1pSDK");
    }

    private void getCurrencyIso4217Code(String str, long j, AFi1ySDK aFi1ySDK, @Nullable String str2, @Nullable AFe1wSDK<AFi1vSDK> aFe1wSDK) {
        AFi1vSDK aFi1vSDK;
        String str3;
        if (aFe1wSDK != null) {
            aFi1vSDK = aFe1wSDK.getBody();
        } else {
            aFi1vSDK = null;
        }
        if (str2 != null) {
            str3 = str2;
        } else {
            str3 = null;
        }
        getMonetizationNetwork(str, j, aFe1wSDK, aFi1vSDK, aFi1ySDK, str3, null);
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return 1500L;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @NonNull
    public final AFe1uSDK getRevenue() throws Exception {
        try {
            AFf1pSDK component3 = component3();
            this.component3 = component3;
            if (component3 == AFf1pSDK.FAILURE) {
                return AFe1uSDK.FAILURE;
            }
            return AFe1uSDK.SUCCESS;
        } catch (InterruptedIOException e) {
            e = e;
            AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, "RC update config failed", e, false, false, false);
            this.component3 = AFf1pSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        } catch (InterruptedException e2) {
            e = e2;
            AFLogger.INSTANCE.e(AFg1cSDK.REMOTE_CONTROL, "RC update config failed", e, false, false, false);
            this.component3 = AFf1pSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        } catch (SocketTimeoutException unused) {
            this.component3 = AFf1pSDK.FAILURE;
            return AFe1uSDK.TIMEOUT;
        }
    }

    private void getMonetizationNetwork(String str, long j, @Nullable AFe1wSDK<?> aFe1wSDK, AFi1vSDK aFi1vSDK, AFi1ySDK aFi1ySDK, @Nullable String str2, @Nullable Throwable th) {
        long j2;
        int i;
        Throwable th2;
        if (aFe1wSDK != null) {
            j2 = aFe1wSDK.getMonetizationNetwork.getMediationNetwork;
            i = aFe1wSDK.getStatusCode();
        } else {
            j2 = 0;
            i = 0;
        }
        int i2 = i;
        if (th instanceof HttpException) {
            Throwable cause = th.getCause();
            j2 = ((HttpException) th).getMetrics().getMediationNetwork;
            th2 = cause;
        } else {
            th2 = th;
        }
        this.areAllFieldsValid = new AFi1wSDK(aFi1vSDK != null ? aFi1vSDK.AFAdRevenueData : null, str, j2, System.currentTimeMillis() - j, i2, aFi1ySDK, str2, th2);
    }
}
