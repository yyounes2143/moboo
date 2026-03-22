package com.changdu.component.http;

import android.annotation.SuppressLint;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SslHelper {
    public static HostnameVerifier UnSafeHostnameVerifier = new HostnameVerifier() { // from class: com.changdu.component.http.SslHelper.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            if (str == null) {
                str = "";
            }
            return !new ArrayList().contains(str);
        }
    };
    public static X509TrustManager UnSafeTrustManager = new X509TrustManager() { // from class: com.changdu.component.http.SslHelper.2
        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }

        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class SSLParams {
        public SSLSocketFactory sSLSocketFactory;
        public X509TrustManager trustManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.changdu.component.http.SslHelper.SSLParams a(javax.net.ssl.X509TrustManager r6, java.io.InputStream r7, java.lang.String r8, java.io.InputStream... r9) {
        /*
            r0 = 1
            r1 = 0
            com.changdu.component.http.SslHelper$SSLParams r2 = new com.changdu.component.http.SslHelper$SSLParams
            r2.<init>()
            r3 = 0
            if (r7 == 0) goto L32
            if (r8 != 0) goto Ld
            goto L32
        Ld:
            java.lang.String r4 = "BKS"
            java.security.KeyStore r4 = java.security.KeyStore.getInstance(r4)     // Catch: java.lang.Exception -> L2e
            char[] r5 = r8.toCharArray()     // Catch: java.lang.Exception -> L2e
            r4.load(r7, r5)     // Catch: java.lang.Exception -> L2e
            java.lang.String r7 = javax.net.ssl.KeyManagerFactory.getDefaultAlgorithm()     // Catch: java.lang.Exception -> L2e
            javax.net.ssl.KeyManagerFactory r7 = javax.net.ssl.KeyManagerFactory.getInstance(r7)     // Catch: java.lang.Exception -> L2e
            char[] r8 = r8.toCharArray()     // Catch: java.lang.Exception -> L2e
            r7.init(r4, r8)     // Catch: java.lang.Exception -> L2e
            javax.net.ssl.KeyManager[] r7 = r7.getKeyManagers()     // Catch: java.lang.Exception -> L2e
            goto L33
        L2e:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Exception -> L66
        L32:
            r7 = r3
        L33:
            javax.net.ssl.TrustManager[] r8 = a(r9)     // Catch: java.lang.Exception -> L66
            if (r6 == 0) goto L3a
            goto L50
        L3a:
            if (r8 == 0) goto L4e
            int r6 = r8.length     // Catch: java.lang.Exception -> L66
            r9 = r1
        L3e:
            if (r9 >= r6) goto L4c
            r4 = r8[r9]     // Catch: java.lang.Exception -> L66
            boolean r5 = r4 instanceof javax.net.ssl.X509TrustManager     // Catch: java.lang.Exception -> L66
            if (r5 == 0) goto L4a
            javax.net.ssl.X509TrustManager r4 = (javax.net.ssl.X509TrustManager) r4     // Catch: java.lang.Exception -> L66
            r6 = r4
            goto L50
        L4a:
            int r9 = r9 + r0
            goto L3e
        L4c:
            r6 = r3
            goto L50
        L4e:
            javax.net.ssl.X509TrustManager r6 = com.changdu.component.http.SslHelper.UnSafeTrustManager     // Catch: java.lang.Exception -> L66
        L50:
            java.lang.String r8 = "TLS"
            javax.net.ssl.SSLContext r8 = javax.net.ssl.SSLContext.getInstance(r8)     // Catch: java.lang.Exception -> L66
            javax.net.ssl.TrustManager[] r9 = new javax.net.ssl.TrustManager[r0]     // Catch: java.lang.Exception -> L66
            r9[r1] = r6     // Catch: java.lang.Exception -> L66
            r8.init(r7, r9, r3)     // Catch: java.lang.Exception -> L66
            javax.net.ssl.SSLSocketFactory r7 = r8.getSocketFactory()     // Catch: java.lang.Exception -> L66
            r2.sSLSocketFactory = r7     // Catch: java.lang.Exception -> L66
            r2.trustManager = r6     // Catch: java.lang.Exception -> L66
            return r2
        L66:
            r6 = move-exception
            java.lang.AssertionError r7 = new java.lang.AssertionError
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.http.SslHelper.a(javax.net.ssl.X509TrustManager, java.io.InputStream, java.lang.String, java.io.InputStream[]):com.changdu.component.http.SslHelper$SSLParams");
    }

    public static SSLParams getSslSocketFactory() {
        return a(null, null, null, new InputStream[0]);
    }

    public X509TrustManager getDefaultTrustManager() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (Exception unused) {
            throw new AssertionError();
        }
    }

    public static SSLParams getSslSocketFactory(X509TrustManager x509TrustManager) {
        return a(x509TrustManager, null, null, new InputStream[0]);
    }

    public static SSLParams getSslSocketFactory(InputStream... inputStreamArr) {
        return a(null, null, null, inputStreamArr);
    }

    public static SSLParams getSslSocketFactory(InputStream inputStream, String str, InputStream... inputStreamArr) {
        return a(null, inputStream, str, inputStreamArr);
    }

    public static SSLParams getSslSocketFactory(InputStream inputStream, String str, X509TrustManager x509TrustManager) {
        return a(x509TrustManager, inputStream, str, new InputStream[0]);
    }

    public static TrustManager[] a(InputStream... inputStreamArr) {
        if (inputStreamArr != null && inputStreamArr.length > 0) {
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null);
                int length = inputStreamArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    InputStream inputStream = inputStreamArr[i];
                    int i3 = i2 + 1;
                    keyStore.setCertificateEntry(Integer.toString(i2), certificateFactory.generateCertificate(inputStream));
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.getMessage();
                        }
                    }
                    i++;
                    i2 = i3;
                }
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                return trustManagerFactory.getTrustManagers();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static OkHttpClient.Builder enableTlsOnPreLollipop(OkHttpClient.Builder builder, InputStream... inputStreamArr) {
        return builder;
    }
}
