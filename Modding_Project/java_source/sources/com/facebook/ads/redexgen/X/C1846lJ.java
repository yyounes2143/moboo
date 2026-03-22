package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.lJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1846lJ implements InterfaceC0681Gw {
    public final long A00;
    public final boolean A01;
    public final long[] A02;
    public final long[] A03;

    public C1846lJ(long[] jArr, long[] jArr2, long j) {
        C3M.A07(jArr.length == jArr2.length);
        int length = jArr2.length;
        this.A01 = length > 0;
        if (this.A01) {
            int length2 = (jArr2[0] > 0L ? 1 : (jArr2[0] == 0L ? 0 : -1));
            if (length2 > 0) {
                int length3 = length + 1;
                this.A02 = new long[length3];
                int length4 = length + 1;
                this.A03 = new long[length4];
                System.arraycopy(jArr, 0, this.A02, 1, length);
                System.arraycopy(jArr2, 0, this.A03, 1, length);
                this.A00 = j;
            }
        }
        this.A02 = jArr;
        this.A03 = jArr2;
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final C0680Gv A8t(long j) {
        if (!this.A01) {
            return new C0680Gv(C0682Gx.A04);
        }
        int A0L = AbstractC03624a.A0L(this.A03, j, true, true);
        C0682Gx c0682Gx = new C0682Gx(this.A03[A0L], this.A02[A0L]);
        int targetIndex = (c0682Gx.A01 > j ? 1 : (c0682Gx.A01 == j ? 0 : -1));
        if (targetIndex != 0) {
            int targetIndex2 = this.A03.length;
            if (A0L != targetIndex2 - 1) {
                int targetIndex3 = A0L + 1;
                long j2 = this.A03[targetIndex3];
                int targetIndex4 = A0L + 1;
                C0682Gx rightSeekPoint = new C0682Gx(j2, this.A02[targetIndex4]);
                return new C0680Gv(c0682Gx, rightSeekPoint);
            }
        }
        return new C0680Gv(c0682Gx);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final boolean AAa() {
        return this.A01;
    }
}
