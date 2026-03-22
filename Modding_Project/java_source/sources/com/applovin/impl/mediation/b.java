package com.applovin.impl.mediation;

import com.applovin.impl.l2;
import com.applovin.impl.mediation.a;
import com.applovin.impl.mediation.c;
import com.applovin.impl.sdk.k;
import com.applovin.impl.t2;
import com.applovin.sdk.AppLovinSdkUtils;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b implements a.InterfaceC0015a, c.a {

    /* renamed from: a  reason: collision with root package name */
    private final k f3416a;
    private final a b;
    private final c c;

    public b(k kVar) {
        this.f3416a = kVar;
        this.b = new a(kVar);
        this.c = new c(kVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void c(t2 t2Var) {
        h A;
        if (t2Var != null && (A = t2Var.A()) != null && t2Var.w().compareAndSet(false, true)) {
            l2.e(A.c(), t2Var);
        }
    }

    public void a() {
        this.c.a();
        this.b.a();
    }

    @Override // com.applovin.impl.mediation.c.a
    public void b(t2 t2Var) {
        c(t2Var);
    }

    public void e(t2 t2Var) {
        long g0 = t2Var.g0();
        if (g0 >= 0) {
            this.c.a(t2Var, g0);
        }
        if (!t2Var.o0() && !t2Var.p0()) {
            return;
        }
        this.b.a(t2Var, this);
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0015a
    public void a(final t2 t2Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                b.this.c(t2Var);
            }
        }, t2Var.f0());
    }
}
