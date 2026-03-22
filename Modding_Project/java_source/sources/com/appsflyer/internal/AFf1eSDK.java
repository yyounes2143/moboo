package com.appsflyer.internal;

import android.content.Context;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.AFf1dSDK;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Constructor;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1eSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static char areAllFieldsValid = 28972;
    private static char component4 = 39723;
    private static char copydefault = 3892;
    private static int equals = 0;
    private static int hashCode = 1;
    private static char toString = 50688;
    private volatile String component1;
    @Nullable
    private volatile String component2;
    @NonNull
    private final AFf1dSDK getCurrencyIso4217Code;
    Map<String, Object> getMediationNetwork;
    @NonNull
    private final AFc1hSDK getMonetizationNetwork;
    private long getRevenue;
    private boolean AFAdRevenueData = false;
    private volatile boolean component3 = false;

    public AFf1eSDK(@NonNull AFc1hSDK aFc1hSDK, @NonNull AFf1dSDK aFf1dSDK) {
        this.getMonetizationNetwork = aFc1hSDK;
        this.getCurrencyIso4217Code = aFf1dSDK;
    }

    private static void a(String str, int i, Object[] objArr) {
        char[] cArr;
        if (str != null) {
            cArr = str.toCharArray();
        } else {
            cArr = str;
        }
        char[] cArr2 = cArr;
        AFk1qSDK aFk1qSDK = new AFk1qSDK();
        char[] cArr3 = new char[cArr2.length];
        aFk1qSDK.getRevenue = 0;
        char[] cArr4 = new char[2];
        while (true) {
            int i2 = aFk1qSDK.getRevenue;
            if (i2 < cArr2.length) {
                $10 = ($11 + 39) % 128;
                cArr4[0] = cArr2[i2];
                cArr4[1] = cArr2[i2 + 1];
                int i3 = 58224;
                for (int i4 = 0; i4 < 16; i4++) {
                    $11 = ($10 + 91) % 128;
                    char c = cArr4[1];
                    char c2 = cArr4[0];
                    char c3 = (char) (c - (((c2 + i3) ^ ((c2 << 4) + ((char) (copydefault ^ (-1199070254561146252L))))) ^ ((c2 >>> 5) + ((char) (toString ^ (-1199070254561146252L))))));
                    cArr4[1] = c3;
                    cArr4[0] = (char) (c2 - (((c3 >>> 5) + ((char) (areAllFieldsValid ^ (-1199070254561146252L)))) ^ ((c3 + i3) ^ ((c3 << 4) + ((char) (component4 ^ (-1199070254561146252L)))))));
                    i3 -= 40503;
                }
                int i5 = aFk1qSDK.getRevenue;
                cArr3[i5] = cArr4[0];
                cArr3[i5 + 1] = cArr4[1];
                aFk1qSDK.getRevenue = i5 + 2;
            } else {
                objArr[0] = new String(cArr3, 0, i);
                return;
            }
        }
    }

    private boolean component1() {
        int i = hashCode;
        equals = (i + 83) % 128;
        Map<String, Object> map = this.getMediationNetwork;
        if (map != null) {
            equals = (i + 69) % 128;
            if (!map.isEmpty()) {
                hashCode = (equals + 47) % 128;
                return true;
            }
            return false;
        }
        return false;
    }

    @VisibleForTesting
    private long component2() {
        return ((Long) getCurrencyIso4217Code(new Object[]{this}, -518249890, 518249890, System.identityHashCode(this))).longValue();
    }

    public static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i;
        int i5 = ~((~i3) | i4);
        int i6 = (i * (-337)) + (i2 * 339) + (((~((~i2) | i)) | i5 | (~(i | i3))) * (-338)) + ((~(i4 | i2)) * 338) + (((~(i | i2 | i3)) | i5) * 338);
        if (i6 == 1) {
            AFf1eSDK aFf1eSDK = (AFf1eSDK) objArr[0];
            StringBuilder sb = new StringBuilder();
            sb.append(AFb1kSDK.getCurrencyIso4217Code(((AFc1oSDK) objArr[1]).getMediationNetwork));
            sb.append(((Long) getCurrencyIso4217Code(new Object[]{aFf1eSDK}, -518249890, 518249890, System.identityHashCode(aFf1eSDK))).longValue());
            long revenue = AFj1dSDK.getRevenue(AFj1dSDK.AFAdRevenueData(sb.toString()));
            equals = (hashCode + 35) % 128;
            return Long.valueOf(revenue);
        } else if (i6 != 2) {
            int i7 = hashCode;
            equals = (i7 + 117) % 128;
            long j = ((AFf1eSDK) objArr[0]).getRevenue;
            equals = (i7 + 51) % 128;
            return Long.valueOf(j);
        } else {
            String str = (String) objArr[1];
            equals = (hashCode + 91) % 128;
            ((AFf1eSDK) objArr[0]).component2 = str;
            hashCode = (equals + 53) % 128;
            return null;
        }
    }

    public final void AFAdRevenueData(String str) {
        int i = equals + 17;
        hashCode = i % 128;
        if (i % 2 == 0) {
            this.component1 = str;
            int i2 = 0 / 0;
            return;
        }
        this.component1 = str;
    }

    public final void component4() {
        Map<String, Object> map;
        Object currencyIso4217Code;
        int i = equals + 55;
        hashCode = i % 128;
        if (i % 2 == 0) {
            this.getMediationNetwork.put("ttr", Long.valueOf(System.currentTimeMillis() / this.getRevenue));
            map = this.getMediationNetwork;
            currencyIso4217Code = getCurrencyIso4217Code(new Object[]{this}, -518249890, 518249890, System.identityHashCode(this));
        } else {
            this.getMediationNetwork.put("ttr", Long.valueOf(System.currentTimeMillis() - this.getRevenue));
            map = this.getMediationNetwork;
            currencyIso4217Code = getCurrencyIso4217Code(new Object[]{this}, -518249890, 518249890, System.identityHashCode(this));
        }
        map.put("lvl_timestamp", Long.valueOf(((Long) currencyIso4217Code).longValue()));
    }

    @Nullable
    public final String getMediationNetwork() {
        int i = equals + 51;
        hashCode = i % 128;
        if (i % 2 != 0) {
            return this.component1;
        }
        throw null;
    }

    public final void getMonetizationNetwork(boolean z) {
        int i = equals + 47;
        hashCode = i % 128;
        if (i % 2 == 0) {
            this.component3 = z;
            int i2 = 23 / 0;
            return;
        }
        this.component3 = z;
    }

    public final Map<String, Object> getRevenue(Map<String, Object> map) {
        AFc1iSDK aFc1iSDK = new AFc1iSDK(map, this.getMonetizationNetwork.getMonetizationNetwork);
        int i = hashCode + 77;
        equals = i % 128;
        if (i % 2 == 0) {
            return aFc1iSDK;
        }
        throw null;
    }

    public final Map<String, Object> getMediationNetwork(Map<String, Object> map) {
        try {
            Object[] objArr = {map, this.getMonetizationNetwork.getMonetizationNetwork};
            Map map2 = AFa1hSDK.d;
            Object obj = map2.get(-532394666);
            if (obj == null) {
                obj = ((Class) AFa1hSDK.getRevenue(Process.getGidForName("") + 126, (char) TextUtils.getCapsMode("", 0, 0), 36 - (Process.myTid() >> 22))).getDeclaredConstructor(Map.class, Context.class);
                map2.put(-532394666, obj);
            }
            Map<String, Object> map3 = (Map) ((Constructor) obj).newInstance(objArr);
            hashCode = (equals + 115) % 128;
            return map3;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.ANTI_FRAUD, "AFCksmV3: reflection init failed", th, false, false, true);
            return new HashMap();
        }
    }

    public static boolean getRevenue(AFh1mSDK aFh1mSDK, AFc1oSDK aFc1oSDK) {
        String str;
        equals = (hashCode + 115) % 128;
        if (!AFk1wSDK.getMonetizationNetwork(aFc1oSDK.AFAdRevenueData)) {
            str = aFc1oSDK.AFAdRevenueData;
            hashCode = (equals + 1) % 128;
        } else {
            String currencyIso4217Code = aFc1oSDK.getCurrencyIso4217Code("com.appsflyer.security.uuid");
            if (AFk1wSDK.getMonetizationNetwork(currencyIso4217Code)) {
                str = null;
            } else {
                String substring = currencyIso4217Code.substring(0, 8);
                aFc1oSDK.AFAdRevenueData = substring;
                str = substring;
            }
        }
        if (str != null) {
            hashCode = (equals + 83) % 128;
            if (!str.isEmpty()) {
                try {
                    Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
                    Object[] objArr = new Object[1];
                    a("颸╊Џ誢䚯ྸ\uf0ec⣑缞腁羥燓", '<' - AndroidCharacter.getMirror('0'), objArr);
                    long parseLong = Long.parseLong(String.valueOf(map.get(((String) objArr[0]).intern())));
                    char[] charArray = str.toCharArray();
                    int i = ((int) (parseLong % 94)) + 33;
                    for (int i2 = 0; i2 < charArray.length; i2++) {
                        charArray[i2] = (char) (charArray[i2] ^ i);
                    }
                    aFh1mSDK.getMediationNetwork.put("af-sdk-sbid", Base64.encodeToString(new String(charArray).getBytes(Charset.defaultCharset()), 2));
                    return true;
                } catch (Exception e) {
                    AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception occurred while generating sbid ", e);
                }
            }
        }
        return false;
    }

    @Nullable
    public final String AFAdRevenueData() {
        int i = equals + 89;
        hashCode = i % 128;
        if (i % 2 != 0) {
            String str = this.component2;
            int i2 = equals + 81;
            hashCode = i2 % 128;
            if (i2 % 2 != 0) {
                return str;
            }
            throw null;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x007c A[Catch: Exception -> 0x005f, InvocationTargetException -> 0x0061, TRY_LEAVE, TryCatch #2 {InvocationTargetException -> 0x0061, Exception -> 0x005f, blocks: (B:63:0x0044, B:74:0x007c, B:70:0x0063), top: B:98:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0084  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getMonetizationNetwork(com.appsflyer.internal.AFc1qSDK r9) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1eSDK.getMonetizationNetwork(com.appsflyer.internal.AFc1qSDK):java.lang.String");
    }

    public final boolean getCurrencyIso4217Code() {
        int i = hashCode + 39;
        equals = i % 128;
        if (i % 2 == 0) {
            boolean z = this.component3;
            hashCode = (equals + 39) % 128;
            return z;
        }
        throw null;
    }

    @VisibleForTesting
    private long getCurrencyIso4217Code(AFc1oSDK aFc1oSDK) {
        return ((Long) getCurrencyIso4217Code(new Object[]{this, aFc1oSDK}, 1277266909, -1277266908, System.identityHashCode(this))).longValue();
    }

    @NonNull
    public final Map<String, Object> getRevenue() {
        HashMap hashMap = new HashMap();
        if (component1()) {
            hashCode = (equals + 53) % 128;
            hashMap.put("lvl", this.getMediationNetwork);
            hashCode = (equals + 55) % 128;
            return hashMap;
        }
        if (this.AFAdRevenueData) {
            this.getMediationNetwork = new HashMap();
            component4();
            this.getMediationNetwork.put("error", "pending LVL response");
            hashMap.put("lvl", this.getMediationNetwork);
        }
        return hashMap;
    }

    public static void getMonetizationNetwork(AFh1mSDK aFh1mSDK, byte[] bArr) {
        try {
            new AFb1sSDK(aFh1mSDK, bArr).afInfoLog();
            hashCode = (equals + 105) % 128;
        } catch (Exception e) {
            AFLogger.INSTANCE.e(AFg1cSDK.SECURITY, "native: reflection init failed", e, false, false, true);
        }
    }

    public final boolean getMonetizationNetwork() {
        equals = (hashCode + 37) % 128;
        if (!this.AFAdRevenueData || component1()) {
            return false;
        }
        equals = (hashCode + 21) % 128;
        return true;
    }

    public final void getRevenue(AFc1oSDK aFc1oSDK) {
        this.getRevenue = System.currentTimeMillis();
        this.AFAdRevenueData = this.getCurrencyIso4217Code.getRevenue(((Long) getCurrencyIso4217Code(new Object[]{this, aFc1oSDK}, 1277266909, -1277266908, System.identityHashCode(this))).longValue(), this.getMonetizationNetwork.getMonetizationNetwork, new AFf1dSDK.AFa1tSDK() { // from class: com.appsflyer.internal.AFf1eSDK.3
            {
                AFf1eSDK.this = this;
            }

            @Override // com.appsflyer.internal.AFf1dSDK.AFa1tSDK
            public final void getMonetizationNetwork(@NonNull String str, @NonNull String str2) {
                AFf1eSDK.this.getMediationNetwork = new ConcurrentHashMap();
                AFf1eSDK.this.getMediationNetwork.put("signedData", str);
                AFf1eSDK.this.getMediationNetwork.put(InAppPurchaseMetaData.KEY_SIGNATURE, str2);
                AFf1eSDK.this.component4();
                AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
            }

            @Override // com.appsflyer.internal.AFf1dSDK.AFa1tSDK
            public final void getRevenue(String str, Exception exc) {
                AFf1eSDK.this.getMediationNetwork = new ConcurrentHashMap();
                String message = exc.getMessage();
                if (message == null) {
                    message = "unknown";
                }
                AFf1eSDK.this.component4();
                AFf1eSDK.this.getMediationNetwork.put("error", message);
                AFLogger.afErrorLog(str, exc, true, true, false);
            }
        });
        int i = equals + 69;
        hashCode = i % 128;
        if (i % 2 == 0) {
            int i2 = 61 / 0;
        }
    }

    private static boolean getRevenue(Context context) {
        equals = (hashCode + 63) % 128;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false)) {
            return true;
        }
        equals = (hashCode + 3) % 128;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) {
            return true;
        }
        equals = (hashCode + 123) % 128;
        AFa1ySDK.getRevenue();
        if (AFa1ySDK.getRevenue(context)) {
            hashCode = (equals + 75) % 128;
            return false;
        }
        return true;
    }

    public final void getRevenue(@NonNull String str) {
        getCurrencyIso4217Code(new Object[]{this, str}, -1410448561, 1410448563, System.identityHashCode(this));
    }
}
