package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public class O0 implements InterfaceC2292w0 {

    /* renamed from: a  reason: collision with root package name */
    public final double[] f11884a;
    public int b;

    @Override // j$.util.stream.C0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2273s1.q(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.t(this, j, j2);
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
        AbstractC2273s1.n(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.B0
    public final void d(Object obj, int i) {
        int i2 = this.b;
        System.arraycopy(this.f11884a, 0, (double[]) obj, i, i2);
    }

    @Override // j$.util.stream.B0
    public final void f(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            doubleConsumer.accept(this.f11884a[i]);
        }
    }

    public O0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f11884a = new double[(int) j];
        this.b = 0;
    }

    public O0(double[] dArr) {
        this.f11884a = dArr;
        this.b = dArr.length;
    }

    @Override // j$.util.stream.B0, j$.util.stream.C0
    public final j$.util.I spliterator() {
        int i = this.b;
        double[] dArr = this.f11884a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.P(dArr, 0, i, 1040);
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        int i = this.b;
        double[] dArr = this.f11884a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.P(dArr, 0, i, 1040);
    }

    @Override // j$.util.stream.B0
    public final Object e() {
        double[] dArr = this.f11884a;
        int length = dArr.length;
        int i = this.b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // j$.util.stream.C0
    public final long count() {
        return this.b;
    }

    public String toString() {
        double[] dArr = this.f11884a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.b), Arrays.toString(dArr));
    }
}
