package com.applovin.impl.mediation;

import com.applovin.impl.c0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.t2;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final k f3417a;
    private final o b;
    private final a c;
    private c0 d;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void b(t2 t2Var);
    }

    public c(k kVar, a aVar) {
        this.f3417a = kVar;
        this.b = kVar.O();
        this.c = aVar;
    }

    public void a(final t2 t2Var, long j) {
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        }
        this.d = c0.a(j, this.f3417a, new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                c.this.a(t2Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(t2 t2Var) {
        if (o.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Timing out...");
        }
        this.c.b(t2Var);
    }

    public void a() {
        if (o.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        c0 c0Var = this.d;
        if (c0Var != null) {
            c0Var.a();
            this.d = null;
        }
    }
}
