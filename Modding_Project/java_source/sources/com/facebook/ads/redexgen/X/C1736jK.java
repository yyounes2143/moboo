package com.facebook.ads.redexgen.X;

import java.io.ByteArrayInputStream;
/* renamed from: com.facebook.ads.redexgen.X.jK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1736jK implements L9 {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public C1736jK(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.L9
    public final void AFz(int i) throws C1735jJ {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override // com.facebook.ads.redexgen.X.L9
    public final void close() throws C1735jJ {
    }

    @Override // com.facebook.ads.redexgen.X.L9
    public final int length() throws C1735jJ {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.X.L9
    public final int read(byte[] bArr) throws C1735jJ {
        return this.A00.read(bArr, 0, bArr.length);
    }
}
