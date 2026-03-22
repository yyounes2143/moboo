package j$.util.stream;

import j$.util.Spliterator;
/* renamed from: j$.util.stream.m1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2244m1 extends AbstractC2249n1 {
    public final Object[] h;

    public C2244m1(Spliterator spliterator, AbstractC2182a abstractC2182a, Object[] objArr) {
        super(spliterator, abstractC2182a, objArr.length);
        this.h = objArr;
    }

    public C2244m1(C2244m1 c2244m1, Spliterator spliterator, long j, long j2) {
        super(c2244m1, spliterator, j, j2, c2244m1.h.length);
        this.h = c2244m1.h;
    }

    @Override // j$.util.stream.AbstractC2249n1
    public final AbstractC2249n1 b(Spliterator spliterator, long j, long j2) {
        return new C2244m1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
