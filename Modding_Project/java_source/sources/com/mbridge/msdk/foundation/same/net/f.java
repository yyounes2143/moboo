package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f {
    private static volatile AtomicInteger b = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private ThreadPoolExecutor f9026a;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("SocketThreadPool");
            return newThread;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f9028a;

        public b(c cVar) {
            this.f9028a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f9028a.a();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private static f f9030a = new f(null);
    }

    public /* synthetic */ f(a aVar) {
        this();
    }

    public static f b() {
        return d.f9030a;
    }

    private f() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
        this.f9026a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr2, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }

    public void a(String str, int i, String str2, boolean z, com.mbridge.msdk.foundation.same.net.b bVar) {
        this.f9026a.execute(new b(new c(str, i, str2, z, bVar)));
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private ByteBuffer f9029a;
        private String b;
        private boolean c;
        private com.mbridge.msdk.foundation.same.net.b d;
        private OutputStream e;
        private int f;
        private Socket g;
        private String h;

        public c(String str, int i, String str2, boolean z, com.mbridge.msdk.foundation.same.net.b bVar) {
            this.b = str;
            this.f = i;
            this.h = str2;
            this.c = z;
            this.d = bVar;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0088 A[Catch: all -> 0x0036, TryCatch #3 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:51:0x01a4, B:59:0x01cd, B:68:0x01ef, B:70:0x01f3, B:71:0x0200, B:93:0x0281, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:79:0x0220, B:83:0x022f, B:85:0x0235, B:87:0x023c, B:82:0x0229), top: B:120:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x008e A[Catch: all -> 0x0036, TryCatch #3 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:51:0x01a4, B:59:0x01cd, B:68:0x01ef, B:70:0x01f3, B:71:0x0200, B:93:0x0281, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:79:0x0220, B:83:0x022f, B:85:0x0235, B:87:0x023c, B:82:0x0229), top: B:120:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[Catch: all -> 0x0036, TryCatch #3 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:51:0x01a4, B:59:0x01cd, B:68:0x01ef, B:70:0x01f3, B:71:0x0200, B:93:0x0281, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:79:0x0220, B:83:0x022f, B:85:0x0235, B:87:0x023c, B:82:0x0229), top: B:120:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c2 A[Catch: all -> 0x0036, TryCatch #3 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:51:0x01a4, B:59:0x01cd, B:68:0x01ef, B:70:0x01f3, B:71:0x0200, B:93:0x0281, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:79:0x0220, B:83:0x022f, B:85:0x0235, B:87:0x023c, B:82:0x0229), top: B:120:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0187  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01a0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                Method dump skipped, instructions count: 744
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.f.c.a():void");
        }

        private void a(String str) {
            if (this.d != null) {
                if (TextUtils.isEmpty(str)) {
                    str = "Unknown exception";
                }
                this.d.onError(new com.mbridge.msdk.foundation.same.net.exception.a(13, new com.mbridge.msdk.foundation.same.net.toolbox.a(404, str.getBytes(), null)));
            }
        }
    }
}
