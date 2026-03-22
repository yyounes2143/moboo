package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class v implements d {

    /* renamed from: a  reason: collision with root package name */
    final t f9623a;
    final com.mbridge.msdk.thrid.okhttp.internal.http.j b;
    final com.mbridge.msdk.thrid.okio.a c;
    @Nullable
    private n d;
    final w e;
    final boolean f;
    private boolean g;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a extends com.mbridge.msdk.thrid.okio.a {
        public a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        public void j() {
            v.this.cancel();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class b extends com.mbridge.msdk.thrid.okhttp.internal.b {
        static final /* synthetic */ boolean c = true;
        final /* synthetic */ v b;

        public void a(ExecutorService executorService) {
            if (!c && Thread.holdsLock(this.b.f9623a.j())) {
                throw new AssertionError();
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e);
                    this.b.d.callFailed(this.b, interruptedIOException);
                    throw null;
                }
            } catch (Throwable th) {
                this.b.f9623a.j().a(this);
                throw th;
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean z;
            Throwable th;
            this.b.c.h();
            try {
                try {
                    this.b.c();
                    try {
                        throw null;
                    } catch (Throwable th2) {
                        th = th2;
                        z = true;
                        this.b.cancel();
                        if (!z) {
                            new IOException("canceled due to " + th);
                            throw null;
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    this.b.f9623a.j().a(this);
                    throw th3;
                }
            } catch (IOException e) {
                this.b.d.callFailed(this.b, this.b.a(e));
                throw null;
            } catch (Throwable th4) {
                z = false;
                th = th4;
            }
        }

        public v c() {
            return this.b;
        }

        public String d() {
            return this.b.e.g().g();
        }
    }

    private v(t tVar, w wVar, boolean z) {
        this.f9623a = tVar;
        this.e = wVar;
        this.f = z;
        this.b = new com.mbridge.msdk.thrid.okhttp.internal.http.j(tVar, z);
        a aVar = new a();
        this.c = aVar;
        aVar.a(tVar.b(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public v clone() {
        return a(this.f9623a, this.e, this.f);
    }

    public y c() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f9623a.p());
        arrayList.add(this.b);
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.a(this.f9623a.i()));
        this.f9623a.q();
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.cache.a(null));
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.connection.a(this.f9623a));
        if (!this.f) {
            arrayList.addAll(this.f9623a.r());
        }
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.b(this.f));
        y a2 = new com.mbridge.msdk.thrid.okhttp.internal.http.g(arrayList, null, null, null, 0, this.e, this, this.d, this.f9623a.e(), this.f9623a.y(), this.f9623a.C()).a(this.e);
        if (!this.b.b()) {
            return a2;
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a2);
        throw new IOException("Canceled");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public void cancel() {
        this.b.a();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public y d() throws IOException {
        synchronized (this) {
            if (!this.g) {
                this.g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        a();
        this.c.h();
        this.d.callStart(this);
        try {
            try {
                this.f9623a.j().a(this);
                y c = c();
                if (c != null) {
                    return c;
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException a2 = a(e);
                this.d.callFailed(this, a2);
                throw a2;
            }
        } finally {
            this.f9623a.j().b(this);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public boolean h() {
        return this.b.b();
    }

    public static v a(t tVar, w wVar, boolean z) {
        v vVar = new v(tVar, wVar, z);
        vVar.d = tVar.l().a(vVar);
        return vVar;
    }

    @Nullable
    public IOException a(@Nullable IOException iOException) {
        if (this.c.i()) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
            return interruptedIOException;
        }
        return iOException;
    }

    private void a() {
        this.b.a(com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("response.body().close()"));
    }
}
