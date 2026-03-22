package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.pb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2091pb {
    public static C2091pb A03 = null;
    public final A7 A00;
    public final C2104po A01;
    public final C2102pm A02;

    public C2091pb(A7 a7, AbstractC2108ps abstractC2108ps, C2102pm c2102pm, C2104po c2104po) {
        this.A00 = a7;
        this.A01 = c2104po;
        this.A02 = c2102pm;
        abstractC2108ps.A03(new A4(c2102pm));
    }

    public static C2091pb A00(A7 a7, AbstractC2108ps abstractC2108ps, InterfaceC2113px interfaceC2113px, A6 a6) {
        C2091pb localsTestInstance = A03;
        if (localsTestInstance != null) {
            return localsTestInstance;
        }
        C2104po c2104po = new C2104po(a7);
        return new C2091pb(a7, abstractC2108ps, new C2102pm(a7, interfaceC2113px, C0537Bg.A00, a6, c2104po, new Handler(Looper.getMainLooper())), c2104po);
    }

    public final void A01(InterfaceC2107pr interfaceC2107pr) {
        this.A02.A0E(interfaceC2107pr);
    }

    public final void A02(InterfaceC2105pp interfaceC2105pp) {
        this.A02.A0F(interfaceC2105pp);
    }

    public final void A03(InterfaceC2090pa interfaceC2090pa) {
        A04(interfaceC2090pa, null);
    }

    public final void A04(InterfaceC2090pa interfaceC2090pa, C2116q0 c2116q0) {
        if (this.A00.A00 && c2116q0 != null) {
            this.A01.A06(interfaceC2090pa, c2116q0);
        } else {
            this.A01.A05(interfaceC2090pa);
        }
    }

    public final void A05(InterfaceC2090pa interfaceC2090pa, C2116q0 c2116q0, C2110pu c2110pu) {
        if (this.A00.A00 && c2116q0 != null) {
            this.A01.A07(interfaceC2090pa, c2116q0, c2110pu);
        } else {
            this.A01.A08(interfaceC2090pa, c2110pu);
        }
    }

    public final void A06(InterfaceC2090pa interfaceC2090pa, C2110pu c2110pu) {
        A05(interfaceC2090pa, null, c2110pu);
    }
}
