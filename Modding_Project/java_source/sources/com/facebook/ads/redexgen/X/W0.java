package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: assets/audience_network.dex */
public abstract class W0 {
    public static final AtomicReference<InterfaceC1067Vz> A00 = new AtomicReference<>(null);

    public static InterfaceC1067Vz A00() {
        InterfaceC1067Vz errorLogger = A00.get();
        if (errorLogger == null) {
            return new PR();
        }
        return errorLogger;
    }

    public static void A01(InterfaceC1067Vz interfaceC1067Vz) {
        A00.set(interfaceC1067Vz);
    }
}
