package com.facebook.ads.redexgen.X;

import android.database.Cursor;
/* renamed from: com.facebook.ads.redexgen.X.md  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1926md implements BC {
    public final Cursor A00;

    public final /* synthetic */ boolean A01() {
        return BB.A00(this);
    }

    public C1926md(Cursor cursor) {
        this.A00 = cursor;
    }

    public final B8 A00() {
        return C9H.A03(this.A00);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.A00.close();
    }

    @Override // com.facebook.ads.redexgen.X.BC
    public final int getPosition() {
        return this.A00.getPosition();
    }

    @Override // com.facebook.ads.redexgen.X.BC
    public final boolean moveToPosition(int i) {
        return this.A00.moveToPosition(i);
    }
}
