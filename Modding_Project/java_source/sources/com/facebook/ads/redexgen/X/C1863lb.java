package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;
/* renamed from: com.facebook.ads.redexgen.X.lb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1863lb implements InterfaceExecutorC0632Ez {
    public final /* synthetic */ C3X A00;
    public final /* synthetic */ Executor A01;

    public C1863lb(Executor executor, C3X c3x) {
        this.A01 = executor;
        this.A00 = c3x;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceExecutorC0632Ez
    public final void AGr() {
        this.A00.A31(this.A01);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.A01.execute(runnable);
    }
}
