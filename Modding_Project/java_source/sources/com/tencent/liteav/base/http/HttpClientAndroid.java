package com.tencent.liteav.base.http;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.HttpDnsUtil;
import com.tencent.liteav.base.util.LiteavLog;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PasswordAuthentication;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
@JNINamespace("liteav")
/* loaded from: classes6.dex */
public class HttpClientAndroid {
    private static final int ERROR_CODE_INVALID_REQUEST = 0;
    private static final String HTTPS_PREFIX = "https://";
    private static final String HTTP_PREFIX = "http://";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_POST = "POST";
    private static final String METHOD_PUT = "PUT";
    private static final int READ_STREAM_SIZE = 8192;
    private static final int REDIRECT_REQUEST_MAX = 3;
    private static final String TAG = "HttpClientAndroid";
    private static final Object mLock = new Object();
    private HttpURLConnection mConnection;
    private b mHttpConfig;
    private final Handler mHttpHandler;
    private String mLastRequestURL;
    private long mNativeHttpClientAndroidJni;
    private final ConcurrentHashMap<Long, e> mRunningRequestMap = new ConcurrentHashMap<>();
    private final Object mLocker = new Object();
    private volatile c mInternalState = c.NONE;
    private long mTotalReadBytes = 0;
    private long mStartReadTime = 0;
    byte[] mReadDataBytes = new byte[8192];
    private boolean mPausedRepeatDownloading = false;
    private d mReallyNetworkChannel = d.DEFAULT;
    private ConnectivityManager.NetworkCallback mNetworkCallback = null;
    private h mRepeatDownloadingStatusCode = h.kUnknownError;
    private ByteBuffer mRepeatByteBuffer = null;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a extends Authenticator {

        /* renamed from: a  reason: collision with root package name */
        String f10207a;
        String b;

        public a(String str, String str2) {
            this.f10207a = str;
            this.b = str2;
        }

        @Override // java.net.Authenticator
        public final PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(this.f10207a, this.b.toCharArray());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f10208a;
        int b;
        int c;
        boolean d;
        int e;
        int f;
        String g;
        String h;
        String i;
        d j;

        public b(int i, int i2, int i3, boolean z, int i4, int i5, String str, String str2, String str3, d dVar) {
            this.f10208a = i;
            this.b = i2;
            this.c = i3;
            this.d = z;
            this.e = i4;
            this.f = i5;
            this.g = str;
            this.h = str2;
            this.i = str3;
            this.j = dVar;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum c {
        NONE,
        RUNNING_REPEAT,
        RUNNING_ONCE
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum d {
        DEFAULT(0),
        WIFI(1),
        CELLULAR(2);
        
        int nativeValue;

        d(int i) {
            this.nativeValue = i;
        }

        public static d a(int i) {
            d[] values;
            for (d dVar : values()) {
                if (dVar.nativeValue == i) {
                    return dVar;
                }
            }
            LiteavLog.i(HttpClientAndroid.TAG, "Invalid value:".concat(String.valueOf(i)));
            return DEFAULT;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        long f10211a;
        String b;
        String c;
        byte[] d;
        Map<String, String> e;
        int f;
        String g;
        boolean h;
        String i;
        byte[] j;
        byte[] k;

        public e(String str, String str2, byte[] bArr, Map<String, String> map, boolean z) {
            this(str, str2, bArr, map, z, "", null, null);
        }

        public final boolean a() {
            if (TextUtils.isEmpty(this.b)) {
                return false;
            }
            if (!this.b.startsWith(HttpClientAndroid.HTTP_PREFIX) && !this.b.startsWith(HttpClientAndroid.HTTPS_PREFIX)) {
                return false;
            }
            return true;
        }

        public final boolean b() {
            byte[] bArr = this.d;
            if (bArr != null && bArr.length > 0) {
                return true;
            }
            return false;
        }

        public final boolean c() {
            if (!"POST".equals(d()) && !HttpClientAndroid.METHOD_PUT.equals(d())) {
                return false;
            }
            return true;
        }

        public final String d() {
            if (TextUtils.isEmpty(this.c)) {
                return "";
            }
            if ("POST".equalsIgnoreCase(this.c)) {
                return "POST";
            }
            if ("GET".equalsIgnoreCase(this.c)) {
                return "GET";
            }
            if (!HttpClientAndroid.METHOD_PUT.equalsIgnoreCase(this.c)) {
                return "";
            }
            return HttpClientAndroid.METHOD_PUT;
        }

        public final String toString() {
            int i;
            StringBuilder sb = new StringBuilder("Request{requestId=");
            sb.append(this.f10211a);
            sb.append(", url='");
            sb.append(this.b);
            sb.append('\'');
            sb.append(", method='");
            sb.append(this.c);
            sb.append('\'');
            sb.append(", body.size=");
            if (b()) {
                i = this.d.length;
            } else {
                i = 0;
            }
            sb.append(i);
            sb.append(", headers=");
            sb.append(this.e);
            sb.append(", autoRedirect=");
            sb.append(this.h);
            sb.append(AbstractJsonLexerKt.END_OBJ);
            return sb.toString();
        }

        public e(String str, String str2, byte[] bArr, Map<String, String> map, boolean z, String str3, byte[] bArr2, byte[] bArr3) {
            this.b = str;
            this.c = str2;
            this.d = bArr;
            this.e = map;
            this.f = 0;
            this.g = "";
            this.h = z;
            this.i = str3;
            this.j = bArr2;
            this.k = bArr3;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class f {
        ByteBuffer c;

        /* renamed from: a  reason: collision with root package name */
        h f10212a = h.kUnknownError;
        String b = "";
        int d = 0;
        String e = "";
        Map<String, String> f = null;
        int g = 0;
        int h = 0;
        String i = "";
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum g {
        CONNECTED(0),
        DISCONNECTED(1),
        FINISHED(2);
        
        int nativeValue;

        g(int i) {
            this.nativeValue = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum h {
        kHTTP200OK(200),
        kHTTP204NoContent(204),
        kHTTP206PartialContent(206),
        kHTTP301MovedPermanently(301),
        kHTTP302Found(302),
        kHTTP303SeeOther(303),
        kHTTP304NotModified(304),
        kHTTP307TemporaryRedirect(307),
        kHTTP308PermanentRedirect(308),
        kHTTP403Forbidden(403),
        kHTTP404NotFound(404),
        kHTTP405MethodNotAllowed(405),
        kHTTP503ServiceUnavailable(503),
        kSystemFileOpenFailed(1001),
        kSystemFileWriteFailed(1002),
        kSystemUnknownHost(1003),
        kSystemConnectHostFailed(1004),
        kSystemCreateSocketFailed(1005),
        kSystemNetworkDisabled(1006),
        kSystemConnectTimeout(1007),
        kSystemConnectRefused(1008),
        kSystemProtocolError(1009),
        kSystemSSLError(1010),
        kUnknownError(1999);
        
        final int nativeValue;

        h(int i) {
            this.nativeValue = i;
        }
    }

    public HttpClientAndroid(int i, int i2, int i3, boolean z, int i4, int i5, String str, String str2, String str3, int i6, long j) {
        this.mHttpConfig = new b(i, i2, i3, z, i4, i5, str, str2, str3, d.a(i6));
        this.mNativeHttpClientAndroidJni = j;
        HandlerThread handlerThread = new HandlerThread("HttpClient_" + hashCode());
        handlerThread.start();
        LiteavLog.i(TAG, "Create http client(" + hashCode() + "). [ThreadName:" + handlerThread.getName() + "][ThreadId:" + handlerThread.getId() + "]");
        this.mHttpHandler = new Handler(handlerThread.getLooper());
    }

    private boolean checkNativeValid() {
        boolean z;
        synchronized (this.mLocker) {
            if (this.mNativeHttpClientAndroidJni != -1) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private boolean checkRequestValid(long j) {
        return this.mRunningRequestMap.containsKey(Long.valueOf(j));
    }

    private void closeConnectionSafely(HttpURLConnection httpURLConnection) {
        if (this.mNetworkCallback != null && LiteavSystemInfo.getSystemOSVersionInt() >= 23) {
            try {
                try {
                    ((ConnectivityManager) ContextUtils.getApplicationContext().getSystemService("connectivity")).unregisterNetworkCallback(this.mNetworkCallback);
                } finally {
                    this.mNetworkCallback = null;
                }
            } catch (Exception e2) {
                LiteavLog.w(TAG, "(" + hashCode() + ")" + Log.getStackTraceString(e2));
            }
        }
        if (httpURLConnection != null) {
            try {
                try {
                    closeIO(httpURLConnection.getInputStream());
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                throw th;
            }
        }
    }

    private void closeIO(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private HttpURLConnection createConnection(e eVar) throws Exception {
        Proxy proxy;
        HttpURLConnection createConnection;
        String replace = eVar.b.replace(" ", "%20");
        URL url = new URL(replace);
        if (!TextUtils.isEmpty(this.mHttpConfig.g) && this.mHttpConfig.f > 0) {
            Proxy.Type type = Proxy.Type.SOCKS;
            b bVar = this.mHttpConfig;
            proxy = new Proxy(type, new InetSocketAddress(bVar.g, bVar.f));
            b bVar2 = this.mHttpConfig;
            Authenticator.setDefault(new a(bVar2.h, bVar2.i));
        } else {
            proxy = ("127.0.0.1".equals(url.getHost()) || "localhost".equals(url.getHost())) ? Proxy.NO_PROXY : null;
        }
        if (proxy != null) {
            createConnection = createConnection(url, proxy);
        } else {
            if (HttpDnsUtil.verifyCustomHttpDNS(url.getHost())) {
                try {
                    String convertHttpDNSURL = HttpDnsUtil.convertHttpDNSURL(replace, url.getHost());
                    if (!TextUtils.isEmpty(convertHttpDNSURL)) {
                        createConnection = createConnection(new URL(convertHttpDNSURL), null);
                        createConnection.setRequestProperty("Host", url.getHost());
                        HttpDnsUtil.applySniForHttpsConnection(createConnection, url.getHost());
                    } else {
                        createConnection = createConnection(new URL(replace), null);
                    }
                } catch (Exception e2) {
                    LiteavLog.w(TAG, "(" + hashCode() + ")createConnectionUseCustomHttpDNS failed. error: " + Log.getStackTraceString(e2));
                }
            }
            createConnection = createConnection(url, null);
        }
        createConnection.setInstanceFollowRedirects(false);
        createConnection.setConnectTimeout(this.mHttpConfig.f10208a);
        createConnection.setReadTimeout(this.mHttpConfig.b);
        createConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "identity");
        createConnection.setRequestMethod(eVar.d());
        if (eVar.c()) {
            createConnection.setDoOutput(true);
        }
        if (this.mHttpConfig.d) {
            createConnection.setRequestProperty("Connection", HttpHeaders.KEEP_ALIVE);
        } else {
            createConnection.setRequestProperty("Connection", "close");
        }
        Map<String, String> map = eVar.e;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : eVar.e.entrySet()) {
                createConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return createConnection;
    }

    private HttpURLConnection createConnectionByNetworkType(final URL url, final Proxy proxy) {
        int i;
        d dVar = this.mHttpConfig.j;
        if (dVar == d.WIFI) {
            i = 1;
        } else if (dVar != d.CELLULAR) {
            return null;
        } else {
            i = 0;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final HttpURLConnection[] httpURLConnectionArr = {null};
        NetworkRequest build = new NetworkRequest.Builder().addCapability(12).addTransportType(i).build();
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.tencent.liteav.base.http.HttpClientAndroid.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                HttpClientAndroid httpClientAndroid = HttpClientAndroid.this;
                httpClientAndroid.mReallyNetworkChannel = httpClientAndroid.mHttpConfig.j;
                LiteavLog.i(HttpClientAndroid.TAG, "(" + HttpClientAndroid.this.hashCode() + ")createConnectionSpecifyNetwork onAvailable.");
                try {
                    try {
                        Proxy proxy2 = proxy;
                        if (proxy2 == null) {
                            httpURLConnectionArr[0] = (HttpURLConnection) network.openConnection(url);
                        } else {
                            httpURLConnectionArr[0] = (HttpURLConnection) network.openConnection(url, proxy2);
                        }
                    } catch (IOException e2) {
                        LiteavLog.w(HttpClientAndroid.TAG, "(" + HttpClientAndroid.this.hashCode() + ")createConnectionSpecifyNetwork failed. error: " + Log.getStackTraceString(e2));
                    }
                    countDownLatch.countDown();
                } catch (Throwable th) {
                    countDownLatch.countDown();
                    throw th;
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                LiteavLog.w(HttpClientAndroid.TAG, "(" + HttpClientAndroid.this.hashCode() + ")createConnectionSpecifyNetwork onLost.");
                countDownLatch.countDown();
            }
        };
        this.mNetworkCallback = networkCallback;
        ((ConnectivityManager) ContextUtils.getApplicationContext().getSystemService("connectivity")).requestNetwork(build, networkCallback);
        try {
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            LiteavLog.w(TAG, "(" + hashCode() + ")createConnectionSpecifyNetwork timeout.");
        }
        if (httpURLConnectionArr[0] != null) {
            LiteavLog.i(TAG, "(" + hashCode() + ")createConnectionSpecifyNetwork success.");
        } else {
            LiteavLog.w(TAG, "(" + hashCode() + ")createConnectionSpecifyNetwork lost or timeout.");
        }
        return httpURLConnectionArr[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:4:0x0007, B:6:0x000f, B:14:0x0020, B:18:0x0029, B:20:0x003a, B:22:0x0040, B:23:0x006d), top: B:29:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:4:0x0007, B:6:0x000f, B:14:0x0020, B:18:0x0029, B:20:0x003a, B:22:0x0040, B:23:0x006d), top: B:29:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doCallbackAndResetState(com.tencent.liteav.base.http.HttpClientAndroid.g r23, long r24, com.tencent.liteav.base.http.HttpClientAndroid.f r26, boolean r27) {
        /*
            r22 = this;
            r1 = r22
            r0 = r26
            java.lang.Object r2 = r1.mLocker
            monitor-enter(r2)
            boolean r3 = r1.checkNativeValid()     // Catch: java.lang.Throwable -> L1b
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L1d
            r10 = r24
            boolean r3 = r1.checkRequestValid(r10)     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L1f
            if (r0 == 0) goto L1f
            r3 = r5
            goto L20
        L1b:
            r0 = move-exception
            goto L79
        L1d:
            r10 = r24
        L1f:
            r3 = r4
        L20:
            com.tencent.liteav.base.http.HttpClientAndroid$c r6 = com.tencent.liteav.base.http.HttpClientAndroid.c.RUNNING_REPEAT     // Catch: java.lang.Throwable -> L1b
            com.tencent.liteav.base.http.HttpClientAndroid$c r7 = r1.mInternalState     // Catch: java.lang.Throwable -> L1b
            if (r6 != r7) goto L28
            r8 = r5
            goto L29
        L28:
            r8 = r4
        L29:
            j$.util.concurrent.ConcurrentHashMap<java.lang.Long, com.tencent.liteav.base.http.HttpClientAndroid$e> r4 = r1.mRunningRequestMap     // Catch: java.lang.Throwable -> L1b
            java.lang.Long r5 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> L1b
            r4.remove(r5)     // Catch: java.lang.Throwable -> L1b
            j$.util.concurrent.ConcurrentHashMap<java.lang.Long, com.tencent.liteav.base.http.HttpClientAndroid$e> r4 = r1.mRunningRequestMap     // Catch: java.lang.Throwable -> L1b
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L3e
            com.tencent.liteav.base.http.HttpClientAndroid$c r4 = com.tencent.liteav.base.http.HttpClientAndroid.c.NONE     // Catch: java.lang.Throwable -> L1b
            r1.mInternalState = r4     // Catch: java.lang.Throwable -> L1b
        L3e:
            if (r3 == 0) goto L6d
            long r6 = r1.mNativeHttpClientAndroidJni     // Catch: java.lang.Throwable -> L1b
            r3 = r23
            int r9 = r3.nativeValue     // Catch: java.lang.Throwable -> L1b
            com.tencent.liteav.base.http.HttpClientAndroid$h r3 = r0.f10212a     // Catch: java.lang.Throwable -> L1b
            int r12 = r3.nativeValue     // Catch: java.lang.Throwable -> L1b
            java.lang.String r13 = r0.b     // Catch: java.lang.Throwable -> L1b
            int r14 = r0.g     // Catch: java.lang.Throwable -> L1b
            java.nio.ByteBuffer r15 = r0.c     // Catch: java.lang.Throwable -> L1b
            java.lang.String r3 = r0.e     // Catch: java.lang.Throwable -> L1b
            java.util.Map<java.lang.String, java.lang.String> r4 = r0.f     // Catch: java.lang.Throwable -> L1b
            int r5 = r0.d     // Catch: java.lang.Throwable -> L1b
            r16 = r3
            int r3 = r0.h     // Catch: java.lang.Throwable -> L1b
            java.lang.String r0 = r0.i     // Catch: java.lang.Throwable -> L1b
            r20 = r0
            com.tencent.liteav.base.http.HttpClientAndroid$d r0 = r1.mReallyNetworkChannel     // Catch: java.lang.Throwable -> L1b
            int r0 = r0.nativeValue     // Catch: java.lang.Throwable -> L1b
            r21 = r0
            r19 = r3
            r17 = r4
            r18 = r5
            nativeOnCallback(r6, r8, r9, r10, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)     // Catch: java.lang.Throwable -> L1b
        L6d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1b
            if (r27 == 0) goto L78
            java.net.HttpURLConnection r0 = r1.mConnection
            r1.closeConnectionSafely(r0)
            r0 = 0
            r1.mConnection = r0
        L78:
            return
        L79:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.base.http.HttpClientAndroid.doCallbackAndResetState(com.tencent.liteav.base.http.HttpClientAndroid$g, long, com.tencent.liteav.base.http.HttpClientAndroid$f, boolean):void");
    }

    private boolean doOnCallback(g gVar, long j, f fVar) {
        synchronized (this.mLocker) {
            try {
                boolean z = false;
                if (!checkNativeValid() || !checkRequestValid(j) || fVar == null) {
                    return false;
                }
                if (c.RUNNING_REPEAT == this.mInternalState) {
                    z = true;
                }
                return nativeOnCallback(this.mNativeHttpClientAndroidJni, z, gVar.nativeValue, j, fVar.f10212a.nativeValue, fVar.b, fVar.g, fVar.c, fVar.e, fVar.f, fVar.d, fVar.h, fVar.i, this.mReallyNetworkChannel.nativeValue);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void doReadData(long j, f fVar) {
        boolean z;
        long j2;
        long j3;
        if (!checkRequestValid(j)) {
            closeConnectionSafely(this.mConnection);
            LiteavLog.w(TAG, "(" + hashCode() + ")Do read data failed. Invalid request id. id:" + j);
            return;
        }
        try {
            InputStream inputStream = this.mConnection.getInputStream();
            synchronized (this.mLocker) {
                if (this.mInternalState == c.RUNNING_ONCE) {
                    z = true;
                } else {
                    z = false;
                }
            }
            long j4 = 0;
            if (z) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = inputStream.read(this.mReadDataBytes);
                        if (read > 0) {
                            byteArrayOutputStream.write(this.mReadDataBytes, 0, read);
                        }
                        if (read <= 0 || !checkRequestValid(j)) {
                            break;
                        }
                    }
                    int size = byteArrayOutputStream.size();
                    if (size > 0) {
                        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(size);
                        fVar.c = allocateDirect;
                        allocateDirect.put(byteArrayOutputStream.toByteArray(), 0, size);
                        fVar.d = size;
                    }
                    j2 = 0;
                } catch (Throwable th) {
                    th.printStackTrace();
                    LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Catch error when reading.");
                    fVar.f10212a = getStatusCode(th);
                    fVar.b = th.toString();
                    doCallbackAndResetState(g.DISCONNECTED, j, fVar, true);
                    return;
                }
            } else {
                try {
                    int read2 = inputStream.read(this.mReadDataBytes);
                    this.mTotalReadBytes += read2;
                    j2 = SystemClock.elapsedRealtime();
                    if (read2 > 0) {
                        ByteBuffer byteBuffer = this.mRepeatByteBuffer;
                        if (byteBuffer == null || byteBuffer.capacity() < read2) {
                            this.mRepeatByteBuffer = ByteBuffer.allocateDirect(read2);
                        }
                        this.mRepeatByteBuffer.clear();
                        this.mRepeatByteBuffer.put(this.mReadDataBytes, 0, read2);
                        fVar.c = this.mRepeatByteBuffer;
                        fVar.d = read2;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Catch error when reading.");
                    fVar.f10212a = getStatusCode(e2);
                    fVar.b = e2.toString();
                    doCallbackAndResetState(g.DISCONNECTED, j, fVar, true);
                    return;
                }
            }
            if (fVar.d == 0 && !z) {
                LiteavLog.w(TAG, "(" + hashCode() + ")Do read data failed. Rsp size is 0.");
                doCallbackAndResetState(g.FINISHED, j, fVar, this.mHttpConfig.d ^ true);
            } else if (z) {
                doCallbackAndResetState(g.FINISHED, j, fVar, !this.mHttpConfig.d);
            } else {
                long j5 = j2;
                boolean doOnCallback = doOnCallback(g.CONNECTED, j, fVar);
                this.mPausedRepeatDownloading = doOnCallback;
                this.mRepeatDownloadingStatusCode = fVar.f10212a;
                if (!doOnCallback) {
                    int i = this.mHttpConfig.e;
                    if (i > 0) {
                        long j6 = this.mStartReadTime;
                        if (j5 - j6 == 0) {
                            j3 = 1;
                        } else {
                            j3 = j5 - j6;
                        }
                        long j7 = this.mTotalReadBytes;
                        if (j7 / j3 > i / 1000) {
                            j4 = ((j7 * 1000) / i) - j3;
                        }
                    }
                    this.mHttpHandler.postDelayed(com.tencent.liteav.base.http.f.a(this, fVar, j), j4);
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Fail to get InputStream.");
            fVar.f10212a = getStatusCode(e3);
            fVar.b = e3.toString();
            doCallbackAndResetState(g.DISCONNECTED, j, fVar, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRequest(e eVar) {
        h hVar;
        f fVar = null;
        for (int i = 0; i < 4; i++) {
            fVar = internalRequest(eVar);
            if (fVar == null) {
                return;
            }
            if (!eVar.h || ((hVar = fVar.f10212a) != h.kHTTP301MovedPermanently && hVar != h.kHTTP302Found)) {
                break;
            }
            String headerField = this.mConnection.getHeaderField("Location");
            eVar.b = headerField;
            eVar.f++;
            eVar.g = headerField;
        }
        this.mTotalReadBytes = 0L;
        this.mStartReadTime = SystemClock.elapsedRealtime();
        doReadData(eVar.f10211a, fVar);
    }

    public static HashMap getJavaHashMap(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            if (strArr.length != strArr2.length) {
                LiteavLog.w(TAG, "Invalid parameter, keys and values do not match.");
                return new HashMap();
            }
            HashMap hashMap = new HashMap();
            for (int i = 0; i < strArr.length; i++) {
                hashMap.put(strArr[i], strArr2[i]);
            }
            return hashMap;
        }
        return new HashMap();
    }

    public static String[] getMapKeys(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            Set<String> keySet = map.keySet();
            return (String[]) keySet.toArray(new String[keySet.size()]);
        }
        return new String[0];
    }

    public static String[] getMapValue(Map<String, String> map, String[] strArr) {
        if (map != null && !map.isEmpty() && strArr != null && strArr.length != 0) {
            String[] strArr2 = new String[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                strArr2[i] = map.get(strArr[i]);
            }
            return strArr2;
        }
        return new String[0];
    }

    private Map<String, String> getResponseHeaders(Map<String, List<String>> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey())) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return hashMap;
    }

    private h getStatusCode(int i) {
        h hVar = h.kUnknownError;
        if (i == 200) {
            return h.kHTTP200OK;
        }
        if (i == 204) {
            return h.kHTTP204NoContent;
        }
        if (i == 206) {
            return h.kHTTP206PartialContent;
        }
        if (i == 301) {
            return h.kHTTP301MovedPermanently;
        }
        if (i == 302) {
            return h.kHTTP302Found;
        }
        if (i == 303) {
            return h.kHTTP303SeeOther;
        }
        if (i == 304) {
            return h.kHTTP304NotModified;
        }
        if (i == 307) {
            return h.kHTTP307TemporaryRedirect;
        }
        if (i == 308) {
            return h.kHTTP308PermanentRedirect;
        }
        if (i == 403) {
            return h.kHTTP403Forbidden;
        }
        if (i == 404) {
            return h.kHTTP404NotFound;
        }
        if (i == 405) {
            return h.kHTTP405MethodNotAllowed;
        }
        if (i == 503) {
            return h.kHTTP503ServiceUnavailable;
        }
        Log.w(TAG, "(" + hashCode() + ")Failed to convert status code：" + i, new Object[0]);
        return hVar;
    }

    private f internalRequest(e eVar) {
        boolean z;
        if (!eVar.a()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid request url(" + eVar.b + ").");
            return null;
        } else if (!checkRequestValid(eVar.f10211a)) {
            LiteavLog.w(TAG, "(" + hashCode() + ")Do send failed. ignore request when cancelled. request:" + eVar);
            return null;
        } else {
            f fVar = new f();
            fVar.h = eVar.f;
            fVar.i = eVar.g;
            synchronized (this.mLocker) {
                if (this.mInternalState == c.RUNNING_ONCE) {
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z && this.mConnection != null && !eVar.b.equals(this.mLastRequestURL)) {
                closeConnectionSafely(this.mConnection);
                this.mConnection = null;
            }
            this.mLastRequestURL = eVar.b;
            try {
                this.mConnection = createConnection(eVar);
                writeRequestBody(eVar);
                try {
                    fVar.f10212a = getStatusCode(this.mConnection.getResponseCode());
                    fVar.b = this.mConnection.getResponseMessage();
                    fVar.e = parseHostAddress(this.mConnection.getURL().getHost());
                    fVar.g = this.mConnection.getURL().getPort();
                    fVar.f = getResponseHeaders(this.mConnection.getHeaderFields());
                    if (!checkRequestValid(eVar.f10211a)) {
                        closeConnectionSafely(this.mConnection);
                        LiteavLog.w(TAG, "(" + hashCode() + ")Do send failed. Invalid request, abort request.");
                        return null;
                    }
                    return fVar;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    LiteavLog.e(TAG, "(" + hashCode() + ")Do send failed. Catch error. ex= " + Log.getStackTraceString(e2));
                    fVar.f10212a = getStatusCode(e2);
                    fVar.b = e2.toString();
                    doCallbackAndResetState(g.DISCONNECTED, eVar.f10211a, fVar, true);
                    return null;
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                LiteavLog.e(TAG, "(" + hashCode() + ")Do send failed. Fail to create http connection. ex= " + Log.getStackTraceString(e3));
                fVar.f10212a = getStatusCode(e3);
                fVar.b = e3.toString();
                doCallbackAndResetState(g.DISCONNECTED, eVar.f10211a, fVar, true);
                return null;
            }
        }
    }

    public static /* synthetic */ void lambda$cancelAll$1(HttpClientAndroid httpClientAndroid) {
        httpClientAndroid.closeConnectionSafely(httpClientAndroid.mConnection);
        httpClientAndroid.mConnection = null;
    }

    public static /* synthetic */ void lambda$destroy$4(HttpClientAndroid httpClientAndroid) {
        httpClientAndroid.closeConnectionSafely(httpClientAndroid.mConnection);
        httpClientAndroid.mConnection = null;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
            httpClientAndroid.mHttpHandler.getLooper().quitSafely();
        } else {
            httpClientAndroid.mHttpHandler.getLooper().quit();
        }
    }

    public static /* synthetic */ void lambda$doReadData$5(HttpClientAndroid httpClientAndroid, f fVar, long j) {
        f fVar2 = new f();
        fVar2.f10212a = fVar.f10212a;
        httpClientAndroid.doReadData(j, fVar2);
    }

    public static /* synthetic */ void lambda$resumeRepeatDownload$2(HttpClientAndroid httpClientAndroid, Long l) {
        f fVar = new f();
        fVar.f10212a = httpClientAndroid.mRepeatDownloadingStatusCode;
        httpClientAndroid.doReadData(l.longValue(), fVar);
    }

    public static /* synthetic */ void lambda$resumeRepeatDownload$3(HttpClientAndroid httpClientAndroid, long j) {
        f fVar = new f();
        fVar.f10212a = httpClientAndroid.mRepeatDownloadingStatusCode;
        httpClientAndroid.doReadData(j, fVar);
    }

    private static native boolean nativeOnCallback(long j, boolean z, int i, long j2, int i2, String str, int i3, ByteBuffer byteBuffer, String str2, Map map, int i4, int i5, String str3, int i6);

    private static native void nativeOnUploadProgress(long j, long j2, long j3, long j4);

    private HttpURLConnection openConnection(URL url, Proxy proxy) throws Exception {
        if (proxy != null) {
            return (HttpURLConnection) url.openConnection(proxy);
        }
        return (HttpURLConnection) url.openConnection();
    }

    private String parseHostAddress(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (Exception unused) {
            LiteavLog.w(TAG, "(" + hashCode() + ")Parse host error. host:" + str);
            return "";
        }
    }

    private long sendInternal(long j, e eVar, boolean z) {
        c cVar;
        if (eVar != null && eVar.a()) {
            if (TextUtils.isEmpty(eVar.d())) {
                LiteavLog.e(TAG, "(" + hashCode() + ")upload file failed. Request method(" + eVar.c + ") is not supported.");
                return 0L;
            }
            synchronized (this.mLocker) {
                try {
                    if (this.mInternalState == c.NONE) {
                        if (z) {
                            cVar = c.RUNNING_REPEAT;
                        } else {
                            cVar = c.RUNNING_ONCE;
                        }
                        this.mInternalState = cVar;
                    } else if (this.mInternalState != c.RUNNING_ONCE) {
                        LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid state:" + this.mInternalState);
                        return 0L;
                    }
                    eVar.f10211a = j;
                    this.mRunningRequestMap.put(Long.valueOf(j), eVar);
                    this.mHttpHandler.post(com.tencent.liteav.base.http.a.a(this, eVar));
                    return eVar.f10211a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        LiteavLog.e(TAG, "(" + hashCode() + ")upload file failed. Invalid request url(" + eVar.b + ").");
        return 0L;
    }

    private void uploadFileByPath(e eVar, OutputStream outputStream) throws Exception {
        Throwable th;
        File file;
        FileInputStream fileInputStream;
        long j;
        if (TextUtils.isEmpty(eVar.i)) {
            return;
        }
        Closeable closeable = null;
        try {
            file = new File(eVar.i);
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[524288];
            long length = file.length();
            long j2 = 0;
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                synchronized (this.mLocker) {
                    if (!checkRequestValid(eVar.f10211a) || !checkNativeValid()) {
                        break;
                    }
                    j = j2 + read;
                    outputStream.write(bArr, 0, read);
                    nativeOnUploadProgress(this.mNativeHttpClientAndroidJni, eVar.f10211a, j, length);
                }
                j2 = j;
            }
            closeIO(fileInputStream);
        } catch (Throwable th3) {
            th = th3;
            closeable = fileInputStream;
            closeIO(closeable);
            throw th;
        }
    }

    private void writeRequestBody(e eVar) {
        OutputStream outputStream = null;
        try {
            try {
                if (eVar.c() && eVar.b()) {
                    outputStream = this.mConnection.getOutputStream();
                    outputStream.write(eVar.d);
                    outputStream.flush();
                } else if (eVar.c() && !TextUtils.isEmpty(eVar.i)) {
                    outputStream = this.mConnection.getOutputStream();
                    byte[] bArr = eVar.j;
                    if (bArr != null && bArr.length > 0) {
                        outputStream.write(bArr);
                    }
                    uploadFileByPath(eVar, outputStream);
                    byte[] bArr2 = eVar.k;
                    if (bArr2 != null && bArr2.length > 0) {
                        outputStream.write(bArr2);
                    }
                    outputStream.flush();
                }
                closeIO(outputStream);
            } catch (Exception e2) {
                e2.printStackTrace();
                LiteavLog.w(TAG, "(" + hashCode() + ")Do write request body failed.");
                closeIO(null);
            }
        } catch (Throwable th) {
            closeIO(null);
            throw th;
        }
    }

    public void cancel(long j) {
        synchronized (this.mLocker) {
            try {
                if (!checkNativeValid()) {
                    LiteavLog.e(TAG, "(" + hashCode() + ")Cancel request failed. Invalid native handle.");
                } else if (this.mRunningRequestMap.size() == 0) {
                } else {
                    LiteavLog.i(TAG, "(" + hashCode() + ")Cancel request. request:" + this.mRunningRequestMap.remove(Long.valueOf(j)));
                    if (this.mRunningRequestMap.size() == 0) {
                        this.mInternalState = c.NONE;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cancelAll() {
        synchronized (this.mLocker) {
            try {
                if (!checkNativeValid()) {
                    LiteavLog.e(TAG, "(" + hashCode() + ")Cancel all request failed. Invalid native handle.");
                    return;
                }
                c cVar = this.mInternalState;
                c cVar2 = c.NONE;
                if (cVar == cVar2) {
                    return;
                }
                this.mInternalState = cVar2;
                LiteavLog.i(TAG, "(" + hashCode() + ")Cancel all. size:" + this.mRunningRequestMap.size());
                this.mRunningRequestMap.clear();
                this.mHttpHandler.post(com.tencent.liteav.base.http.b.a(this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void destroy() {
        synchronized (this.mLocker) {
            this.mRunningRequestMap.clear();
            this.mNativeHttpClientAndroidJni = -1L;
            this.mHttpHandler.post(com.tencent.liteav.base.http.e.a(this));
        }
    }

    public void resumeRepeatDownload(long j) {
        synchronized (this.mLocker) {
            try {
                if (!checkNativeValid()) {
                    LiteavLog.e(TAG, "(" + hashCode() + ")Cancel request failed. Invalid native handle.");
                } else if (this.mRunningRequestMap.size() != 0) {
                    if (this.mInternalState == c.RUNNING_REPEAT && this.mPausedRepeatDownloading) {
                        this.mPausedRepeatDownloading = false;
                        if (j == 0) {
                            for (Long l : this.mRunningRequestMap.keySet()) {
                                this.mHttpHandler.post(com.tencent.liteav.base.http.c.a(this, l));
                            }
                        } else if (checkRequestValid(j)) {
                            if (this.mRunningRequestMap.get(Long.valueOf(j)) == null) {
                                return;
                            }
                            this.mHttpHandler.post(com.tencent.liteav.base.http.d.a(this, j));
                        }
                    }
                }
            } finally {
            }
        }
    }

    public long send(long j, String str, String str2, byte[] bArr, Map<String, String> map, boolean z, boolean z2) {
        if (!checkNativeValid()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid native handle.");
            return 0L;
        }
        return sendInternal(j, new e(str, str2, bArr, map, z2), z);
    }

    public void updateConfig(final int i, final int i2, final int i3, final boolean z, final int i4, final int i5, final String str, final String str2, final String str3, final int i6, long j) {
        this.mHttpHandler.post(new Runnable() { // from class: com.tencent.liteav.base.http.HttpClientAndroid.1
            @Override // java.lang.Runnable
            public final void run() {
                HttpClientAndroid.this.mHttpConfig = new b(i, i2, i3, z, i4, i5, str, str2, str3, d.a(i6));
                HttpClientAndroid.this.mReallyNetworkChannel = d.DEFAULT;
                if (i4 > 0) {
                    HttpClientAndroid.this.mTotalReadBytes = 0L;
                    HttpClientAndroid.this.mStartReadTime = SystemClock.elapsedRealtime();
                }
            }
        });
    }

    public long uploadFile(long j, String str, String str2, byte[] bArr, Map<String, String> map, boolean z, boolean z2, String str3, byte[] bArr2, byte[] bArr3) {
        if (!checkNativeValid()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")upload file failed. Invalid native handle.");
            return 0L;
        } else if (str3.isEmpty()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")upload file failed. Invalid file path(" + str3 + ").");
            return 0L;
        } else {
            return sendInternal(j, new e(str, str2, bArr, map, z2, str3, bArr2, bArr3), z);
        }
    }

    private h getStatusCode(Throwable th) {
        h hVar = h.kUnknownError;
        if (th instanceof FileNotFoundException) {
            return h.kSystemFileOpenFailed;
        }
        if (th instanceof EOFException) {
            return h.kSystemFileWriteFailed;
        }
        if (th instanceof UnknownHostException) {
            return h.kSystemUnknownHost;
        }
        if (th instanceof NoRouteToHostException) {
            return h.kSystemConnectHostFailed;
        }
        if (!(th instanceof SocketException) && !(th instanceof MalformedURLException)) {
            if (th instanceof SocketTimeoutException) {
                return h.kSystemConnectTimeout;
            }
            if (th instanceof ConnectException) {
                return h.kSystemConnectRefused;
            }
            if (th instanceof ProtocolException) {
                return h.kSystemProtocolError;
            }
            if (th instanceof SSLException) {
                return h.kSystemSSLError;
            }
            Log.w(TAG, "(" + hashCode() + ")Failed to convert status code, exception：", th.toString());
            return hVar;
        }
        return h.kSystemCreateSocketFailed;
    }

    private HttpURLConnection createConnection(URL url, Proxy proxy) throws Exception {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 23) {
            return openConnection(url, proxy);
        }
        if (this.mHttpConfig.j == d.DEFAULT) {
            return openConnection(url, proxy);
        }
        HttpURLConnection createConnectionByNetworkType = createConnectionByNetworkType(url, proxy);
        return createConnectionByNetworkType != null ? createConnectionByNetworkType : openConnection(url, proxy);
    }
}
