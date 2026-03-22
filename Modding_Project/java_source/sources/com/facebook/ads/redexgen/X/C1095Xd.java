package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;
/* renamed from: com.facebook.ads.redexgen.X.Xd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1095Xd {
    public static C1095Xd A02;
    public final C0875Om A00;
    public final C1097Xf A01;

    public C1095Xd(C1376dL c1376dL, Executor executor, TE te) {
        this.A01 = new C1097Xf(c1376dL);
        this.A00 = new C0875Om(executor, te, c1376dL);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C1376dL c1376dL, Executor executor, TE te) {
        if (!U7.A1X(c1376dL)) {
            return;
        }
        if (A02 == null) {
            A02 = new C1095Xd(c1376dL, executor, te);
            A02.A00();
            return;
        }
        A02.A02(te);
    }

    private void A02(TE te) {
        this.A00.A07(te);
    }
}
