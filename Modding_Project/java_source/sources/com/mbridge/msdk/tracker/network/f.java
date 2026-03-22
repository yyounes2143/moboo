package com.mbridge.msdk.tracker.network;

import android.os.Handler;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class f implements w {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f9674a;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Handler f9675a;

        public a(Handler handler) {
            this.f9675a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f9675a.post(runnable);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final t f9676a;
        private final v b;
        private final Runnable c;

        public b(t tVar, v vVar, Runnable runnable) {
            this.f9676a = tVar;
            this.b = vVar;
            this.c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9676a.v()) {
                this.f9676a.c("canceled-at-delivery");
                return;
            }
            if (this.b.a()) {
                this.f9676a.a((t) this.b.f9697a);
            } else {
                this.f9676a.b(this.b.c);
            }
            if (this.b.d) {
                this.f9676a.a("intermediate-response");
            } else {
                this.f9676a.c("done");
            }
            Runnable runnable = this.c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(Handler handler) {
        this.f9674a = new a(handler);
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, v<?> vVar) {
        a(tVar, vVar, null);
    }

    public void a(t<?> tVar, v<?> vVar, Runnable runnable) {
        tVar.w();
        tVar.a("post-response");
        this.f9674a.execute(new b(tVar, vVar, runnable));
    }

    public f(Executor executor) {
        this.f9674a = executor;
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, b0 b0Var) {
        tVar.a("post-error");
        this.f9674a.execute(new b(tVar, v.a(b0Var), null));
    }
}
