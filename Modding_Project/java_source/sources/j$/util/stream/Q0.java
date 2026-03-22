package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class Q0 extends M2 implements InterfaceC2292w0, InterfaceC2267r0 {
    @Override // j$.util.stream.InterfaceC2282u0
    public final C0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC2267r0, j$.util.stream.InterfaceC2282u0
    public final InterfaceC2292w0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.t(this, j, j2);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ Object[] p(IntFunction intFunction) {
        return AbstractC2273s1.m(this, intFunction);
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        AbstractC2273s1.e(this, d);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.C0
    public final /* bridge */ /* synthetic */ C0 b(int i) {
        b(i);
        throw null;
    }

    @Override // j$.util.stream.B0, j$.util.stream.C0
    public final B0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ void j(Object[] objArr, int i) {
        AbstractC2273s1.n(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.S2, j$.util.stream.B0
    public final void d(Object obj, int i) {
        super.d((double[]) obj, i);
    }

    @Override // j$.util.stream.S2, j$.util.stream.B0
    public final void f(Object obj) {
        super.f((DoubleConsumer) obj);
    }

    @Override // j$.util.stream.M2, j$.util.stream.S2, java.lang.Iterable
    public final j$.util.I spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.M2, j$.util.stream.S2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        clear();
        v(j);
    }

    @Override // j$.util.stream.S2, j$.util.stream.B0
    public final Object e() {
        return (double[]) super.e();
    }
}
