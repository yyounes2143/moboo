package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Comparator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class K2 implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public int f11878a;
    public final int b;
    public int c;
    public final int d;
    public Object[] e;
    public final /* synthetic */ T2 f;

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

    public K2(T2 t2, int i, int i2, int i3, int i4) {
        this.f = t2;
        this.f11878a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        Object[][] objArr = t2.f;
        this.e = objArr == null ? t2.e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f11878a;
        int i2 = this.d;
        int i3 = this.b;
        if (i == i3) {
            return i2 - this.c;
        }
        long[] jArr = this.f.d;
        return ((jArr[i3] + i2) - jArr[i]) - this.c;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f11878a;
        int i2 = this.b;
        if (i < i2 || (i == i2 && this.c < this.d)) {
            Object[] objArr = this.e;
            int i3 = this.c;
            this.c = i3 + 1;
            consumer.accept(objArr[i3]);
            if (this.c == this.e.length) {
                this.c = 0;
                int i4 = this.f11878a + 1;
                this.f11878a = i4;
                Object[][] objArr2 = this.f.f;
                if (objArr2 != null && i4 <= i2) {
                    this.e = objArr2[i4];
                }
            }
            return true;
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        T2 t2;
        Objects.requireNonNull(consumer);
        int i = this.f11878a;
        int i2 = this.d;
        int i3 = this.b;
        if (i < i3 || (i == i3 && this.c < i2)) {
            int i4 = this.c;
            while (true) {
                t2 = this.f;
                if (i >= i3) {
                    break;
                }
                Object[] objArr = t2.f[i];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i++;
                i4 = 0;
            }
            Object[] objArr2 = this.f11878a == i3 ? this.e : t2.f[i3];
            while (i4 < i2) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f11878a = i3;
            this.c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f11878a;
        int i2 = this.b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.c;
            T2 t2 = this.f;
            K2 k2 = new K2(t2, i, i3, i4, t2.f[i3].length);
            this.f11878a = i2;
            this.c = 0;
            this.e = t2.f[i2];
            return k2;
        } else if (i == i2) {
            int i5 = this.c;
            int i6 = (this.d - i5) / 2;
            if (i6 == 0) {
                return null;
            }
            Object[] objArr = this.e;
            int i7 = i5 + i6;
            Spliterators.a(((Object[]) Objects.requireNonNull(objArr)).length, i5, i7);
            j$.util.O o = new j$.util.O(objArr, i5, i7, 1040);
            this.c += i6;
            return o;
        } else {
            return null;
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }
}
