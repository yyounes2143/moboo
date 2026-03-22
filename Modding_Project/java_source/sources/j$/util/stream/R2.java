package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public abstract class R2 implements j$.util.I {

    /* renamed from: a  reason: collision with root package name */
    public int f11887a;
    public final int b;
    public int c;
    public final int d;
    public Object e;
    public final /* synthetic */ S2 f;

    public abstract void a(int i, Object obj, Object obj2);

    public abstract j$.util.I b(Object obj, int i, int i2);

    public abstract j$.util.I c(int i, int i2, int i3, int i4);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.m(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public R2(S2 s2, int i, int i2, int i3, int i4) {
        this.f = s2;
        this.f11887a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        Object[] objArr = s2.f;
        this.e = objArr == null ? s2.e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f11887a;
        int i2 = this.d;
        int i3 = this.b;
        if (i == i3) {
            return i2 - this.c;
        }
        long[] jArr = this.f.d;
        return ((jArr[i3] + i2) - jArr[i]) - this.c;
    }

    @Override // j$.util.I
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.f11887a;
        int i2 = this.b;
        if (i < i2 || (i == i2 && this.c < this.d)) {
            Object obj2 = this.e;
            int i3 = this.c;
            this.c = i3 + 1;
            a(i3, obj2, obj);
            int i4 = this.c;
            Object obj3 = this.e;
            S2 s2 = this.f;
            if (i4 == s2.t(obj3)) {
                this.c = 0;
                int i5 = this.f11887a + 1;
                this.f11887a = i5;
                Object[] objArr = s2.f;
                if (objArr != null && i5 <= i2) {
                    this.e = objArr[i5];
                }
            }
            return true;
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(Object obj) {
        S2 s2;
        Objects.requireNonNull(obj);
        int i = this.f11887a;
        int i2 = this.d;
        int i3 = this.b;
        if (i < i3 || (i == i3 && this.c < i2)) {
            int i4 = this.c;
            while (true) {
                s2 = this.f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = s2.f[i];
                s2.s(obj2, i4, s2.t(obj2), obj);
                i++;
                i4 = 0;
            }
            s2.s(this.f11887a == i3 ? this.e : s2.f[i3], i4, i2, obj);
            this.f11887a = i3;
            this.c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final j$.util.I trySplit() {
        int i = this.f11887a;
        int i2 = this.b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.c;
            S2 s2 = this.f;
            j$.util.I c = c(i, i3, i4, s2.t(s2.f[i3]));
            this.f11887a = i2;
            this.c = 0;
            this.e = s2.f[i2];
            return c;
        } else if (i == i2) {
            int i5 = this.c;
            int i6 = (this.d - i5) / 2;
            if (i6 == 0) {
                return null;
            }
            j$.util.I b = b(this.e, i5, i6);
            this.c += i6;
            return b;
        } else {
            return null;
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    @Override // j$.util.I, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // j$.util.I, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    @Override // j$.util.I, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.A trySplit() {
        return (j$.util.A) trySplit();
    }
}
