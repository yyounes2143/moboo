package com.mbridge.msdk.click;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.foundation.tools.k0;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class i {
    private static final String f = "i";

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f8781a;
    private String b;
    private boolean c = true;
    private final int d = 3145728;
    private com.mbridge.msdk.click.entity.a e;

    public i() {
        com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f8781a = d;
        if (d == null) {
            this.f8781a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    public com.mbridge.msdk.click.entity.a a(String str, boolean z, boolean z2, CampaignEx campaignEx) {
        HttpsURLConnection httpsURLConnection;
        int i;
        HttpsURLConnection httpsURLConnection2 = null;
        if (URLUtil.isNetworkUrl(str)) {
            String replace = str.replace(" ", "%20");
            this.e = new com.mbridge.msdk.click.entity.a();
            try {
                httpsURLConnection = (HttpsURLConnection) new URL(replace).openConnection();
            } catch (Throwable th) {
                th = th;
            }
            try {
                httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(replace));
                httpsURLConnection.setRequestMethod("GET");
                if ((!z && !z2) || campaignEx == null) {
                    httpsURLConnection.setRequestProperty("User-Agent", k0.i());
                }
                if (z && campaignEx != null && campaignEx.getcUA() == 1) {
                    httpsURLConnection.setRequestProperty("User-Agent", k0.i());
                }
                if (z2 && campaignEx != null && campaignEx.getImpUA() == 1) {
                    httpsURLConnection.setRequestProperty("User-Agent", k0.i());
                }
                httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
                if (this.f8781a.I0() && !TextUtils.isEmpty(this.b)) {
                    httpsURLConnection.setRequestProperty("referer", this.b);
                }
                httpsURLConnection.setConnectTimeout(60000);
                httpsURLConnection.setReadTimeout(60000);
                httpsURLConnection.setInstanceFollowRedirects(false);
                httpsURLConnection.connect();
                this.e.f8777a = httpsURLConnection.getHeaderField("Location");
                this.e.d = httpsURLConnection.getHeaderField(HttpHeaders.REFERER);
                this.e.f = httpsURLConnection.getResponseCode();
                this.e.b = httpsURLConnection.getContentType();
                this.e.e = httpsURLConnection.getContentLength();
                this.e.c = httpsURLConnection.getContentEncoding();
                boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(this.e.c);
                com.mbridge.msdk.click.entity.a aVar = this.e;
                if (aVar.f == 200 && this.c && (i = aVar.e) > 0 && i < 3145728 && !TextUtils.isEmpty(replace)) {
                    String a2 = a(httpsURLConnection.getInputStream(), equalsIgnoreCase);
                    if (!TextUtils.isEmpty(a2)) {
                        byte[] bytes = a2.getBytes();
                        if (bytes.length > 0 && bytes.length < 3145728) {
                            this.e.g = a2.trim();
                        }
                    }
                }
                this.b = replace;
                httpsURLConnection.disconnect();
                return this.e;
            } catch (Throwable th2) {
                th = th2;
                httpsURLConnection2 = httpsURLConnection;
                try {
                    this.e.h = th.getMessage();
                    return this.e;
                } finally {
                    if (httpsURLConnection2 != null) {
                        httpsURLConnection2.disconnect();
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0036 A[Catch: all -> 0x000f, TryCatch #5 {all -> 0x000f, blocks: (B:4:0x0008, B:9:0x0013, B:23:0x0032, B:25:0x0036, B:26:0x0043), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004e A[Catch: Exception -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:18:0x002b, B:28:0x004e), top: B:41:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.io.InputStream r4, boolean r5) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            if (r5 == 0) goto L13
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r5.<init>(r4)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4 = r5
            goto L13
        Lf:
            r4 = move-exception
            goto L60
        L11:
            r4 = move-exception
            goto L32
        L13:
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r5.<init>(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
        L1d:
            java.lang.String r4 = r5.readLine()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            if (r4 == 0) goto L2b
            r0.append(r4)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            goto L1d
        L27:
            r4 = move-exception
            goto L61
        L29:
            r4 = move-exception
            goto L31
        L2b:
            r5.close()     // Catch: java.lang.Exception -> L2f
            goto L5b
        L2f:
            r4 = move-exception
            goto L52
        L31:
            r1 = r5
        L32:
            com.mbridge.msdk.click.entity.a r5 = r3.e     // Catch: java.lang.Throwable -> Lf
            if (r5 != 0) goto L43
            com.mbridge.msdk.click.entity.a r5 = new com.mbridge.msdk.click.entity.a     // Catch: java.lang.Throwable -> Lf
            r5.<init>()     // Catch: java.lang.Throwable -> Lf
            r3.e = r5     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            r5.h = r2     // Catch: java.lang.Throwable -> Lf
        L43:
            java.lang.String r5 = com.mbridge.msdk.click.i.f     // Catch: java.lang.Throwable -> Lf
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            com.mbridge.msdk.foundation.tools.o0.b(r5, r4)     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L5b
            r1.close()     // Catch: java.lang.Exception -> L2f
            goto L5b
        L52:
            java.lang.String r5 = com.mbridge.msdk.click.i.f
            java.lang.String r4 = r4.getMessage()
            com.mbridge.msdk.foundation.tools.o0.b(r5, r4)
        L5b:
            java.lang.String r4 = r0.toString()
            return r4
        L60:
            r5 = r1
        L61:
            if (r5 == 0) goto L71
            r5.close()     // Catch: java.lang.Exception -> L67
            goto L71
        L67:
            r5 = move-exception
            java.lang.String r0 = com.mbridge.msdk.click.i.f
            java.lang.String r5 = r5.getMessage()
            com.mbridge.msdk.foundation.tools.o0.b(r0, r5)
        L71:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.i.a(java.io.InputStream, boolean):java.lang.String");
    }
}
