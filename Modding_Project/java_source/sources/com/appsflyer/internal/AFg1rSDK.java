package com.appsflyer.internal;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import androidx.annotation.VisibleForTesting;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AFLogger;
import com.appsflyer.AdRevenueScheme;
import com.appsflyer.AppsFlyerProperties;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.unity3d.services.core.di.ServiceProvider;
import j$.util.DesugarTimeZone;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1rSDK implements AFg1nSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int e = 1;
    private static int unregisterClient;
    @NotNull
    private final String AFAdRevenueData;
    @NotNull
    private final AFh1xSDK areAllFieldsValid;
    @NotNull
    private final AFc1qSDK component1;
    @NotNull
    private final AFg1vSDK component2;
    @NotNull
    private final AFi1pSDK component3;
    @NotNull
    private final AFc1oSDK component4;
    @NotNull
    private final AFc1hSDK copy;
    @NotNull
    private final AFg1zSDK copydefault;
    @NotNull
    private final Context getCurrencyIso4217Code;
    @NotNull
    private final AFi1kSDK getMediationNetwork;
    @NotNull
    private final AFg1uSDK getMonetizationNetwork;
    @NotNull
    private final AFj1lSDK getRevenue;
    @NotNull
    private final AFf1eSDK hashCode;
    @NotNull
    private final AFc1eSDK toString;
    private static char[] AFInAppEventParameterName = {35909, 35928, 35921, 35926, 35927, 35903, 35904, 35924, 35933, 35910, 35931, 35879, 35908, 35905, 35911};
    private static int registerClient = 1912311267;
    private static boolean AFLogger = true;
    private static boolean AFInAppEventType = true;
    @NotNull
    private final Lazy equals = LazyKt.lazy(new Function0<AppsFlyerProperties>() { // from class: com.appsflyer.internal.AFg1rSDK.5
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: getCurrencyIso4217Code */
        public final AppsFlyerProperties invoke() {
            return AppsFlyerProperties.getInstance();
        }
    });
    @NotNull
    private final Lazy AFKeystoreWrapper = LazyKt.lazy(new Function0<SimpleDateFormat>() { // from class: com.appsflyer.internal.AFg1rSDK.4
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: AFAdRevenueData */
        public final SimpleDateFormat invoke() {
            return new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
        }
    });

    public AFg1rSDK(@NotNull String str, @NotNull Context context, @NotNull AFi1kSDK aFi1kSDK, @NotNull AFg1uSDK aFg1uSDK, @NotNull AFj1lSDK aFj1lSDK, @NotNull AFg1vSDK aFg1vSDK, @NotNull AFh1xSDK aFh1xSDK, @NotNull AFc1qSDK aFc1qSDK, @NotNull AFc1oSDK aFc1oSDK, @NotNull AFi1pSDK aFi1pSDK, @NotNull AFf1eSDK aFf1eSDK, @NotNull AFc1hSDK aFc1hSDK, @NotNull AFg1zSDK aFg1zSDK, @NotNull AFc1eSDK aFc1eSDK) {
        this.AFAdRevenueData = str;
        this.getCurrencyIso4217Code = context;
        this.getMediationNetwork = aFi1kSDK;
        this.getMonetizationNetwork = aFg1uSDK;
        this.getRevenue = aFj1lSDK;
        this.component2 = aFg1vSDK;
        this.areAllFieldsValid = aFh1xSDK;
        this.component1 = aFc1qSDK;
        this.component4 = aFc1oSDK;
        this.component3 = aFi1pSDK;
        this.hashCode = aFf1eSDK;
        this.copy = aFc1hSDK;
        this.copydefault = aFg1zSDK;
        this.toString = aFc1eSDK;
    }

    @Nullable
    private String AFAdRevenueData() throws CertificateException, NoSuchAlgorithmException, PackageManager.NameNotFoundException {
        int i = unregisterClient + 69;
        e = i % 128;
        if (i % 2 == 0) {
            AFj1kSDK.N_(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager(), this.getCurrencyIso4217Code.getApplicationContext().getPackageName());
            throw null;
        }
        String N_ = AFj1kSDK.N_(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager(), this.getCurrencyIso4217Code.getApplicationContext().getPackageName());
        unregisterClient = (e + 55) % 128;
        return N_;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void AFInAppEventParameterName(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 1
            int r2 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r2 = r2 + 113
            int r2 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.e = r2
            java.lang.Object[] r2 = new java.lang.Object[r1]
            r2[r0] = r6
            int r3 = java.lang.System.identityHashCode(r6)
            r4 = -854454525(0xffffffffcd120f03, float:-1.53153584E8)
            r5 = 854454532(0x32edf104, float:2.7700032E-8)
            java.lang.Object r2 = getRevenue(r2, r4, r5, r3)
            com.appsflyer.AppsFlyerProperties r2 = (com.appsflyer.AppsFlyerProperties) r2
            java.lang.String r3 = "sdkExtension"
            java.lang.String r2 = r2.getString(r3)
            if (r2 == 0) goto L37
            int r4 = com.appsflyer.internal.AFg1rSDK.e
            int r4 = r4 + 59
            int r4 = r4 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r4
            int r4 = r2.length()
            if (r4 != 0) goto L35
            goto L37
        L35:
            r4 = r0
            goto L38
        L37:
            r4 = r1
        L38:
            if (r4 == r1) goto L3d
            r7.put(r3, r2)
        L3d:
            int r7 = com.appsflyer.internal.AFg1rSDK.e
            int r7 = r7 + 19
            int r1 = r7 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            int r7 = r7 % 2
            if (r7 == 0) goto L4c
            r7 = 35
            int r7 = r7 / r0
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.AFInAppEventParameterName(java.util.Map):void");
    }

    private void AFInAppEventType(@NotNull Map<String, Object> map) {
        unregisterClient = (e + 71) % 128;
        map.putAll(this.copydefault.AFAdRevenueData());
        e = (unregisterClient + 111) % 128;
    }

    private static void AFKeystoreWrapper(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{map}, -1950585912, 1950585914, (int) System.currentTimeMillis());
    }

    private static void AFLogger(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{map}, -1520031212, 1520031215, (int) System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r12 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r10, int[] r11, java.lang.String r12, int r13, java.lang.Object[] r14) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.a(java.lang.String, int[], java.lang.String, int, java.lang.Object[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
        if (r0 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
        r0 = getMonetizationNetwork("AF_STORE");
        com.appsflyer.internal.AFg1rSDK.e = (com.appsflyer.internal.AFg1rSDK.unregisterClient + 31) % 128;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String areAllFieldsValid() {
        /*
            r6 = this;
            r0 = 1
            r1 = 0
            int r2 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r2 = r2 + 109
            int r3 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.e = r3
            int r2 = r2 % 2
            java.lang.String r3 = "api_store_value"
            r4 = 854454532(0x32edf104, float:2.7700032E-8)
            r5 = -854454525(0xffffffffcd120f03, float:-1.53153584E8)
            if (r2 != 0) goto L2e
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r6
            int r2 = java.lang.System.identityHashCode(r6)
            java.lang.Object r0 = getRevenue(r0, r5, r4, r2)
            com.appsflyer.AppsFlyerProperties r0 = (com.appsflyer.AppsFlyerProperties) r0
            java.lang.String r0 = r0.getString(r3)
            r2 = 81
            int r2 = r2 / r1
            if (r0 != 0) goto L50
            goto L42
        L2e:
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r6
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.Object r0 = getRevenue(r0, r5, r4, r1)
            com.appsflyer.AppsFlyerProperties r0 = (com.appsflyer.AppsFlyerProperties) r0
            java.lang.String r0 = r0.getString(r3)
            if (r0 != 0) goto L50
        L42:
            java.lang.String r0 = "AF_STORE"
            java.lang.String r0 = r6.getMonetizationNetwork(r0)
            int r1 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r1 = r1 + 31
            int r1 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.e = r1
        L50:
            int r1 = com.appsflyer.internal.AFg1rSDK.e
            int r1 = r1 + 111
            int r1 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.areAllFieldsValid():java.lang.String");
    }

    private static /* synthetic */ Object component1(Object[] objArr) {
        int i = unregisterClient + 83;
        e = i % 128;
        int i2 = i % 2;
        AppsFlyerProperties appsFlyerProperties = (AppsFlyerProperties) ((AFg1rSDK) objArr[0]).equals.getValue();
        if (i2 != 0) {
            return appsFlyerProperties;
        }
        throw null;
    }

    @NotNull
    private static String component2() {
        StatFs statFs;
        double pow;
        long blockSizeLong = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getBlockSizeLong();
        String str = ((long) ((statFs.getAvailableBlocksLong() * blockSizeLong) / pow)) + "/" + ((long) ((statFs.getBlockCountLong() * blockSizeLong) / Math.pow(2.0d, 20.0d)));
        int i = e + 113;
        unregisterClient = i % 128;
        if (i % 2 == 0) {
            return str;
        }
        throw null;
    }

    private void component3(@NotNull Map<String, Object> map) {
        int i = e + 99;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_ID);
            ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_VERSION);
            throw null;
        }
        String string = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_ID);
        String string2 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_VERSION);
        if (string != null) {
            map.put("onelink_id", string);
        }
        if (string2 != null) {
            int i2 = e + 75;
            unregisterClient = i2 % 128;
            if (i2 % 2 != 0) {
                map.put("onelink_ver", string2);
                int i3 = 0 / 0;
                return;
            }
            map.put("onelink_ver", string2);
        }
    }

    private static /* synthetic */ Object component4(Object[] objArr) {
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        try {
            long longValue = ((Long) getRevenue(new Object[]{aFg1rSDK}, 1297709710, -1297709700, System.identityHashCode(aFg1rSDK))).longValue();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            map.put("installDate", simpleDateFormat.format(new Date(longValue)));
            int i = unregisterClient + 109;
            e = i % 128;
            if (i % 2 != 0) {
                return null;
            }
            throw null;
        } catch (Exception e2) {
            AFLogger.afErrorLog("Exception while collecting install date. ", e2);
            return null;
        }
    }

    private final void copy(Map<String, Object> map) {
        e = (unregisterClient + 59) % 128;
        UiModeManager uiModeManager = (UiModeManager) this.getCurrencyIso4217Code.getSystemService(UiModeManager.class);
        if (uiModeManager != null) {
            int i = unregisterClient + 27;
            e = i % 128;
            if (i % 2 == 0) {
                if (uiModeManager.getCurrentModeType() != 2) {
                    return;
                }
            } else if (uiModeManager.getCurrentModeType() != 4) {
                return;
            }
            int i2 = unregisterClient + 65;
            e = i2 % 128;
            if (i2 % 2 != 0) {
                map.put("tv", Boolean.TRUE);
            } else {
                map.put("tv", Boolean.TRUE);
                throw null;
            }
        }
    }

    private static List<AFe1pSDK> copydefault() {
        unregisterClient = (e + 47) % 128;
        List<AFe1pSDK> listOf = CollectionsKt.listOf((Object[]) new AFe1pSDK[]{AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH, AFe1pSDK.INAPP, AFe1pSDK.MANUAL_PURCHASE_VALIDATION, AFe1pSDK.ARS_VALIDATE, AFe1pSDK.PURCHASE_VALIDATE, AFe1pSDK.ADREVENUE});
        int i = e + 109;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            int i2 = 56 / 0;
        }
        return listOf;
    }

    private void d(@NotNull Map<String, Object> map) {
        String str;
        int i = unregisterClient + 119;
        e = i % 128;
        if (i % 2 == 0) {
            if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, false)) {
                return;
            }
        } else if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, true)) {
            return;
        }
        try {
            this.getCurrencyIso4217Code.getPackageManager().getApplicationInfo(FbValidationUtils.FB_PACKAGE, 0);
            str = this.component4.AFAdRevenueData(this.getCurrencyIso4217Code);
            unregisterClient = (e + 23) % 128;
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            unregisterClient = (e + 123) % 128;
            map.put("fb", str);
        }
    }

    private void e(@NotNull Map<String, Object> map) {
        unregisterClient = (e + 5) % 128;
        boolean monetizationNetwork = AFg1sSDK.getMonetizationNetwork(this.getCurrencyIso4217Code);
        AFLogger.afDebugLog("didConfigureTokenRefreshService=" + monetizationNetwork);
        if (!monetizationNetwork) {
            map.put("tokenRefreshConfigured", Boolean.FALSE);
        }
        map.put("registeredUninstall", Boolean.valueOf(AFg1sSDK.AFAdRevenueData(this.component1)));
        unregisterClient = (e + 45) % 128;
    }

    private void equals(@NotNull Map<String, Object> map) {
        int i = e + 107;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            map.put("is_pc", Boolean.valueOf(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
            int i2 = 75 / 0;
        } else {
            map.put("is_pc", Boolean.valueOf(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
        }
        e = (unregisterClient + 89) % 128;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
        if (r9.component4.n_().versionCode > r9.component1.getRevenue("versionCode", 0)) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void getMediationNetwork(java.util.Map<java.lang.String, java.lang.Object> r10, int r11) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMediationNetwork(java.util.Map, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object getRevenue(java.lang.Object[] r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getRevenue(java.lang.Object[], int, int, int):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r2 != 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
        if (r2 != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        com.appsflyer.internal.AFg1rSDK.e = (r1 + 49) % 128;
        r7.put("prev_session_dur", java.lang.Long.valueOf(r2));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hashCode(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            r6 = this;
            int r0 = com.appsflyer.internal.AFg1rSDK.e
            int r0 = r0 + 71
            int r1 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L17
            com.appsflyer.internal.AFh1xSDK r0 = r6.areAllFieldsValid
            long r2 = r0.copydefault
            r4 = 1
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L30
            goto L21
        L17:
            com.appsflyer.internal.AFh1xSDK r0 = r6.areAllFieldsValid
            long r2 = r0.copydefault
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L30
        L21:
            int r1 = r1 + 49
            int r1 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.e = r1
            java.lang.Long r0 = java.lang.Long.valueOf(r2)
            java.lang.String r1 = "prev_session_dur"
            r7.put(r1, r0)
        L30:
            int r7 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r7 = r7 + 101
            int r7 = r7 % 128
            com.appsflyer.internal.AFg1rSDK.e = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.hashCode(java.util.Map):void");
    }

    private void i(@NotNull Map<String, Object> map) {
        if (this.component1.getMonetizationNetwork("is_stop_tracking_used")) {
            map.put("istu", String.valueOf(this.component1.getMediationNetwork("is_stop_tracking_used", false)));
            e = (unregisterClient + 33) % 128;
        }
        unregisterClient = (e + 3) % 128;
    }

    private void registerClient(@NotNull Map<String, Object> map) {
        int i = e + 91;
        unregisterClient = i % 128;
        if (i % 2 == 0) {
            map.put("af_preinstalled", String.valueOf(this.component4.getMonetizationNetwork(this.getCurrencyIso4217Code)));
            unregisterClient = (e + 37) % 128;
            return;
        }
        map.put("af_preinstalled", String.valueOf(this.component4.getMonetizationNetwork(this.getCurrencyIso4217Code)));
        throw null;
    }

    private final void toString(Map<String, Object> map) {
        int i = unregisterClient + 89;
        e = i % 128;
        if (i % 2 == 0) {
            int i2 = 38 / 0;
            if (!AFg1iSDK.getMonetizationNetwork(this.getCurrencyIso4217Code)) {
                return;
            }
        } else if (!AFg1iSDK.getMonetizationNetwork(this.getCurrencyIso4217Code)) {
            return;
        }
        int i3 = unregisterClient + 25;
        e = i3 % 128;
        if (i3 % 2 != 0) {
            map.put("inst_app", Boolean.TRUE);
            e = (unregisterClient + 91) % 128;
            return;
        }
        map.put("inst_app", Boolean.TRUE);
        throw null;
    }

    private void unregisterClient(@NotNull Map<String, Object> map) {
        int i = unregisterClient + 105;
        e = i % 128;
        if (i % 2 != 0) {
            AFb1jSDK l_ = AFb1lSDK.l_(this.getCurrencyIso4217Code.getContentResolver());
            if (l_ != null) {
                int i2 = unregisterClient + 49;
                e = i2 % 128;
                if (i2 % 2 == 0) {
                    map.put("amazon_aid", l_.getRevenue);
                    map.put("amazon_aid_limit", String.valueOf(l_.getCurrencyIso4217Code));
                    int i3 = 37 / 0;
                    return;
                }
                map.put("amazon_aid", l_.getRevenue);
                map.put("amazon_aid_limit", String.valueOf(l_.getCurrencyIso4217Code));
                return;
            }
            unregisterClient = (e + 121) % 128;
            return;
        }
        AFb1lSDK.l_(this.getCurrencyIso4217Code.getContentResolver());
        throw null;
    }

    private void w(@NotNull Map<String, Object> map) {
        int i = unregisterClient + 113;
        e = i % 128;
        if (i % 2 != 0) {
            String mediationNetwork = this.hashCode.getMediationNetwork();
            if (mediationNetwork != null && mediationNetwork.length() != 0) {
                e = (unregisterClient + 109) % 128;
                map.put("appsflyerKey", mediationNetwork);
                return;
            }
            return;
        }
        this.hashCode.getMediationNetwork();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull AFh1mSDK aFh1mSDK) {
        e = (unregisterClient + 103) % 128;
        Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
        AFAdRevenueData(map, aFh1mSDK.getRevenue());
        areAllFieldsValid(map);
        getRevenue(new Object[]{map}, -1950585912, 1950585914, (int) System.currentTimeMillis());
        getRevenue(map);
        getRevenue(new Object[]{this, map, this.toString.getCurrencyIso4217Code}, 274047423, -274047418, System.identityHashCode(this));
        unregisterClient(map);
        map.put("cell", MapsKt.mapOf(TuplesKt.to("mcc", Integer.valueOf(this.getCurrencyIso4217Code.getResources().getConfiguration().mcc)), TuplesKt.to("mnc", Integer.valueOf(this.getCurrencyIso4217Code.getResources().getConfiguration().mnc))));
        map.put("sig", AFAdRevenueData());
        map.put("last_boot_time", Long.valueOf(component1()));
        map.put("disk", component2());
        unregisterClient = (e + 73) % 128;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMonetizationNetwork(@NotNull Map<String, Object> map) {
        Object obj;
        unregisterClient = (e + 13) % 128;
        Object string = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString("appid");
        if (string != null) {
            int i = unregisterClient + 109;
            e = i % 128;
            if (i % 2 == 0) {
                map.put("appid", string);
                int i2 = 21 / 0;
            } else {
                map.put("appid", string);
            }
        }
        String string2 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.CURRENCY_CODE);
        if (string2 != null) {
            int i3 = e + 93;
            unregisterClient = i3 % 128;
            if (i3 % 2 == 0 ? string2.length() != 3 : string2.length() != 2) {
                StringBuilder sb = new StringBuilder("WARNING: currency code should be 3 characters!!! '");
                sb.append(string2);
                sb.append("' is not a legal value.");
                AFLogger.afWarnLog(sb.toString());
            }
            map.put("currency", string2);
        }
        Object string3 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.IS_UPDATE);
        if (string3 != null) {
            e = (unregisterClient + 113) % 128;
            map.put("isUpdate", string3);
            e = (unregisterClient + 27) % 128;
        }
        Object string4 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
        if (string4 != null) {
            map.put("customData", string4);
        }
        Object string5 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.APP_USER_ID);
        if (string5 != null) {
            int i4 = unregisterClient + 85;
            e = i4 % 128;
            if (i4 % 2 == 0) {
                map.put("appUserId", string5);
                int i5 = 2 / 0;
            } else {
                map.put("appUserId", string5);
            }
        }
        Object string6 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.USER_EMAILS);
        if (string6 != null) {
            int i6 = unregisterClient + 31;
            e = i6 % 128;
            if (i6 % 2 != 0) {
                map.put("user_emails", string6);
            } else {
                map.put("user_emails", string6);
                throw null;
            }
        }
        AFb1tSDK aFb1tSDK = this.toString.getRevenue;
        if (aFb1tSDK == null || (obj = aFb1tSDK.AFAdRevenueData) == null) {
            return;
        }
        map.put("sharing_filter", obj);
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("cpu_abi", getCurrencyIso4217Code("ro.product.cpu.abi"));
        hashMap.put("cpu_abi2", getCurrencyIso4217Code("ro.product.cpu.abi2"));
        hashMap.put("arch", getCurrencyIso4217Code("os.arch"));
        hashMap.put("build_display_id", getCurrencyIso4217Code("ro.build.display.id"));
        if (!(!z)) {
            getRevenue(new Object[]{this, hashMap}, -753773633, 753773645, System.identityHashCode(this));
            if (this.component4.getMediationNetwork.getRevenue("appsFlyerCount", 0) <= 2) {
                int i = unregisterClient + 43;
                e = i % 128;
                if (i % 2 != 0) {
                    hashMap.putAll(this.getRevenue.getMediationNetwork());
                } else {
                    hashMap.putAll(this.getRevenue.getMediationNetwork());
                    throw null;
                }
            }
        }
        hashMap.put("dim", this.component2.getMediationNetwork(this.getCurrencyIso4217Code));
        map.put("deviceData", hashMap);
        unregisterClient = (e + 119) % 128;
    }

    private static long component1() {
        int i = e + 101;
        unregisterClient = i % 128;
        long currentTimeMillis = i % 2 != 0 ? System.currentTimeMillis() & SystemClock.elapsedRealtime() : System.currentTimeMillis() - SystemClock.elapsedRealtime();
        int i2 = e + 31;
        unregisterClient = i2 % 128;
        if (i2 % 2 == 0) {
            return currentTimeMillis;
        }
        throw null;
    }

    private void component1(@NotNull Map<String, ? extends Object> map) {
        getRevenue(new Object[]{this, map}, -841219204, 841219208, System.identityHashCode(this));
    }

    private void copydefault(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -1147564241, 1147564241, System.identityHashCode(this));
    }

    private static /* synthetic */ Object areAllFieldsValid(Object[] objArr) {
        String str;
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        int intValue = ((Number) objArr[1]).intValue();
        int i = unregisterClient + 123;
        e = i % 128;
        if (i % 2 == 0) {
            ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).getString("preInstallName");
            throw null;
        }
        String string = ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).getString("preInstallName");
        if (string != null) {
            return string;
        }
        if (aFg1rSDK.component1.getMonetizationNetwork("preInstallName")) {
            int i2 = e + 71;
            unregisterClient = i2 % 128;
            if (i2 % 2 != 0) {
                str = aFg1rSDK.component1.getMonetizationNetwork("preInstallName", (String) null);
                int i3 = 30 / 0;
            } else {
                str = aFg1rSDK.component1.getMonetizationNetwork("preInstallName", (String) null);
            }
        } else {
            if (intValue <= 1) {
                unregisterClient = (e + 99) % 128;
                String equals = aFg1rSDK.equals();
                if (equals == null) {
                    int i4 = e + 79;
                    unregisterClient = i4 % 128;
                    if (i4 % 2 == 0) {
                        equals = aFg1rSDK.getMonetizationNetwork("AF_PRE_INSTALL_NAME");
                    } else {
                        aFg1rSDK.getMonetizationNetwork("AF_PRE_INSTALL_NAME");
                        throw null;
                    }
                }
                string = equals;
            }
            if (string != null) {
                aFg1rSDK.component1.getRevenue("preInstallName", string);
            }
            str = string;
        }
        if (str != null) {
            unregisterClient = (e + 89) % 128;
            ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).set("preInstallName", str);
        }
        return str;
    }

    private final void component2(Map<String, Object> map) {
        int i = e + 107;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).isOtherSdkStringDisabled();
            throw null;
        } else if (((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).isOtherSdkStringDisabled()) {
        } else {
            map.put("batteryLevel", String.valueOf(this.getMonetizationNetwork.getCurrencyIso4217Code(this.getCurrencyIso4217Code).getMonetizationNetwork));
            e = (unregisterClient + 95) % 128;
        }
    }

    private final boolean copy() {
        int i = unregisterClient + 15;
        e = i % 128;
        if (i % 2 != 0 ? !((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) : !((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, true)) {
            if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) {
                int i2 = (unregisterClient + 33) % 128;
                e = i2;
                int i3 = i2 + 81;
                unregisterClient = i3 % 128;
                if (i3 % 2 == 0) {
                    AFa1ySDK.getRevenue();
                    if (AFa1ySDK.getRevenue(this.getCurrencyIso4217Code)) {
                        return false;
                    }
                } else {
                    AFa1ySDK.getRevenue();
                    AFa1ySDK.getRevenue(this.getCurrencyIso4217Code);
                    throw null;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"HardwareIds"})
    private final String component4() {
        String str;
        int i = e + 119;
        unregisterClient = i % 128;
        int i2 = i % 2;
        try {
        } catch (Exception e2) {
            AFLogger.afErrorLog(e2.getMessage(), e2);
            str = i2;
        }
        if (i2 == 0) {
            String monetizationNetwork = this.component1.getMonetizationNetwork("androidIdCached", (String) null);
            String string = Settings.Secure.getString(this.getCurrencyIso4217Code.getContentResolver(), "android_id");
            str = monetizationNetwork;
            if (string != null) {
                unregisterClient = (e + 29) % 128;
                return string;
            }
            if (str != 0) {
                AFLogger.afDebugLog("use cached AndroidId: " + str);
                return str;
            }
            return null;
        }
        this.component1.getMonetizationNetwork("androidIdCached", (String) null);
        Settings.Secure.getString(this.getCurrencyIso4217Code.getContentResolver(), "android_id");
        throw null;
    }

    private boolean component3() {
        unregisterClient = (e + 73) % 128;
        boolean parseBoolean = Boolean.parseBoolean(this.component1.getMonetizationNetwork("sentSuccessfully", (String) null));
        int i = e + 13;
        unregisterClient = i % 128;
        if (i % 2 == 0) {
            return parseBoolean;
        }
        throw null;
    }

    private final String equals() {
        int i = unregisterClient + 111;
        e = i % 128;
        if (i % 2 != 0) {
            File mediationNetwork = getMediationNetwork(getCurrencyIso4217Code("ro.appsflyer.preinstall.path"));
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork(getMonetizationNetwork("AF_PRE_INSTALL_PATH"));
                unregisterClient = (e + 125) % 128;
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork("/data/local/tmp/pre_install.appsflyer");
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork("/etc/pre_install.appsflyer");
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                return null;
            }
            return getMediationNetwork(mediationNetwork, this.getCurrencyIso4217Code.getPackageName());
        }
        getCurrencyIso4217Code(getMediationNetwork(getCurrencyIso4217Code("ro.appsflyer.preinstall.path")));
        throw null;
    }

    private final String AFAdRevenueData(String str) {
        boolean z = true;
        int i = e + 43;
        unregisterClient = i % 128;
        if (i % 2 == 0 ? ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, false) : ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, true)) {
            if (str == null || str.length() == 0) {
                e = (unregisterClient + 13) % 128;
            } else {
                z = false;
            }
            if (z) {
                if (copy()) {
                    int i2 = e + 105;
                    unregisterClient = i2 % 128;
                    if (i2 % 2 == 0) {
                        return component4();
                    }
                    component4();
                    throw null;
                }
                return null;
            }
        }
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final long getCurrencyIso4217Code() {
        e = (unregisterClient + 57) % 128;
        long currentTimeMillis = System.currentTimeMillis();
        int i = e + 121;
        unregisterClient = i % 128;
        if (i % 2 == 0) {
            return currentTimeMillis;
        }
        throw null;
    }

    private static void areAllFieldsValid(@NotNull Map<String, Object> map) {
        e = (unregisterClient + 91) % 128;
        Object[] objArr = new Object[1];
        a("\u008f\u0089\u0087\u0083\u008e", null, null, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 127, objArr);
        map.put(((String) objArr[0]).intern(), Build.BRAND);
        map.put("device", Build.DEVICE);
        map.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
        map.put(ServiceProvider.NAMED_SDK, String.valueOf(Build.VERSION.SDK_INT));
        map.put("model", Build.MODEL);
        map.put("deviceType", Build.TYPE);
        e = (unregisterClient + 19) % 128;
    }

    private final void component4(Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -753773633, 753773645, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull Map<String, Object> map, int i, int i2) {
        boolean z;
        map.put("counter", String.valueOf(i));
        map.put("iaecounter", String.valueOf(i2));
        if (component3()) {
            unregisterClient = (e + 67) % 128;
            z = false;
        } else {
            unregisterClient = (e + 109) % 128;
            z = true;
        }
        map.put("isFirstCall", String.valueOf(z));
    }

    private void AFAdRevenueData(@NotNull AFh1mSDK aFh1mSDK, @Nullable String str, @Nullable String str2, @Nullable AFb1rSDK aFb1rSDK) {
        e = (unregisterClient + 61) % 128;
        Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
        if (aFh1mSDK.AFAdRevenueData() == AFe1pSDK.CONVERSION) {
            component2(map);
            copy(map);
            toString(map);
            AFa1vSDK.getMonetizationNetwork(this.copy, this.component4);
        }
        getRevenue(new Object[]{this, map}, -1147564241, 1147564241, System.identityHashCode(this));
        component3(map);
        getRevenue(new Object[]{this, map}, -841219204, 841219208, System.identityHashCode(this));
        getMonetizationNetwork(map, str2);
        AFAdRevenueData(map, str);
        hashCode(map);
        if (aFb1rSDK != null) {
            e = (unregisterClient + 31) % 128;
            aFb1rSDK.getCurrencyIso4217Code(map);
            return;
        }
        int i = e + 35;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            int i2 = 41 / 0;
        }
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        e = (unregisterClient + 69) % 128;
        long monetizationNetwork = aFg1rSDK.component1.getMonetizationNetwork("AppsFlyerTimePassedSincePrevLaunch", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        aFg1rSDK.component1.AFAdRevenueData("AppsFlyerTimePassedSincePrevLaunch", currentTimeMillis);
        map.put("timepassedsincelastlaunch", String.valueOf(monetizationNetwork > 0 ? TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - monetizationNetwork) : -1L));
        int i = e + 107;
        unregisterClient = i % 128;
        if (i % 2 != 0) {
            int i2 = 45 / 0;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMediationNetwork(@NotNull AFh1mSDK aFh1mSDK) {
        AFd1aSDK aFd1aSDK;
        if (!this.component4.component2()) {
            AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData).put("ad_ids_disabled", Boolean.TRUE);
        } else {
            AFh1rSDK aFh1rSDK = this.component4.getMonetizationNetwork.component3;
            if (aFh1rSDK == null) {
                return;
            }
            String str = aFh1rSDK.component3;
            if (str != null && str.length() != 0) {
                unregisterClient = (e + 121) % 128;
                aFh1mSDK.getMonetizationNetwork("gaidError", aFh1rSDK.component3);
            }
            String str2 = aFh1rSDK.getCurrencyIso4217Code;
            if (str2 != null && aFh1rSDK.AFAdRevenueData != null) {
                aFh1mSDK.getMonetizationNetwork("advertiserId", str2);
                aFh1mSDK.getMonetizationNetwork("advertiserIdEnabled", String.valueOf(aFh1rSDK.AFAdRevenueData));
                aFh1mSDK.getMonetizationNetwork("isGaidWithGps", String.valueOf(aFh1rSDK.getMediationNetwork));
            }
        }
        AFh1rSDK aFh1rSDK2 = this.component4.getMonetizationNetwork.component3;
        aFh1mSDK.getMonetizationNetwork("GAID_retry", String.valueOf(aFh1rSDK2 != null ? Intrinsics.areEqual(aFh1rSDK2.component2, Boolean.TRUE) : false));
        if (!CollectionsKt.listOf((Object[]) new AFe1pSDK[]{AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH}).contains(aFh1mSDK.AFAdRevenueData()) || (aFd1aSDK = this.toString.component4) == null) {
            return;
        }
        int i = unregisterClient + 57;
        e = i % 128;
        if (i % 2 != 0) {
            AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData).put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getMediationNetwork));
        } else {
            AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData).put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getMediationNetwork));
            throw null;
        }
    }

    @SuppressLint({"PrivateApi"})
    @VisibleForTesting
    @Nullable
    private static String getCurrencyIso4217Code(@Nullable String str) {
        unregisterClient = (e + 75) % 128;
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            e = (unregisterClient + 123) % 128;
            return str2;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return null;
        }
    }

    private void getMonetizationNetwork(@NotNull Map<String, Object> map, boolean z) {
        e = (unregisterClient + 19) % 128;
        map.put("platformextension", this.AFAdRevenueData);
        if (z) {
            map.put("platform_extension_v2", this.getMediationNetwork.getCurrencyIso4217Code());
        }
        unregisterClient = (e + 3) % 128;
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, @Nullable String str) {
        int i = unregisterClient;
        e = (i + 7) % 128;
        if (str != null) {
            e = (i + 89) % 128;
            if (str.length() != 0) {
                map.put("referrer", str);
            }
        }
        Object monetizationNetwork = this.component1.getMonetizationNetwork("extraReferrers", (String) null);
        if (monetizationNetwork != null) {
            map.put("extraReferrers", monetizationNetwork);
        }
        String referrer = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getReferrer(this.component1);
        if (referrer != null && referrer.length() != 0) {
            unregisterClient = (e + 27) % 128;
            if (map.get("referrer") == null) {
                map.put("referrer", referrer);
                return;
            }
            return;
        }
        e = (unregisterClient + 111) % 128;
    }

    private static boolean getCurrencyIso4217Code(File file) {
        int i = e;
        unregisterClient = (i + 33) % 128;
        if (file != null) {
            unregisterClient = (i + 79) % 128;
            if (file.exists()) {
                int i2 = unregisterClient + 59;
                e = i2 % 128;
                if (i2 % 2 != 0) {
                    return false;
                }
                throw null;
            }
            return true;
        }
        return true;
    }

    @Nullable
    private String getMonetizationNetwork(int i) {
        String str = null;
        if (this.component1.getMonetizationNetwork("INSTALL_STORE")) {
            unregisterClient = (e + 83) % 128;
            String monetizationNetwork = this.component1.getMonetizationNetwork("INSTALL_STORE", (String) null);
            int i2 = e + 21;
            unregisterClient = i2 % 128;
            if (i2 % 2 == 0) {
                return monetizationNetwork;
            }
            throw null;
        }
        if (i <= 1) {
            int i3 = unregisterClient + 103;
            e = i3 % 128;
            if (i3 % 2 != 0) {
                str = areAllFieldsValid();
                this.component1.getRevenue("INSTALL_STORE", str);
                return str;
            }
        }
        unregisterClient = (e + 77) % 128;
        this.component1.getRevenue("INSTALL_STORE", str);
        return str;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, 528204691, -528204690, System.identityHashCode(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        r2.put("phone", r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void getMonetizationNetwork(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r2, @org.jetbrains.annotations.Nullable java.lang.String r3) {
        /*
            int r0 = com.appsflyer.internal.AFg1rSDK.e
            int r0 = r0 + 87
            int r1 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L13
            r0 = 86
            int r0 = r0 / 0
            if (r3 == 0) goto L1a
            goto L15
        L13:
            if (r3 == 0) goto L1a
        L15:
            java.lang.String r0 = "phone"
            r2.put(r0, r3)
        L1a:
            int r2 = com.appsflyer.internal.AFg1rSDK.e
            int r2 = r2 + 61
            int r3 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L2a
            r2 = 36
            int r2 = r2 / 0
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMonetizationNetwork(java.util.Map, java.lang.String):void");
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        Map map = (Map) objArr[0];
        e = (unregisterClient + 11) % 128;
        try {
            map.put("lang", Locale.getDefault().getDisplayLanguage());
        } catch (Exception e2) {
            AFLogger.afErrorLog("Exception while collecting display language name. ", e2);
        }
        try {
            map.put("lang_code", Locale.getDefault().getLanguage());
        } catch (Exception e3) {
            AFLogger.afErrorLog("Exception while collecting display language code. ", e3);
        }
        try {
            map.put(AdRevenueScheme.COUNTRY, Locale.getDefault().getCountry());
            unregisterClient = (e + 85) % 128;
            return null;
        } catch (Exception e4) {
            AFLogger.afErrorLog("Exception while collecting country name. ", e4);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
        if (r6 != true) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object AFAdRevenueData(java.lang.Object[] r10) {
        /*
            r0 = 0
            r1 = r10[r0]
            com.appsflyer.internal.AFg1rSDK r1 = (com.appsflyer.internal.AFg1rSDK) r1
            r2 = 1
            r3 = r10[r2]
            java.util.Map r3 = (java.util.Map) r3
            r4 = 2
            r10 = r10[r4]
            java.lang.Number r10 = (java.lang.Number) r10
            int r10 = r10.intValue()
            com.appsflyer.internal.AFc1oSDK r5 = r1.component4
            java.lang.String r5 = r5.component3()
            com.appsflyer.internal.AFc1qSDK r6 = r1.component1
            java.lang.String r6 = AFAdRevenueData(r6, r5)
            if (r6 == 0) goto L31
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r5)
            if (r7 != 0) goto L31
            int r7 = com.appsflyer.internal.AFg1rSDK.e
            int r7 = r7 + 125
            int r7 = r7 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r7
            r7 = r2
            goto L32
        L31:
            r7 = r0
        L32:
            if (r6 != 0) goto L38
            if (r5 == 0) goto L38
            r6 = r2
            goto L39
        L38:
            r6 = r0
        L39:
            r8 = 0
            if (r7 != 0) goto L4b
            int r7 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r7 = r7 + 83
            int r9 = r7 % 128
            com.appsflyer.internal.AFg1rSDK.e = r9
            int r7 = r7 % r4
            if (r7 == 0) goto L4a
            if (r6 == r2) goto L4b
            goto L50
        L4a:
            throw r8
        L4b:
            java.lang.String r6 = "af_latestchannel"
            r3.put(r6, r5)
        L50:
            java.lang.String r5 = r1.getMonetizationNetwork(r10)
            if (r5 == 0) goto L63
            java.util.Locale r6 = java.util.Locale.getDefault()
            java.lang.String r5 = r5.toLowerCase(r6)
            java.lang.String r6 = "af_installstore"
            r3.put(r6, r5)
        L63:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r10)
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r0] = r1
            r4[r2] = r5
            r0 = -994471321(0xffffffffc4b99267, float:-1484.5751)
            r2 = 994471330(0x3b466da2, float:0.0030277749)
            java.lang.Object r10 = getRevenue(r4, r0, r2, r10)
            java.lang.String r10 = (java.lang.String) r10
            if (r10 == 0) goto L90
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r10 = r10.toLowerCase(r0)
            java.lang.String r0 = "af_preinstall_name"
            r3.put(r0, r10)
            int r10 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r10 = r10 + 19
            int r10 = r10 % 128
            com.appsflyer.internal.AFg1rSDK.e = r10
        L90:
            java.lang.String r10 = r1.areAllFieldsValid()
            if (r10 == 0) goto La3
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r10 = r10.toLowerCase(r0)
            java.lang.String r0 = "af_currentstore"
            r3.put(r0, r10)
        La3:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.AFAdRevenueData(java.lang.Object[]):java.lang.Object");
    }

    private final String getMonetizationNetwork(String str) {
        e = (unregisterClient + 119) % 128;
        String currencyIso4217Code = this.component4.getCurrencyIso4217Code(str);
        e = (unregisterClient + 69) % 128;
        return currencyIso4217Code;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // com.appsflyer.internal.AFg1nSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void getMonetizationNetwork(@org.jetbrains.annotations.NotNull com.appsflyer.internal.AFh1mSDK r5) {
        /*
            r4 = this;
            java.util.Map<java.lang.String, java.lang.Object> r0 = r5.AFAdRevenueData
            java.lang.String r1 = "open_referrer"
            java.lang.String r2 = r5.getMonetizationNetwork
            r0.put(r1, r2)
            java.lang.String r1 = r5.copydefault
            if (r1 == 0) goto L43
            int r2 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r2 = r2 + 37
            int r3 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.e = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L3e
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L20
            goto L43
        L20:
            int r1 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r1 = r1 + 111
            int r2 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.e = r2
            int r1 = r1 % 2
            java.lang.String r2 = "af_web_referrer"
            if (r1 != 0) goto L38
            java.lang.String r5 = r5.copydefault
            r0.put(r2, r5)
            r5 = 19
            int r5 = r5 / 0
            goto L4b
        L38:
            java.lang.String r5 = r5.copydefault
            r0.put(r2, r5)
            goto L4b
        L3e:
            kotlin.text.StringsKt.isBlank(r1)
            r5 = 0
            throw r5
        L43:
            int r5 = com.appsflyer.internal.AFg1rSDK.e
            int r5 = r5 + 23
            int r5 = r5 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r5
        L4b:
            int r5 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r5 = r5 + 61
            int r0 = r5 % 128
            com.appsflyer.internal.AFg1rSDK.e = r0
            int r5 = r5 % 2
            if (r5 != 0) goto L5b
            r5 = 77
            int r5 = r5 / 0
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMonetizationNetwork(com.appsflyer.internal.AFh1mSDK):void");
    }

    private final SimpleDateFormat getRevenue() {
        int i = unregisterClient + 71;
        e = i % 128;
        if (i % 2 != 0) {
            return (SimpleDateFormat) this.AFKeystoreWrapper.getValue();
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.AFKeystoreWrapper.getValue();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getRevenue(@NotNull AFh1mSDK aFh1mSDK) {
        int i = unregisterClient + 75;
        e = i % 128;
        if (i % 2 != 0) {
            Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
            if (aFh1mSDK.getRevenue()) {
                unregisterClient = (e + 47) % 128;
                String str = aFh1mSDK.component1;
                AFc1eSDK aFc1eSDK = this.toString;
                AFAdRevenueData(aFh1mSDK, str, aFc1eSDK.getMediationNetwork, aFc1eSDK.AFAdRevenueData);
            } else if (!(aFh1mSDK instanceof AFh1fSDK)) {
                getMediationNetwork(map, aFh1mSDK.areAllFieldsValid);
            }
            if (CollectionsKt.listOf((Object[]) new AFe1pSDK[]{AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH, AFe1pSDK.INAPP}).contains(aFh1mSDK.AFAdRevenueData())) {
                int i2 = e + 107;
                unregisterClient = i2 % 128;
                if (i2 % 2 != 0) {
                    equals(map);
                    int i3 = 37 / 0;
                } else {
                    equals(map);
                }
            }
            w(map);
            getRevenue(new Object[]{map}, -1520031212, 1520031215, (int) System.currentTimeMillis());
            AFInAppEventType(map);
            AFInAppEventParameterName(map);
            AFAdRevenueData(map);
            getMonetizationNetwork(map, aFh1mSDK.getRevenue());
            e(map);
            i(map);
            getMediationNetwork(map, aFh1mSDK);
            map.put("af_events_api", "1");
            return;
        }
        Map<String, Object> map2 = aFh1mSDK.AFAdRevenueData;
        aFh1mSDK.getRevenue();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void AFAdRevenueData(@NotNull Map<String, Object> map) {
        String currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(this.component4.getMediationNetwork);
        if (currencyIso4217Code != null) {
            map.put("uid", currencyIso4217Code);
            if (!(!this.component4.getMediationNetwork.getMediationNetwork("CUSTOM_INSTALL_ID_APPLIED", false))) {
                e = (unregisterClient + 97) % 128;
                map.put("custom_install_id", Boolean.TRUE);
            }
            int i = unregisterClient + 87;
            e = i % 128;
            if (i % 2 == 0) {
                int i2 = 63 / 0;
            }
        }
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        Object m438constructorimpl;
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i = (e + 91) % 128;
        unregisterClient = i;
        String str = aFg1rSDK.toString.getMonetizationNetwork;
        if (str != null) {
            e = (i + 107) % 128;
            if (map.get("af_deeplink") != null) {
                AFLogger.afDebugLog("Skip 'af' payload as deeplink was found by path");
            } else {
                try {
                    Result.Companion companion = Result.Companion;
                    JSONObject jSONObject = new JSONObject(str);
                    jSONObject.put("isPush", "true");
                    map.put("af_deeplink", jSONObject.toString());
                    m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
                    unregisterClient = (e + 59) % 128;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
                }
                Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
                if (m441exceptionOrNullimpl != null) {
                    AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.GENERAL, "Exception while trying to create JSONObject from pushPayload", m441exceptionOrNullimpl, false, false, false, false, 120, null);
                } else {
                    unregisterClient = (e + 3) % 128;
                }
                Result.m437boximpl(m438constructorimpl);
            }
        }
        aFg1rSDK.toString.getMonetizationNetwork = null;
        return null;
    }

    private static String AFAdRevenueData(AFc1qSDK aFc1qSDK, String str) {
        int i = unregisterClient + 73;
        e = i % 128;
        if (i % 2 != 0) {
            String monetizationNetwork = aFc1qSDK.getMonetizationNetwork("CACHED_CHANNEL", (String) null);
            if (monetizationNetwork != null) {
                e = (unregisterClient + 39) % 128;
                return monetizationNetwork;
            }
            aFc1qSDK.getRevenue("CACHED_CHANNEL", str);
            return str;
        }
        aFc1qSDK.getMonetizationNetwork("CACHED_CHANNEL", (String) null);
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    @NotNull
    public final Long getMonetizationNetwork() {
        return (Long) getRevenue(new Object[]{this}, 1297709710, -1297709700, System.identityHashCode(this));
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, int i) {
        getRevenue(new Object[]{this, map, Integer.valueOf(i)}, 1731268052, -1731268046, i);
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void AFAdRevenueData(@NotNull AFh1mSDK aFh1mSDK) {
        getRevenue(new Object[]{this, aFh1mSDK}, 572486758, -572486747, System.identityHashCode(this));
    }

    private void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull String str) {
        unregisterClient = (e + 49) % 128;
        try {
            String monetizationNetwork = this.component1.getMonetizationNetwork("prev_event_name", (String) null);
            if (monetizationNetwork != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("prev_event_timestamp", this.component1.getMonetizationNetwork("prev_event_timestamp", -1L));
                jSONObject.put("prev_event_name", monetizationNetwork);
                map.put("prev_event", jSONObject);
            }
            this.component1.getRevenue("prev_event_name", str);
            this.component1.AFAdRevenueData("prev_event_timestamp", System.currentTimeMillis());
            int i = unregisterClient + 113;
            e = i % 128;
            if (i % 2 == 0) {
                throw null;
            }
        } catch (Exception e2) {
            AFLogger.afErrorLog("Error while processing previous event.", e2);
        }
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getRevenue(@NotNull Map<String, Object> map) {
        AFi1rSDK aFi1rSDK;
        AFi1qSDK aFi1qSDK = this.component3.getMonetizationNetwork;
        if (aFi1qSDK != null) {
            unregisterClient = (e + 107) % 128;
            aFi1rSDK = aFi1qSDK.getMonetizationNetwork();
        } else {
            aFi1rSDK = null;
        }
        if (aFi1rSDK != null) {
            map.put("network", aFi1rSDK.getCurrencyIso4217Code);
            map.put("ivc", Boolean.valueOf(aFi1rSDK.getMediationNetwork()));
            if (((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.DISABLE_NETWORK_DATA, false)) {
                return;
            }
            int i = (e + 65) % 128;
            unregisterClient = i;
            int i2 = i + 99;
            e = i2 % 128;
            if (i2 % 2 != 0) {
                String str = aFi1rSDK.getMonetizationNetwork;
                if (str != null) {
                    map.put("operator", str);
                }
                String str2 = aFi1rSDK.getRevenue;
                if (str2 != null) {
                    map.put("carrier", str2);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @NotNull
    private String getMediationNetwork(@NotNull SimpleDateFormat simpleDateFormat, int i) {
        String str;
        int i2 = e + 7;
        unregisterClient = i2 % 128;
        if (i2 % 2 == 0) {
            String monetizationNetwork = this.component1.getMonetizationNetwork("appsFlyerFirstInstall", (String) null);
            if (monetizationNetwork == null) {
                int i3 = unregisterClient;
                e = (i3 + 93) % 128;
                if (i <= 1) {
                    AFLogger.afDebugLog("AppsFlyer: first launch detected");
                    str = simpleDateFormat.format(new Date());
                } else {
                    e = (i3 + 41) % 128;
                    str = "";
                }
                monetizationNetwork = str;
                this.component1.getRevenue("appsFlyerFirstInstall", monetizationNetwork);
            }
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.GENERAL;
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "AppsFlyer: first launch date: " + monetizationNetwork, false, 4, null);
            return monetizationNetwork;
        }
        this.component1.getMonetizationNetwork("appsFlyerFirstInstall", (String) null);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
        if (r2 == null) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
        if (java.lang.Integer.parseInt(r2) <= 0) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        r3 = com.appsflyer.internal.AFg1rSDK.unregisterClient + 109;
        com.appsflyer.internal.AFg1rSDK.e = r3 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        if ((r3 % 2) != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0049, code lost:
        r6.put("reinstallCounter", r2);
        r6.put("originalAppsflyerId", r1);
        r6 = 28 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        r6.put("reinstallCounter", r2);
        r6.put("originalAppsflyerId", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r1 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r1 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        com.appsflyer.internal.AFg1rSDK.unregisterClient = (com.appsflyer.internal.AFg1rSDK.e + 67) % 128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object getRevenue(java.lang.Object[] r6) {
        /*
            r0 = 0
            r6 = r6[r0]
            java.util.Map r6 = (java.util.Map) r6
            int r1 = com.appsflyer.internal.AFg1rSDK.e
            int r1 = r1 + 79
            int r2 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r2
            int r1 = r1 % 2
            if (r1 == 0) goto L1f
            java.lang.String r1 = com.appsflyer.internal.AFa1vSDK.getMonetizationNetwork()
            java.lang.String r2 = com.appsflyer.internal.AFa1vSDK.getCurrencyIso4217Code()
            r3 = 20
            int r3 = r3 / r0
            if (r1 == 0) goto L59
            goto L29
        L1f:
            java.lang.String r1 = com.appsflyer.internal.AFa1vSDK.getMonetizationNetwork()
            java.lang.String r2 = com.appsflyer.internal.AFa1vSDK.getCurrencyIso4217Code()
            if (r1 == 0) goto L59
        L29:
            int r3 = com.appsflyer.internal.AFg1rSDK.e
            int r3 = r3 + 67
            int r3 = r3 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r3
            if (r2 == 0) goto L59
            int r3 = java.lang.Integer.parseInt(r2)
            if (r3 <= 0) goto L59
            int r3 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r3 = r3 + 109
            int r4 = r3 % 128
            com.appsflyer.internal.AFg1rSDK.e = r4
            int r3 = r3 % 2
            java.lang.String r4 = "originalAppsflyerId"
            java.lang.String r5 = "reinstallCounter"
            if (r3 != 0) goto L53
            r6.put(r5, r2)
            r6.put(r4, r1)
            r6 = 28
            int r6 = r6 / r0
            goto L59
        L53:
            r6.put(r5, r2)
            r6.put(r4, r1)
        L59:
            int r6 = com.appsflyer.internal.AFg1rSDK.e
            int r6 = r6 + 57
            int r0 = r6 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r0
            int r6 = r6 % 2
            r0 = 0
            if (r6 != 0) goto L67
            return r0
        L67:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getRevenue(java.lang.Object[]):java.lang.Object");
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull AFe1pSDK aFe1pSDK) {
        e = (unregisterClient + 43) % 128;
        if (!copydefault().contains(aFe1pSDK)) {
            unregisterClient = (e + 57) % 128;
        } else if (this.toString.getMediationNetwork()) {
            map.put("app_set_id", MapsKt.mapOf(TuplesKt.to("app_set_id_disabled", Boolean.TRUE)));
            if (this.toString.copydefault != null) {
                AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.APP_SET_ID, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK.", false, 4, null);
            } else {
                AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.APP_SET_ID, "App Set ID collection is disabled. Skipping inclusion in the event payload.", false, 4, null);
            }
        } else {
            AFb1gSDK aFb1gSDK = this.toString.copydefault;
            if (aFb1gSDK != null) {
                map.put("app_set_id", MapsKt.mapOf(TuplesKt.to("scope", Integer.valueOf(aFb1gSDK.getMonetizationNetwork)), TuplesKt.to("id", aFb1gSDK.getMediationNetwork)));
            }
        }
    }

    private void getRevenue(@NotNull Map<String, Object> map, @Nullable String str) {
        getRevenue(new Object[]{this, map, str}, 274047423, -274047418, System.identityHashCode(this));
    }

    @Nullable
    private String getRevenue(int i) {
        return (String) getRevenue(new Object[]{this, Integer.valueOf(i)}, -994471321, 994471330, i);
    }

    private static File getMediationNetwork(String str) {
        int i = e + 5;
        unregisterClient = i % 128;
        try {
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
        }
        if (i % 2 == 0) {
            if (str != null && StringsKt.trim((CharSequence) str).toString().length() > 0) {
                File file = new File(StringsKt.trim((CharSequence) str).toString());
                int i2 = e + 55;
                unregisterClient = i2 % 128;
                if (i2 % 2 == 0) {
                    return file;
                }
                throw null;
            }
            return null;
        }
        throw null;
    }

    private static String getMediationNetwork(File file, String str) {
        InputStreamReader inputStreamReader;
        try {
            try {
                if (file == null) {
                    int i = unregisterClient + 65;
                    e = i % 128;
                    if (i % 2 != 0) {
                        return null;
                    }
                    throw null;
                }
                try {
                    Properties properties = new Properties();
                    inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
                    try {
                        properties.load(inputStreamReader);
                        AFLogger.afInfoLog("Found PreInstall property!");
                        String property = properties.getProperty(str);
                        try {
                            inputStreamReader.close();
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                        }
                        int i2 = unregisterClient + 55;
                        e = i2 % 128;
                        if (i2 % 2 != 0) {
                            return property;
                        }
                        throw null;
                    } catch (FileNotFoundException unused) {
                        AFLogger.afDebugLog("PreInstall file wasn't found: " + file.getAbsolutePath());
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        AFLogger.afErrorLog(th.getMessage(), th);
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        return null;
                    }
                } catch (FileNotFoundException unused2) {
                    inputStreamReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = null;
                }
            } catch (Throwable th4) {
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable th5) {
                        AFLogger.afErrorLog(th5.getMessage(), th5);
                    }
                }
                throw th4;
            }
        } catch (Throwable th6) {
            AFLogger.afErrorLog(th6.getMessage(), th6);
        }
    }

    private static void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull AFh1mSDK aFh1mSDK) {
        String str = aFh1mSDK.areAllFieldsValid;
        if (str != null) {
            map.put("eventName", str);
            Map map2 = aFh1mSDK.getRevenue;
            if (map2 == null) {
                map2 = new HashMap();
            }
            map.put("eventValue", new JSONObject(map2).toString());
        }
    }

    private final void getMediationNetwork(Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -539509618, 539509626, System.identityHashCode(this));
    }

    private final AppsFlyerProperties getMediationNetwork() {
        return (AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this));
    }
}
