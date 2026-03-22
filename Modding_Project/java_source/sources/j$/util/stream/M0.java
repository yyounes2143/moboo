package j$.util.stream;

import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public abstract class M0 extends E0 implements B0 {
    @Override // j$.util.stream.C0
    public final /* synthetic */ Object[] p(IntFunction intFunction) {
        return AbstractC2273s1.m(this, intFunction);
    }

    @Override // j$.util.stream.B0
    public final void f(Object obj) {
        ((B0) this.f11866a).f(obj);
        ((B0) this.b).f(obj);
    }

    @Override // j$.util.stream.B0
    public final void d(Object obj, int i) {
        C0 c0 = this.f11866a;
        ((B0) c0).d(obj, i);
        ((B0) this.b).d(obj, i + ((int) ((B0) c0).count()));
    }

    @Override // j$.util.stream.B0
    public final Object e() {
        long j = this.c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object c = c((int) j);
        d(c, 0);
        return c;
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f11866a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}
