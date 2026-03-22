package j$.util.stream;

import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public abstract class V0 implements C0 {
    @Override // j$.util.stream.C0
    public final long count() {
        return 0L;
    }

    public final void d(Object obj, int i) {
    }

    public final void f(Object obj) {
    }

    @Override // j$.util.stream.C0
    public /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.C0
    public C0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.C0
    public final Object[] p(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }
}
