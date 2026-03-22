package com.facebook.ads.redexgen.X;

import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Wz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1091Wz implements Closeable {
    public C1090Wy A00;
    public boolean A01;
    public final C1089Wx A02;
    public final Runnable A03;

    public C1091Wz(long j, Runnable runnable) {
        this.A02 = new C1089Wx(j);
        this.A02.A02();
        this.A03 = runnable;
        this.A01 = false;
    }

    private final synchronized void A03() {
        if (this.A00 == null && !this.A01) {
            this.A00 = new C1090Wy(this);
        }
    }

    public final C1089Wx A04() {
        return this.A02;
    }

    public final synchronized void A05() {
        if (this.A01) {
            return;
        }
        if (this.A00 == null) {
            this.A00 = new C1090Wy(this);
        }
        this.A00.A00();
    }

    public final synchronized void A06() {
        if (this.A02.A05() && !this.A01) {
            A03();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        C1090Wy executing;
        synchronized (this) {
            this.A01 = true;
            executing = this.A00;
        }
        if (executing != null) {
            executing.close();
        }
    }
}
