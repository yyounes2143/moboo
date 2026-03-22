package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Km  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0774Km {
    public final int A00;
    public final long A01;

    public C0774Km(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C0774Km A00(InterfaceC1850lN interfaceC1850lN, C4J c4j) throws IOException {
        interfaceC1850lN.AG9(c4j.A0l(), 0, 8);
        c4j.A0f(0);
        int A0C = c4j.A0C();
        long size = c4j.A0O();
        return new C0774Km(A0C, size);
    }
}
