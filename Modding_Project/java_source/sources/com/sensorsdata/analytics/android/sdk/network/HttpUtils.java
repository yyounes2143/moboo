package com.sensorsdata.analytics.android.sdk.network;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class HttpUtils {
    private static final int HTTP_307 = 307;

    public static String getLocation(HttpURLConnection httpURLConnection, String str) throws MalformedURLException {
        if (httpURLConnection == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String headerField = httpURLConnection.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            headerField = httpURLConnection.getHeaderField(FirebaseAnalytics.Param.LOCATION);
        }
        if (TextUtils.isEmpty(headerField)) {
            return null;
        }
        if (!headerField.startsWith("http://") && !headerField.startsWith("https://")) {
            URL url = new URL(str);
            return url.getProtocol() + "://" + url.getHost() + headerField;
        }
        return headerField;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getRetString(java.io.InputStream r5) {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L42
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L42
            java.lang.String r3 = "UTF-8"
            r2.<init>(r5, r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L42
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L42
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            r0.<init>()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
        L12:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            if (r2 == 0) goto L25
            r0.append(r2)     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            java.lang.String r2 = "\n"
            r0.append(r2)     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            goto L12
        L21:
            r0 = move-exception
            goto L60
        L23:
            r0 = move-exception
            goto L46
        L25:
            r5.close()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L21 java.lang.Exception -> L23
            r1.close()     // Catch: java.io.IOException -> L30
            goto L34
        L30:
            r1 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r1)
        L34:
            r5.close()     // Catch: java.io.IOException -> L38
            goto L3c
        L38:
            r5 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r5)
        L3c:
            return r0
        L3d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L60
        L42:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L46:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L53
            r1.close()     // Catch: java.io.IOException -> L4f
            goto L53
        L4f:
            r0 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)
        L53:
            if (r5 == 0) goto L5d
            r5.close()     // Catch: java.io.IOException -> L59
            goto L5d
        L59:
            r5 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r5)
        L5d:
            java.lang.String r5 = ""
            return r5
        L60:
            if (r1 == 0) goto L6a
            r1.close()     // Catch: java.io.IOException -> L66
            goto L6a
        L66:
            r1 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r1)
        L6a:
            if (r5 == 0) goto L74
            r5.close()     // Catch: java.io.IOException -> L70
            goto L74
        L70:
            r5 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r5)
        L74:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.network.HttpUtils.getRetString(java.io.InputStream):java.lang.String");
    }

    public static boolean needRedirects(int i) {
        if (i != 301 && i != 302 && i != 307) {
            return false;
        }
        return true;
    }
}
