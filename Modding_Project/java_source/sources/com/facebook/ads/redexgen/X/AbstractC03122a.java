package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.2a  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC03122a {
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final Object A04;

    public AbstractC03122a(AbstractC03122a abstractC03122a) {
        this.A04 = abstractC03122a.A04;
        this.A00 = abstractC03122a.A00;
        this.A01 = abstractC03122a.A01;
        this.A03 = abstractC03122a.A03;
        this.A02 = abstractC03122a.A02;
    }

    public AbstractC03122a(Object obj) {
        this(obj, -1L);
    }

    public AbstractC03122a(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    public AbstractC03122a(Object obj, int i, int i2, long j, int i3) {
        this.A04 = obj;
        this.A00 = i;
        this.A01 = i2;
        this.A03 = j;
        this.A02 = i3;
    }

    public AbstractC03122a(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public final boolean A00() {
        return this.A00 != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC03122a) {
            AbstractC03122a abstractC03122a = (AbstractC03122a) obj;
            return this.A04.equals(abstractC03122a.A04) && this.A00 == abstractC03122a.A00 && this.A01 == abstractC03122a.A01 && this.A03 == abstractC03122a.A03 && this.A02 == abstractC03122a.A02;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A04.hashCode();
        int result2 = this.A01;
        int result3 = ((((((((17 * 31) + result) * 31) + this.A00) * 31) + result2) * 31) + ((int) this.A03)) * 31;
        int result4 = this.A02;
        return result3 + result4;
    }
}
