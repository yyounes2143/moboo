package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public class F0 implements C0 {

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f11868a;
    public int b;

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.C0
    public final C0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    public F0(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f11868a = (Object[]) intFunction.apply((int) j);
        this.b = 0;
    }

    public F0(Object[] objArr) {
        this.f11868a = objArr;
        this.b = objArr.length;
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        int i = this.b;
        Object[] objArr = this.f11868a;
        Spliterators.a(((Object[]) Objects.requireNonNull(objArr)).length, 0, i);
        return new j$.util.O(objArr, 0, i, 1040);
    }

    @Override // j$.util.stream.C0
    public final void j(Object[] objArr, int i) {
        System.arraycopy(this.f11868a, 0, objArr, i, this.b);
    }

    @Override // j$.util.stream.C0
    public final Object[] p(IntFunction intFunction) {
        Object[] objArr = this.f11868a;
        if (objArr.length == this.b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.stream.C0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.C0
    public final void forEach(Consumer consumer) {
        for (int i = 0; i < this.b; i++) {
            consumer.accept(this.f11868a[i]);
        }
    }

    public String toString() {
        Object[] objArr = this.f11868a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.b), Arrays.toString(objArr));
    }
}
