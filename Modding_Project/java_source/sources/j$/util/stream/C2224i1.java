package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.i1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2224i1 extends Q2 implements A0, InterfaceC2277t0 {
    @Override // j$.util.stream.InterfaceC2277t0, j$.util.stream.InterfaceC2282u0
    public final A0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC2282u0
    public final C0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.v(this, j, j2);
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        AbstractC2273s1.i(this, l);
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
        AbstractC2273s1.p(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.S2, j$.util.stream.B0
    public final void d(Object obj, int i) {
        super.d((long[]) obj, i);
    }

    @Override // j$.util.stream.S2, j$.util.stream.B0
    public final void f(Object obj) {
        super.f((LongConsumer) obj);
    }

    @Override // j$.util.stream.Q2, j$.util.stream.S2, java.lang.Iterable
    public final j$.util.I spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.Q2, j$.util.stream.S2, java.lang.Iterable
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
        return (long[]) super.e();
    }
}
