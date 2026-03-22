package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class K0 extends M0 implements InterfaceC2302y0 {
    @Override // j$.util.stream.C0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2273s1.r(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.u(this, j, j2);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ void j(Object[] objArr, int i) {
        AbstractC2273s1.o(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.B0
    public final Object c(int i) {
        return new int[i];
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.I, j$.util.stream.f1] */
    @Override // j$.util.stream.C0
    public final j$.util.I spliterator() {
        return new AbstractC2209f1(this);
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        return new AbstractC2209f1(this);
    }
}
