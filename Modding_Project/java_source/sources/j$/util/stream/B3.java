package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public abstract class B3 extends E3 implements j$.util.I {
    public abstract void e(Object obj);

    public abstract AbstractC2201d3 f(int i);

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

    @Override // j$.util.I
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (d() != D3.NO_MORE && ((j$.util.I) this.f11867a).tryAdvance(this)) {
            if (b(1L) == 1) {
                e(obj);
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2201d3 abstractC2201d3 = null;
        while (true) {
            D3 d = d();
            if (d == D3.NO_MORE) {
                return;
            }
            D3 d3 = D3.MAYBE_MORE;
            Spliterator spliterator = this.f11867a;
            if (d == d3) {
                int i = this.c;
                if (abstractC2201d3 == null) {
                    abstractC2201d3 = f(i);
                } else {
                    abstractC2201d3.b = 0;
                }
                long j = 0;
                while (((j$.util.I) spliterator).tryAdvance(abstractC2201d3)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                abstractC2201d3.b(obj, b(j));
            } else {
                ((j$.util.I) spliterator).forEachRemaining(obj);
                return;
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
