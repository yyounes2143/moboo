package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class N0 extends E0 {
    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        return new AbstractC2209f1(this);
    }

    @Override // j$.util.stream.C0
    public final void j(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        C0 c0 = this.f11866a;
        c0.j(objArr, i);
        this.b.j(objArr, i + ((int) c0.count()));
    }

    @Override // j$.util.stream.C0
    public final Object[] p(IntFunction intFunction) {
        long j = this.c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        j(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.C0
    public final void forEach(Consumer consumer) {
        this.f11866a.forEach(consumer);
        this.b.forEach(consumer);
    }

    @Override // j$.util.stream.C0
    public final C0 i(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.c) {
            return this;
        }
        long count = this.f11866a.count();
        if (j >= count) {
            return this.b.i(j - count, j2 - count, intFunction);
        } else if (j2 > count) {
            return AbstractC2273s1.C(Y2.REFERENCE, this.f11866a.i(j, count, intFunction), this.b.i(0L, j2 - count, intFunction));
        } else {
            return this.f11866a.i(j, j2, intFunction);
        }
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.f11866a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
