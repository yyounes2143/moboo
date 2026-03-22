package com.mbridge.msdk.tracker;

import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.t;
import com.mbridge.msdk.tracker.network.v;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private r f9698a;
    private final int b;
    private final p c;
    private final w d;
    private final int e;
    private com.mbridge.msdk.tracker.network.u f;
    private final Executor g;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeReportResponseThread");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class b implements v.a {

        /* renamed from: a  reason: collision with root package name */
        private final r f9700a;
        private final t b;

        public b(r rVar, t tVar) {
            this.f9700a = rVar;
            this.b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.a
        public void a(b0 b0Var) {
            int a2;
            int b;
            String message;
            if (y.a(this.f9700a)) {
                if (b0Var != null) {
                    try {
                        a2 = b0Var.a();
                        b = b0Var.b();
                        message = b0Var.getMessage();
                    } catch (Exception unused) {
                        boolean z = com.mbridge.msdk.tracker.a.f9655a;
                        return;
                    }
                } else {
                    b = 0;
                    message = "";
                    a2 = 0;
                }
                this.f9700a.a(this.b, 0, String.format("volleyError:%s,responseCode:%s,errorMessage:%s", Integer.valueOf(a2), Integer.valueOf(b), message));
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class c implements v.b {

        /* renamed from: a  reason: collision with root package name */
        private final r f9701a;
        private final t b;

        public c(r rVar, t tVar) {
            this.f9701a = rVar;
            this.b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.b
        public void a(Object obj) {
            if (y.a(this.f9701a)) {
                try {
                    this.f9701a.a(this.b);
                } catch (Exception unused) {
                    boolean z = com.mbridge.msdk.tracker.a.f9655a;
                }
            }
        }
    }

    public o(int i, p pVar, w wVar, int i2) {
        this.b = i;
        this.c = pVar;
        this.d = wVar;
        this.e = i2;
        this.g = new ThreadPoolExecutor(i, i, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public void a(r rVar) {
        this.f9698a = rVar;
    }

    public void b(t tVar, Map<String, String> map, boolean z) {
        if (y.b(map)) {
            r rVar = this.f9698a;
            if (rVar != null) {
                try {
                    rVar.a(tVar, 0, "params is null");
                    return;
                } catch (Exception unused) {
                    boolean z2 = com.mbridge.msdk.tracker.a.f9655a;
                    return;
                }
            }
            return;
        }
        try {
            a();
            this.f.a(a(tVar, map, z));
        } catch (Exception e) {
            boolean z3 = com.mbridge.msdk.tracker.a.f9655a;
            if (y.a(this.f9698a)) {
                this.f9698a.a(tVar, 0, e.getMessage());
            }
        }
    }

    private v<Object> a(t tVar, Map<String, String> map, boolean z) {
        v<Object> vVar;
        if (this.e == 1) {
            vVar = new v<>(this.c.c(), 1, this.c.a());
        } else {
            vVar = new v<>(this.c.c(), 1);
        }
        vVar.a(map);
        vVar.a(false);
        vVar.c(true);
        vVar.b(true);
        vVar.a(this.d);
        vVar.a(z ? t.a.HIGH : t.a.NORMAL);
        vVar.a((v.b<Object>) new c(this.f9698a, tVar));
        vVar.a((v.a) new b(this.f9698a, tVar));
        return vVar;
    }

    private void a() {
        if (y.a(this.f)) {
            return;
        }
        com.mbridge.msdk.tracker.network.u a2 = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(this.c.b()), new com.mbridge.msdk.tracker.network.f(this.g), this.b, null);
        this.f = a2;
        a2.b();
    }
}
