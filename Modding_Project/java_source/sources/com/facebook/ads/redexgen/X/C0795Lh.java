package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Lh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0795Lh {
    public static final C0795Lh A02 = new C0795Lh();
    public byte A00 = 3;
    public boolean A01 = true;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C0795Lh)) {
            return false;
        }
        C0795Lh c0795Lh = (C0795Lh) obj;
        return this.A00 == c0795Lh.A00 && this.A01 == c0795Lh.A01;
    }

    public final int hashCode() {
        return new Byte(this.A00).hashCode() + new Boolean(this.A01).hashCode();
    }
}
