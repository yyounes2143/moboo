package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public abstract class Z2 implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11895a;
    public final AbstractC2182a b;
    public Supplier c;
    public Spliterator d;
    public InterfaceC2225i2 e;
    public BooleanSupplier f;
    public long g;
    public AbstractC2192c h;
    public boolean i;

    public abstract void d();

    public abstract Z2 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    public Z2(AbstractC2182a abstractC2182a, Supplier supplier, boolean z) {
        this.b = abstractC2182a;
        this.c = supplier;
        this.d = null;
        this.f11895a = z;
    }

    public Z2(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z) {
        this.b = abstractC2182a;
        this.c = null;
        this.d = spliterator;
        this.f11895a = z;
    }

    public final void c() {
        if (this.d == null) {
            this.d = (Spliterator) this.c.get();
            this.c = null;
        }
    }

    public final boolean a() {
        AbstractC2192c abstractC2192c = this.h;
        if (abstractC2192c == null) {
            if (this.i) {
                return false;
            }
            c();
            d();
            this.g = 0L;
            this.e.m(this.d.getExactSizeIfKnown());
            return b();
        }
        long j = this.g + 1;
        this.g = j;
        boolean z = j < abstractC2192c.count();
        if (z) {
            return z;
        }
        this.g = 0L;
        this.h.clear();
        return b();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (this.f11895a && this.h == null && !this.i) {
            c();
            Spliterator trySplit = this.d.trySplit();
            if (trySplit == null) {
                return null;
            }
            return e(trySplit);
        }
        return null;
    }

    public final boolean b() {
        while (this.h.count() == 0) {
            if (this.e.o() || !this.f.getAsBoolean()) {
                if (this.i) {
                    return false;
                }
                this.e.l();
                this.i = true;
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (X2.SIZED.l(this.b.f)) {
            return this.d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int i = this.b.f;
        int i2 = i & ((~i) >> 1) & X2.j & X2.f;
        return (i2 & 64) != 0 ? (i2 & (-16449)) | (this.d.characteristics() & 16448) : i2;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.com.android.tools.r8.a.o(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.d);
    }
}
