package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Nl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0850Nl {
    @Nullable
    public static HandlerC0849Nk A00;
    public static final AtomicBoolean A01 = new AtomicBoolean();

    public static HandlerC0849Nk A00(C1350cu c1350cu) {
        if (A00 == null) {
            A00 = new HandlerC0849Nk(c1350cu);
        }
        return A00;
    }

    public static void A01(C1350cu c1350cu) {
        if (UA.A0F(c1350cu)) {
            A03(c1350cu);
        }
    }

    public static void A02(C1350cu c1350cu) {
        if (UA.A0E(c1350cu)) {
            A03(c1350cu);
        }
    }

    public static void A03(C1350cu c1350cu) {
        if (A01.compareAndSet(false, true)) {
            XJ.A01.execute(new C1586go(c1350cu));
        }
    }
}
