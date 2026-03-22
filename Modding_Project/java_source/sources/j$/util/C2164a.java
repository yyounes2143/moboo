package j$.util;

import java.util.ConcurrentModificationException;
import java.util.function.Consumer;
/* renamed from: j$.util.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2164a implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public final java.util.List f11826a;
    public int b;
    public int c;

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
    public final java.util.Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2164a(java.util.List list) {
        this.f11826a = list;
        this.b = 0;
        this.c = -1;
    }

    public C2164a(C2164a c2164a, int i, int i2) {
        this.f11826a = c2164a.f11826a;
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        int i = this.c;
        if (i < 0) {
            int size = this.f11826a.size();
            this.c = size;
            return size;
        }
        return i;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int a2 = a();
        int i = this.b;
        int i2 = (a2 + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new C2164a(this, i, i2);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int a2 = a();
        int i = this.b;
        if (i < a2) {
            this.b = i + 1;
            try {
                consumer.accept(this.f11826a.get(i));
                return true;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int a2 = a();
        this.b = a2;
        for (int i = this.b; i < a2; i++) {
            try {
                consumer.accept(this.f11826a.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a() - this.b;
    }
}
