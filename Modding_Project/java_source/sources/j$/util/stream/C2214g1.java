package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.g1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C2214g1 implements A0 {

    /* renamed from: a  reason: collision with root package name */
    public final long[] f11908a;
    public int b;

    @Override // j$.util.stream.C0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2273s1.s(this, consumer);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.v(this, j, j2);
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

    @Override // j$.util.stream.B0
    public final void d(Object obj, int i) {
        int i2 = this.b;
        System.arraycopy(this.f11908a, 0, (long[]) obj, i, i2);
    }

    @Override // j$.util.stream.B0
    public final void f(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            longConsumer.accept(this.f11908a[i]);
        }
    }

    public C2214g1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f11908a = new long[(int) j];
        this.b = 0;
    }

    public C2214g1(long[] jArr) {
        this.f11908a = jArr;
        this.b = jArr.length;
    }

    @Override // j$.util.stream.B0, j$.util.stream.C0
    public final j$.util.I spliterator() {
        int i = this.b;
        long[] jArr = this.f11908a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.X(jArr, 0, i, 1040);
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        int i = this.b;
        long[] jArr = this.f11908a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.X(jArr, 0, i, 1040);
    }

    @Override // j$.util.stream.B0
    public final Object e() {
        long[] jArr = this.f11908a;
        int length = jArr.length;
        int i = this.b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // j$.util.stream.C0
    public final long count() {
        return this.b;
    }

    public String toString() {
        long[] jArr = this.f11908a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.b), Arrays.toString(jArr));
    }
}
