package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;
/* renamed from: j$.util.stream.f1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2209f1 implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public C0 f11905a;
    public int b;
    public Spliterator c;
    public Spliterator d;
    public ArrayDeque e;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
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

    public AbstractC2209f1(C0 c0) {
        this.f11905a = c0;
    }

    public final ArrayDeque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int r = this.f11905a.r();
        while (true) {
            r--;
            if (r < this.b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f11905a.b(r));
        }
    }

    public static C0 a(ArrayDeque arrayDeque) {
        while (true) {
            C0 c0 = (C0) arrayDeque.pollFirst();
            if (c0 == null) {
                return null;
            }
            if (c0.r() == 0) {
                if (c0.count() > 0) {
                    return c0;
                }
            } else {
                for (int r = c0.r() - 1; r >= 0; r--) {
                    arrayDeque.addFirst(c0.b(r));
                }
            }
        }
    }

    public final boolean c() {
        if (this.f11905a == null) {
            return false;
        }
        if (this.d == null) {
            Spliterator spliterator = this.c;
            if (spliterator == null) {
                ArrayDeque b = b();
                this.e = b;
                C0 a2 = a(b);
                if (a2 != null) {
                    this.d = a2.spliterator();
                    return true;
                }
                this.f11905a = null;
                return false;
            }
            this.d = spliterator;
            return true;
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        C0 c0 = this.f11905a;
        if (c0 == null || this.d != null) {
            return null;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.b < c0.r() - 1) {
            C0 c02 = this.f11905a;
            int i = this.b;
            this.b = i + 1;
            return c02.b(i).spliterator();
        }
        C0 b = this.f11905a.b(this.b);
        this.f11905a = b;
        if (b.r() == 0) {
            Spliterator spliterator2 = this.f11905a.spliterator();
            this.c = spliterator2;
            return spliterator2.trySplit();
        }
        C0 c03 = this.f11905a;
        this.b = 1;
        return c03.b(0).spliterator();
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.f11905a == null) {
            return 0L;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.b; i < this.f11905a.r(); i++) {
            j += this.f11905a.b(i).count();
        }
        return j;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.A trySplit() {
        return (j$.util.A) trySplit();
    }
}
