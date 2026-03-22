package com.facebook.ads.redexgen.X;

import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.le  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1866le implements InterfaceC0610Ed {
    public final int A00;

    public C1866le() {
        this(-1);
    }

    public C1866le(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0610Ed
    public final int A8R(int i) {
        if (this.A00 == -1) {
            if (i == 7) {
                return 6;
            }
            return 3;
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0610Ed
    public final long A8m(C0609Ec c0609Ec) {
        IOException iOException = c0609Ec.A03;
        if ((iOException instanceof C03182i) || (iOException instanceof FileNotFoundException) || (iOException instanceof C04869h) || (iOException instanceof C0620En) || C03874z.A00(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((c0609Ec.A00 - 1) * 1000, 5000);
    }
}
