package com.applovin.impl;

import com.applovin.impl.g4;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class g4 {
    public static final Executor h = new Executor() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkkk
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        }
    };
    public static final Executor i = new androidx.media3.exoplayer.dash.offline.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    private final String b;
    private volatile Object f;
    private volatile Object g;

    /* renamed from: a  reason: collision with root package name */
    private final Object f3132a = new Object();
    private final List c = new ArrayList();
    private volatile boolean d = false;
    private volatile boolean e = false;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(Object obj);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(boolean z, Object obj, Object obj2);
    }

    public g4(String str) {
        this.b = str;
    }

    public static g4 a(String str, Object obj) {
        return new g4(str).b(obj);
    }

    public g4 b(Object obj) {
        a(true, obj, null);
        return this;
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        if (this.d && !this.e) {
            return true;
        }
        return false;
    }

    public String toString() {
        String str;
        if (!this.d) {
            str = "Waiting";
        } else if (this.e) {
            str = "Success -> " + this.f;
        } else {
            str = "Failed -> " + this.g;
        }
        return "Promise(" + b() + ": " + str + ")";
    }

    private Runnable c(final Executor executor, final b bVar) {
        return new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                g4.this.b(executor, bVar);
            }
        };
    }

    public g4 a(Object obj) {
        a(false, null, obj);
        return this;
    }

    public String b() {
        String str = this.b;
        return str != null ? str : super.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Executor executor, final b bVar) {
        try {
            executor.execute(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    g4.this.a(bVar);
                }
            });
        } catch (Throwable th) {
            a(th);
        }
    }

    public void a(Executor executor, final Runnable runnable) {
        a(executor, new b() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkkkk
            @Override // com.applovin.impl.g4.b
            public final void a(boolean z, Object obj, Object obj2) {
                g4.a(runnable, z, obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, boolean z, Object obj, Object obj2) {
        if (z) {
            runnable.run();
        }
    }

    public void a(Executor executor, final a aVar) {
        a(executor, new b() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkkkkkkk
            @Override // com.applovin.impl.g4.b
            public final void a(boolean z, Object obj, Object obj2) {
                g4.a(g4.a.this, z, obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, boolean z, Object obj, Object obj2) {
        if (z) {
            return;
        }
        aVar.a(obj2);
    }

    public void a(Executor executor, b bVar) {
        Runnable c = c(executor, bVar);
        synchronized (this.f3132a) {
            try {
                if (!this.d) {
                    this.c.add(c);
                } else {
                    c.run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Object a() {
        g1.a(d());
        return this.g;
    }

    private void a(boolean z, Object obj, Object obj2) {
        synchronized (this.f3132a) {
            try {
                if (this.d) {
                    return;
                }
                this.f = obj;
                this.g = obj2;
                this.e = z;
                this.d = true;
                for (Runnable runnable : this.c) {
                    runnable.run();
                }
                this.c.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar) {
        try {
            bVar.a(this.e, this.f, this.g);
        } catch (Throwable th) {
            a(th);
        }
    }

    private void a(Throwable th) {
        g1.a(th);
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.C0;
        if (kVar != null) {
            m1 E = kVar.E();
            E.a("Promise", "PromiseCallback: " + b(), th);
        }
    }
}
