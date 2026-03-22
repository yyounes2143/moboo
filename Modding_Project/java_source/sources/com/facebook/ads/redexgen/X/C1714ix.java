package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.ix  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1714ix implements InterfaceC03844w {
    public static String[] A08 = {"FmqEYLEjOBovlIuvu7xTusZ6GIuR3pge", "QeU0DUuOAkxor0HSqOzEAO6P6r4bp110", "WNDsEfwHyCZVTn6rYNycLV5FNYvDeUGR", "", "9kl6sBOZXnbWpCxdvxnR8wYz13jzyZGc", "QdIGCZBZzwjOBdbigrYBFiKU6cV", "ZYM92CzuhlmQLmzBChoRToTytAMTrYW0", "W1yocJmlBB3ILJesLtmFt5l7ilHzoTT3"};
    public int A00;
    public int A01;
    public InterfaceC03814t A02;
    public InterfaceC03844w A04;
    public InterfaceC0801Ln A05;
    public boolean A07;
    public InterfaceC03844w A03 = new C1992nh();
    public InterfaceC0810Lw A06 = InterfaceC0810Lw.A00;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC03844w
    /* renamed from: A00 */
    public final C7S A5A() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00, this.A01);
    }

    private C7S A01(InterfaceC1996nl interfaceC1996nl, int i, int i2) {
        C1715iy c1715iy;
        InterfaceC0801Ln interfaceC0801Ln = (InterfaceC0801Ln) C3M.A01(this.A05);
        if (this.A07 || interfaceC1996nl == null) {
            c1715iy = null;
        } else if (this.A02 != null) {
            InterfaceC03814t interfaceC03814t = this.A02;
            String[] strArr = A08;
            if (strArr[6].charAt(29) == strArr[7].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "BsDku37cs2h0edzjFuAGMntAOCTwp5qB";
            strArr2[1] = "0s0KxP1bBIf3QxkhX8XEl0TpXhOFUtvY";
            c1715iy = interfaceC03814t.A59();
        } else {
            c1715iy = new C1716iz().A00(interfaceC0801Ln).A59();
        }
        return new C7S(interfaceC0801Ln, interfaceC1996nl, this.A03.A5A(), c1715iy, this.A06, i, null, i2, null);
    }

    public final AnonymousClass31 A02() {
        return null;
    }

    public final C1714ix A03(int i) {
        this.A00 = i;
        return this;
    }

    public final C1714ix A04(InterfaceC03844w interfaceC03844w) {
        this.A03 = interfaceC03844w;
        return this;
    }

    public final C1714ix A05(InterfaceC03844w interfaceC03844w) {
        this.A04 = interfaceC03844w;
        return this;
    }

    public final C1714ix A06(InterfaceC0801Ln interfaceC0801Ln) {
        this.A05 = interfaceC0801Ln;
        return this;
    }

    public final C7S A07() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00 | 1, -1000);
    }
}
