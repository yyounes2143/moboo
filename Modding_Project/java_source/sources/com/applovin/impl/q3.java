package com.applovin.impl;

import android.os.Process;
import android.os.SystemClock;
import androidx.core.util.Consumer;
import com.applovin.impl.q3;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class q3 {

    /* renamed from: a  reason: collision with root package name */
    private final PriorityBlockingQueue f3506a = new PriorityBlockingQueue();
    private final com.applovin.impl.sdk.k b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final BlockingQueue f3507a;
        private final com.applovin.impl.sdk.k b;

        private void a() {
            b((c) this.f3507a.take());
        }

        private void b(final c cVar) {
            int i;
            HttpURLConnection httpURLConnection;
            byte[] bArr;
            Throwable th;
            byte[] bArr2;
            HttpURLConnection httpURLConnection2;
            long j;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i2 = 0;
            byte[] bArr3 = null;
            try {
                httpURLConnection2 = a(cVar);
                try {
                    if (cVar.d != null && cVar.d.length > 0) {
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setFixedLengthStreamingMode(cVar.d.length);
                        OutputStream outputStream = httpURLConnection2.getOutputStream();
                        outputStream.write(cVar.d);
                        outputStream.close();
                    }
                    elapsedRealtime = SystemClock.elapsedRealtime();
                    i2 = httpURLConnection2.getResponseCode();
                    j = SystemClock.elapsedRealtime();
                } catch (Throwable th2) {
                    th = th2;
                    bArr = null;
                }
            } catch (Throwable th3) {
                th = th3;
                i = 0;
                httpURLConnection = null;
                bArr = null;
            }
            if (i2 > 0) {
                try {
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    bArr = n0.a(inputStream, this.b);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th4) {
                            th = th4;
                            try {
                                HashMap hashMap = new HashMap();
                                CollectionUtils.putStringIfValid("details", "responseDataInputStream", hashMap);
                                this.b.E().a("NetworkCommunicationThread", "processRequest", th, hashMap);
                                throw th;
                            } catch (Throwable th5) {
                                th = th5;
                                httpURLConnection = httpURLConnection2;
                                i = i2;
                                long j2 = elapsedRealtime;
                                Throwable th6 = th;
                                try {
                                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                                    this.b.O().a("NetworkCommunicationThread", th6);
                                    this.b.O();
                                    if (com.applovin.impl.sdk.o.a()) {
                                        this.b.O().d("NetworkCommunicationThread", "Failed to make HTTP request", th6);
                                    }
                                    if (httpURLConnection != null) {
                                        InputStream errorStream = httpURLConnection.getErrorStream();
                                        bArr3 = n0.a(errorStream, this.b);
                                        if (errorStream != null) {
                                            errorStream.close();
                                        }
                                    }
                                    th = th6;
                                    elapsedRealtime = j2;
                                    bArr2 = bArr3;
                                    i2 = i;
                                    httpURLConnection2 = httpURLConnection;
                                    j = elapsedRealtime2;
                                    bArr3 = bArr;
                                    z6.a(httpURLConnection2, this.b);
                                    final d a2 = d.a().a(i2).a(bArr3).b(bArr2).a(j - elapsedRealtime).a(th).a();
                                    cVar.g.execute(new Runnable() { // from class: com.applovin.impl.QQOOOOOO
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            q3.b.a(q3.c.this, a2);
                                        }
                                    });
                                } catch (Throwable th7) {
                                    z6.a(httpURLConnection, this.b);
                                    throw th7;
                                }
                            }
                        }
                    }
                    bArr2 = null;
                    th = null;
                    bArr3 = bArr;
                    z6.a(httpURLConnection2, this.b);
                    final d a22 = d.a().a(i2).a(bArr3).b(bArr2).a(j - elapsedRealtime).a(th).a();
                    cVar.g.execute(new Runnable() { // from class: com.applovin.impl.QQOOOOOO
                        @Override // java.lang.Runnable
                        public final void run() {
                            q3.b.a(q3.c.this, a22);
                        }
                    });
                } catch (Throwable th8) {
                    th = th8;
                    bArr = null;
                }
            } else {
                bArr2 = null;
                th = null;
                z6.a(httpURLConnection2, this.b);
                final d a222 = d.a().a(i2).a(bArr3).b(bArr2).a(j - elapsedRealtime).a(th).a();
                cVar.g.execute(new Runnable() { // from class: com.applovin.impl.QQOOOOOO
                    @Override // java.lang.Runnable
                    public final void run() {
                        q3.b.a(q3.c.this, a222);
                    }
                });
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }

        private b(BlockingQueue blockingQueue, int i, com.applovin.impl.sdk.k kVar) {
            super("AppLovinSdk:network");
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (kVar != null) {
                this.f3507a = blockingQueue;
                this.b = kVar;
                setPriority(((Integer) kVar.a(l4.Q)).intValue());
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, d dVar) {
            cVar.f.accept(dVar);
        }

        private HttpURLConnection a(c cVar) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(cVar.f3508a).openConnection();
            httpURLConnection.setRequestMethod(cVar.b);
            httpURLConnection.setConnectTimeout(cVar.e);
            httpURLConnection.setReadTimeout(cVar.e);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!cVar.c.isEmpty()) {
                for (Map.Entry entry : cVar.c.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c implements Comparable {
        private static final AtomicInteger i = new AtomicInteger();

        /* renamed from: a  reason: collision with root package name */
        private final String f3508a;
        private final String b;
        private final Map c;
        private final byte[] d;
        private final int e;
        private final Consumer f;
        private final Executor g;
        private final int h;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f3509a;
            private String b;
            private Map c = new HashMap();
            private byte[] d;
            private int e;
            private Consumer f;
            private Executor g;

            public a a(String str) {
                this.f3509a = str;
                return this;
            }

            public a b(String str) {
                this.b = str;
                return this;
            }

            public a a(Map map) {
                if (map == null) {
                    map = new HashMap();
                }
                this.c = map;
                return this;
            }

            public a a(String str, String str2) {
                this.c.put(str, str2);
                return this;
            }

            public a a(byte[] bArr) {
                this.d = bArr;
                return this;
            }

            public a a(int i) {
                this.e = i;
                return this;
            }

            public a a(Consumer consumer) {
                this.f = consumer;
                return this;
            }

            public a a(Executor executor) {
                this.g = executor;
                return this;
            }

            public c a() {
                return new c(this);
            }
        }

        @Override // java.lang.Comparable
        /* renamed from: h */
        public int compareTo(c cVar) {
            return this.h - cVar.h;
        }

        private c(a aVar) {
            this.f3508a = aVar.f3509a;
            this.b = aVar.b;
            this.c = aVar.c != null ? aVar.c : Collections.EMPTY_MAP;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
            this.h = i.incrementAndGet();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f3510a;
        private final byte[] b;
        private final byte[] c;
        private final long d;
        private final Throwable e;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f3511a;
            private byte[] b;
            private byte[] c;
            private long d;
            private Throwable e;

            public a a(int i) {
                this.f3511a = i;
                return this;
            }

            public a b(byte[] bArr) {
                this.c = bArr;
                return this;
            }

            public a a(byte[] bArr) {
                this.b = bArr;
                return this;
            }

            public a a(Throwable th) {
                this.e = th;
                return this;
            }

            public a a(long j) {
                this.d = j;
                return this;
            }

            public d a() {
                return new d(this);
            }
        }

        public static a a() {
            return new a();
        }

        public int b() {
            return this.f3510a;
        }

        public int c() {
            Throwable th = this.e;
            if (th == null) {
                return this.f3510a;
            }
            throw th;
        }

        public byte[] d() {
            Throwable th = this.e;
            if (th == null) {
                return this.b;
            }
            throw th;
        }

        public long e() {
            return this.d;
        }

        public byte[] f() {
            return this.c;
        }

        private d(a aVar) {
            this.f3510a = aVar.f3511a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
        }
    }

    public q3(com.applovin.impl.sdk.k kVar) {
        this.b = kVar;
    }

    public void a() {
        for (int i = 0; i < ((Integer) this.b.a(l4.P)).intValue(); i++) {
            new b(this.f3506a, i, this.b).start();
        }
    }

    public void a(c cVar) {
        if (cVar != null) {
            this.f3506a.add(cVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }
}
