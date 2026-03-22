package com.applovin.impl;

import com.applovin.impl.r5;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class w5 extends w4 {
    private final WeakReference g;
    private final Object h;

    public w5(g4 g4Var, Object obj, String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
        this.g = new WeakReference(g4Var);
        this.h = obj;
    }

    public static void a(long j, g4 g4Var, Object obj, String str, com.applovin.impl.sdk.k kVar) {
        if (j <= 0) {
            return;
        }
        kVar.q0().a(new w5(g4Var, obj, str, kVar), r5.b.TIMEOUT, j);
    }

    @Override // java.lang.Runnable
    public void run() {
        g4 g4Var = (g4) this.g.get();
        if (g4Var != null && !g4Var.c()) {
            this.f3803a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3803a.O();
                String str = this.b;
                O.d(str, "Attempting to timeout pending task " + g4Var.b() + " with " + this.h);
            }
            g4Var.a(this.h);
        }
    }
}
