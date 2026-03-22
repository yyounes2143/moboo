package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public class X0 implements InterfaceC2302y0 {

    /* renamed from: a  reason: collision with root package name */
    public final int[] f11891a;
    public int b;

    @Override // j$.util.stream.C0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2273s1.r(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.u(this, j, j2);
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
        AbstractC2273s1.o(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.B0
    public final void d(Object obj, int i) {
        int i2 = this.b;
        System.arraycopy(this.f11891a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.B0
    public final void f(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            intConsumer.accept(this.f11891a[i]);
        }
    }

    public X0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f11891a = new int[(int) j];
        this.b = 0;
    }

    public X0(int[] iArr) {
        this.f11891a = iArr;
        this.b = iArr.length;
    }

    @Override // j$.util.stream.B0, j$.util.stream.C0
    public final j$.util.I spliterator() {
        return Spliterators.spliterator(this.f11891a, 0, this.b, 1040);
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f11891a, 0, this.b, 1040);
    }

    @Override // j$.util.stream.B0
    public final Object e() {
        int[] iArr = this.f11891a;
        int length = iArr.length;
        int i = this.b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.C0
    public final long count() {
        return this.b;
    }

    public String toString() {
        int[] iArr = this.f11891a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.b), Arrays.toString(iArr));
    }
}
