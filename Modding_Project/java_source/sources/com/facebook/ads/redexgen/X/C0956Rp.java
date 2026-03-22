package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Rp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0956Rp {
    public final long A00;
    public final EnumC0955Ro A01;
    public final String A02;
    public final boolean A03;

    public C0956Rp(String str, boolean z, EnumC0955Ro enumC0955Ro) {
        this(str, z, enumC0955Ro, System.currentTimeMillis());
    }

    public C0956Rp(String str, boolean z, EnumC0955Ro enumC0955Ro, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC0955Ro;
        this.A00 = j;
    }

    public static C0956Rp A00() {
        return new C0956Rp("", true, EnumC0955Ro.A05, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC0955Ro A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
