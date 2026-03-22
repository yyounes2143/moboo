package com.appsflyer.internal;

import android.text.TextUtils;
import android.view.View;
import android.widget.ExpandableListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1nSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFAdRevenueData = 0;
    private static int component2 = 1;
    private static char[] getCurrencyIso4217Code;
    private static int getMediationNetwork;
    private static boolean getMonetizationNetwork;
    private static boolean getRevenue;

    static {
        getMediationNetwork();
        ExpandableListView.getPackedPositionChild(0L);
        AFAdRevenueData = (component2 + 25) % 128;
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
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1nSDK.a(java.lang.String, int[], java.lang.String, int, java.lang.Object[]):void");
    }

    @NonNull
    private static AFi1sSDK getCurrencyIso4217Code(@NonNull AFi1vSDK aFi1vSDK, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        AFi1ySDK aFi1ySDK;
        boolean z = true;
        if (str == null) {
            if (aFi1vSDK.getRevenue != AFh1dSDK.DEFAULT) {
                z = false;
            }
            return new AFi1sSDK(z, AFi1ySDK.NA);
        }
        Object[] objArr = new Object[1];
        a("\u008c\u0085\u0081\u0086\u0087\u0085\u008c\u0082\u008b\u0085\u0082\u0082\u0082\u0081\u0086\u0082\u0086\u0081\u008b\u0082\u008c\u0087\u008d\u0083\u0082\u0087\u008c\u0083\u0086\u0087\u0083\u0083\u008b\u0087\u0081\u0083\u008a\u0086\u0089\u0086\u0088\u0086\u0084\u0085\u0087\u0086\u0083\u0085\u0085\u0086\u0086\u0085\u0084\u0082\u0084\u0081\u0083\u0082\u0083\u0081\u0081\u0082\u0081\u0081", null, null, 127 - View.resolveSizeAndState(0, 0, 0), objArr);
        String intern = ((String) objArr[0]).intern();
        if (aFi1vSDK.getRevenue == AFh1dSDK.CUSTOM) {
            str4 = new StringBuilder(str2).reverse().toString();
        } else {
            str4 = "";
            str3 = intern;
        }
        boolean equals = getMonetizationNetwork(new StringBuilder(str3).reverse().toString(), aFi1vSDK.getMediationNetwork, "android", "v1", str4).equals(str);
        if (equals) {
            aFi1ySDK = AFi1ySDK.SUCCESS;
        } else {
            aFi1ySDK = AFi1ySDK.FAILURE;
        }
        return new AFi1sSDK(equals, aFi1ySDK);
    }

    public static void getMediationNetwork() {
        getCurrencyIso4217Code = new char[]{36169, 36173, 36172, 36163, 36168, 36174, 36175, 36162, 36170, 36190, 36171, 36187, 36191};
        getMediationNetwork = 1912311066;
        getMonetizationNetwork = true;
        getRevenue = true;
    }

    @VisibleForTesting
    private static String getMonetizationNetwork(String str, String str2, String str3, String str4, String str5) {
        String monetizationNetwork = AFj1dSDK.getMonetizationNetwork(TextUtils.join("\u2063", new String[]{str2, str3, str4, str5, ""}), str);
        if (monetizationNetwork.length() < 12) {
            int i = (AFAdRevenueData + 113) % 128;
            component2 = i;
            int i2 = i + 111;
            AFAdRevenueData = i2 % 128;
            if (i2 % 2 != 0) {
                int i3 = 63 / 0;
            }
            return monetizationNetwork;
        }
        return monetizationNetwork.substring(0, 12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r7 == null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        return getCurrencyIso4217Code(r4, r5, r6, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
        if (r6 != null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r6 != null) goto L7;
     */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFi1sSDK getRevenue(@androidx.annotation.NonNull com.appsflyer.internal.AFi1vSDK r4, @androidx.annotation.Nullable java.lang.String r5, @androidx.annotation.NonNull java.lang.String r6, @androidx.annotation.NonNull java.lang.String r7) {
        /*
            r3 = this;
            r0 = 0
            if (r4 == 0) goto L1e
            int r1 = com.appsflyer.internal.AFf1nSDK.AFAdRevenueData
            int r1 = r1 + 111
            int r2 = r1 % 128
            com.appsflyer.internal.AFf1nSDK.component2 = r2
            int r1 = r1 % 2
            if (r1 != 0) goto L15
            r1 = 89
            int r1 = r1 / r0
            if (r6 == 0) goto L1e
            goto L17
        L15:
            if (r6 == 0) goto L1e
        L17:
            if (r7 == 0) goto L1e
            com.appsflyer.internal.AFi1sSDK r4 = getCurrencyIso4217Code(r4, r5, r6, r7)
            return r4
        L1e:
            int r4 = com.appsflyer.internal.AFf1nSDK.AFAdRevenueData
            int r4 = r4 + 17
            int r4 = r4 % 128
            com.appsflyer.internal.AFf1nSDK.component2 = r4
            com.appsflyer.internal.AFi1sSDK r4 = new com.appsflyer.internal.AFi1sSDK
            com.appsflyer.internal.AFi1ySDK r5 = com.appsflyer.internal.AFi1ySDK.INTERNAL_ERROR
            r4.<init>(r0, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1nSDK.getRevenue(com.appsflyer.internal.AFi1vSDK, java.lang.String, java.lang.String, java.lang.String):com.appsflyer.internal.AFi1sSDK");
    }
}
