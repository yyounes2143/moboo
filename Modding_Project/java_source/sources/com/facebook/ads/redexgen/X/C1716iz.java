package com.facebook.ads.redexgen.X;

import androidx.media3.datasource.cache.CacheDataSink;
/* renamed from: com.facebook.ads.redexgen.X.iz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1716iz implements InterfaceC03814t {
    public InterfaceC0801Ln A02;
    public long A01 = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
    public int A00 = 20480;

    public final C1716iz A00(InterfaceC0801Ln interfaceC0801Ln) {
        this.A02 = interfaceC0801Ln;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03814t
    public final C1715iy A59() {
        return new C1715iy((InterfaceC0801Ln) C3M.A01(this.A02), this.A01, this.A00);
    }
}
