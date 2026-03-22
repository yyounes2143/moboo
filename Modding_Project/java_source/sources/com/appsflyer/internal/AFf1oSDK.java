package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.services.core.di.ServiceProvider;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1oSDK extends AFf1sSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFLogger = 1;
    private static int registerClient;
    private final AFc1hSDK copy;
    private final String copydefault;
    private final AFg1nSDK equals;
    private final AFc1oSDK hashCode;
    private static char[] AFKeystoreWrapper = {52730, 63488, 52732, 63493, 63494, 52733, 63510, 52735, 63498};
    private static char AFInAppEventType = 52733;

    public AFf1oSDK(@NonNull String str, @NonNull AFd1zSDK aFd1zSDK) {
        super(new AFg1tSDK(), aFd1zSDK, str);
        this.hashCode = aFd1zSDK.AFAdRevenueData();
        this.copy = aFd1zSDK.AFInAppEventParameterName();
        this.copydefault = str;
        this.equals = aFd1zSDK.component3();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r13 = r13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(byte r12, java.lang.String r13, int r14, java.lang.Object[] r15) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1oSDK.a(byte, java.lang.String, int, java.lang.Object[]):void");
    }

    private void equals() {
        int i = AFLogger + 33;
        registerClient = i % 128;
        int i2 = i % 2;
        ((AFf1sSDK) this).component2.AFAdRevenueData("sentRegisterRequestToAF", true);
        AFLogger.afDebugLog("[register] Successfully registered for Uninstall Tracking");
    }

    public static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i2;
        int i5 = (i * 495) + (i2 * (-493)) + ((i | i4) * (-988));
        int i6 = ~i;
        int i7 = ~i3;
        return (i5 + (((i2 | i6) | i7) * 494)) + (((~(i | i2)) | ((~(i7 | i2)) | (~(i4 | i6)))) * 494) != 1 ? getMonetizationNetwork(objArr) : getMediationNetwork(objArr);
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        AFf1oSDK aFf1oSDK = (AFf1oSDK) objArr[0];
        int i = registerClient + 109;
        AFLogger = i % 128;
        if (i % 2 != 0) {
            super.getCurrencyIso4217Code();
            ResponseNetwork responseNetwork = ((AFe1fSDK) aFf1oSDK).areAllFieldsValid;
            if (responseNetwork != null) {
                int i2 = registerClient + 3;
                AFLogger = i2 % 128;
                if (i2 % 2 == 0) {
                    responseNetwork.isSuccessful();
                    throw null;
                } else if (responseNetwork.isSuccessful()) {
                    aFf1oSDK.equals();
                    registerClient = (AFLogger + 17) % 128;
                }
            }
            return null;
        }
        super.getCurrencyIso4217Code();
        throw null;
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        AFf1oSDK aFf1oSDK = (AFf1oSDK) objArr[0];
        AFh1mSDK aFh1mSDK = (AFh1mSDK) objArr[1];
        super.AFAdRevenueData(aFh1mSDK);
        Context context = aFf1oSDK.copy.getMonetizationNetwork;
        AFa1ySDK revenue = AFa1ySDK.getRevenue();
        if (context != null) {
            if (!revenue.getCurrencyIso4217Code()) {
                try {
                    aFh1mSDK.getMonetizationNetwork(TPDownloadProxyEnum.USER_APP_VERSION_CODE, Integer.toString(aFf1oSDK.hashCode.n_().versionCode));
                    aFh1mSDK.getMonetizationNetwork(TPDownloadProxyEnum.USER_APP_VERSION, aFf1oSDK.hashCode.n_().versionName);
                    aFh1mSDK.getMonetizationNetwork("app_name", aFf1oSDK.s_(context.getPackageManager()));
                    aFh1mSDK.getMonetizationNetwork("installDate", AFa1ySDK.getMonetizationNetwork(new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US), aFf1oSDK.hashCode.n_().firstInstallTime));
                } catch (Throwable th) {
                    AFLogger.afErrorLog("Exception while collecting application version info.", th);
                }
                aFf1oSDK.equals.getRevenue(aFh1mSDK.AFAdRevenueData);
                aFh1mSDK.AFAdRevenueData.remove("ivc");
                String mediationNetwork = AFa1ySDK.getMediationNetwork();
                if (mediationNetwork != null) {
                    int i = AFLogger + 47;
                    registerClient = i % 128;
                    if (i % 2 != 0) {
                        aFh1mSDK.getMonetizationNetwork("appUserId", mediationNetwork);
                        int i2 = 83 / 0;
                    } else {
                        aFh1mSDK.getMonetizationNetwork("appUserId", mediationNetwork);
                    }
                }
                try {
                    aFh1mSDK.getMonetizationNetwork("model", Build.MODEL);
                    Object[] objArr2 = new Object[1];
                    a((byte) (3 - (ViewConfiguration.getTouchSlop() >> 8)), "\u0003\u0007\u0005\u0006㘁", 5 - (Process.myPid() >> 22), objArr2);
                    aFh1mSDK.getMonetizationNetwork(((String) objArr2[0]).intern(), Build.BRAND);
                } catch (Throwable th2) {
                    AFLogger.afErrorLog("Exception while collecting device brand and model.", th2);
                }
                if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
                    int i3 = AFLogger + 89;
                    registerClient = i3 % 128;
                    if (i3 % 2 != 0) {
                        aFh1mSDK.getMonetizationNetwork(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
                        int i4 = 47 / 0;
                    } else {
                        aFh1mSDK.getMonetizationNetwork(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
                    }
                }
                AFb1jSDK l_ = AFb1lSDK.l_(context.getContentResolver());
                if (l_ != null) {
                    registerClient = (AFLogger + 35) % 128;
                    aFh1mSDK.getMonetizationNetwork("amazon_aid", l_.getRevenue);
                    aFh1mSDK.getMonetizationNetwork("amazon_aid_limit", String.valueOf(l_.getCurrencyIso4217Code));
                }
                aFh1mSDK.getMonetizationNetwork("devkey", ((AFe1fSDK) aFf1oSDK).component1.getMediationNetwork());
                aFh1mSDK.getMonetizationNetwork("uid", AFb1kSDK.getCurrencyIso4217Code(aFf1oSDK.hashCode.getMediationNetwork));
                aFh1mSDK.getMonetizationNetwork("af_gcm_token", aFf1oSDK.copydefault);
                aFh1mSDK.getMonetizationNetwork("launch_counter", Integer.toString(((AFf1sSDK) aFf1oSDK).component2.getRevenue("appsFlyerCount", 0)));
                aFh1mSDK.getMonetizationNetwork(ServiceProvider.NAMED_SDK, Integer.toString(Build.VERSION.SDK_INT));
                String component3 = aFf1oSDK.hashCode.component3();
                if (component3 != null) {
                    aFh1mSDK.getMonetizationNetwork(AppsFlyerProperties.CHANNEL, component3);
                    AFLogger = (registerClient + 61) % 128;
                    return null;
                }
                return null;
            }
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            throw new IllegalStateException("CustomerUserId not set, register is not sent");
        }
        throw new IllegalStateException("Context is not provided, can't send register request");
    }

    @NonNull
    private String s_(PackageManager packageManager) {
        ApplicationInfo applicationInfo = this.hashCode.n_().applicationInfo;
        if (applicationInfo == null) {
            int i = AFLogger;
            int i2 = i + 119;
            registerClient = i2 % 128;
            if (i2 % 2 == 0) {
                registerClient = (i + 71) % 128;
                return "";
            }
            throw null;
        }
        String charSequence = packageManager.getApplicationLabel(applicationInfo).toString();
        int i3 = AFLogger + 95;
        registerClient = i3 % 128;
        if (i3 % 2 == 0) {
            return charSequence;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void AFAdRevenueData(AFh1mSDK aFh1mSDK) {
        getCurrencyIso4217Code(new Object[]{this, aFh1mSDK}, 908933800, -908933800, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void component1(AFh1mSDK aFh1mSDK) {
        String areAllFieldsValid;
        int i = AFLogger + 13;
        registerClient = i % 128;
        if (i % 2 != 0) {
            areAllFieldsValid = this.hashCode.areAllFieldsValid();
            int i2 = 83 / 0;
            if (areAllFieldsValid == null) {
                return;
            }
        } else {
            areAllFieldsValid = this.hashCode.areAllFieldsValid();
            if (areAllFieldsValid == null) {
                return;
            }
        }
        registerClient = (AFLogger + 19) % 128;
        aFh1mSDK.getMonetizationNetwork("advertiserId", areAllFieldsValid);
        AFLogger = (registerClient + 39) % 128;
    }

    @Override // com.appsflyer.internal.AFf1sSDK, com.appsflyer.internal.AFe1fSDK
    public final boolean copydefault() {
        boolean z;
        int i = registerClient + 87;
        int i2 = i % 128;
        AFLogger = i2;
        if (i % 2 == 0) {
            z = true;
        } else {
            z = false;
        }
        registerClient = (i2 + 117) % 128;
        return z;
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void getRevenue(AFh1mSDK aFh1mSDK) {
        int i = AFLogger + 51;
        registerClient = i % 128;
        if (i % 2 == 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void getCurrencyIso4217Code(AFh1mSDK aFh1mSDK) {
        registerClient = (AFLogger + 67) % 128;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        getCurrencyIso4217Code(new Object[]{this}, 838739924, -838739923, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void getMediationNetwork(AFh1mSDK aFh1mSDK) {
        registerClient = (AFLogger + 21) % 128;
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void getMonetizationNetwork(AFh1mSDK aFh1mSDK) {
        AFLogger = (registerClient + 1) % 128;
    }
}
