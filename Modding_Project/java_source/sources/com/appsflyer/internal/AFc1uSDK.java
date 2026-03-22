package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import j$.util.Objects;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFc1uSDK {
    public AFe1pSDK AFAdRevenueData;
    private byte[] component4;
    String getCurrencyIso4217Code;
    public String getMediationNetwork;
    public Map<String, String> getMonetizationNetwork;
    public String getRevenue;

    public AFc1uSDK(String str, byte[] bArr, String str2, AFe1pSDK aFe1pSDK, Map<String, String> map) {
        this.getRevenue = str;
        this.component4 = bArr;
        this.getCurrencyIso4217Code = str2;
        this.AFAdRevenueData = aFe1pSDK;
        this.getMonetizationNetwork = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AFc1uSDK.class == obj.getClass()) {
            AFc1uSDK aFc1uSDK = (AFc1uSDK) obj;
            if (Objects.equals(this.getCurrencyIso4217Code, aFc1uSDK.getCurrencyIso4217Code) && Arrays.equals(this.component4, aFc1uSDK.component4) && Objects.equals(this.getRevenue, aFc1uSDK.getRevenue) && Objects.equals(this.getMediationNetwork, aFc1uSDK.getMediationNetwork) && Objects.equals(this.getMonetizationNetwork, aFc1uSDK.getMonetizationNetwork) && this.AFAdRevenueData == aFc1uSDK.AFAdRevenueData) {
                return true;
            }
        }
        return false;
    }

    public final byte[] getMediationNetwork() {
        return this.component4;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        String str = this.getCurrencyIso4217Code;
        int i5 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int hashCode = ((i * 31) + Arrays.hashCode(this.component4)) * 31;
        String str2 = this.getRevenue;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (hashCode + i2) * 31;
        String str3 = this.getMediationNetwork;
        if (str3 != null) {
            i3 = str3.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        AFe1pSDK aFe1pSDK = this.AFAdRevenueData;
        if (aFe1pSDK != null) {
            i4 = aFe1pSDK.hashCode();
        } else {
            i4 = 0;
        }
        int i8 = (i7 + i4) * 31;
        Map<String, String> map = this.getMonetizationNetwork;
        if (map != null) {
            i5 = map.hashCode();
        }
        return i8 + i5;
    }

    public AFc1uSDK(char[] cArr) {
        String nextLine;
        Map<String, String> map;
        Scanner scanner = new Scanner(new String(cArr));
        while (scanner.hasNextLine()) {
            try {
                nextLine = scanner.nextLine();
            } catch (Throwable th) {
                try {
                    scanner.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
            if (nextLine.startsWith("url=")) {
                this.getRevenue = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.getCurrencyIso4217Code = nextLine.substring(8).trim();
            } else {
                if (nextLine.startsWith("headers=")) {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(Base64.decode(nextLine.substring(8).trim(), 2), Charset.defaultCharset()));
                        if (jSONObject.length() == 0) {
                            map = MapsKt.emptyMap();
                        } else {
                            Sequence asSequence = SequencesKt.asSequence(jSONObject.keys());
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            for (Object obj : asSequence) {
                                Object obj2 = jSONObject.get((String) obj);
                                linkedHashMap.put(obj, Intrinsics.areEqual(obj2, JSONObject.NULL) ? AbstractJsonLexerKt.NULL : obj2.toString());
                            }
                            map = linkedHashMap;
                        }
                        this.getMonetizationNetwork = map;
                    } catch (Exception e) {
                        AFLogger.INSTANCE.e(AFg1cSDK.CACHE, "Error parsing headers", e);
                        this.getMonetizationNetwork = new HashMap();
                    }
                } else if (nextLine.startsWith("data=")) {
                    this.component4 = Base64.decode(nextLine.substring(5).trim(), 2);
                } else if (nextLine.startsWith("type=")) {
                    String trim = nextLine.substring(5).trim();
                    try {
                        this.AFAdRevenueData = AFe1pSDK.valueOf(trim);
                    } catch (Exception e2) {
                        AFLogger.INSTANCE.e(AFg1cSDK.CACHE, "Unknown task type: ".concat(String.valueOf(trim)), e2);
                    }
                }
                scanner.close();
                throw th;
            }
        }
        scanner.close();
    }
}
