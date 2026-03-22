package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class C3 extends E3 implements Spliterator, Consumer {
    public Object f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
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

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (d() != D3.NO_MORE && this.f11867a.tryAdvance(this)) {
            if (b(1L) == 1) {
                consumer.accept(this.f);
                this.f = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2206e3 c2206e3 = null;
        while (true) {
            D3 d = d();
            if (d == D3.NO_MORE) {
                return;
            }
            D3 d3 = D3.MAYBE_MORE;
            Spliterator spliterator = this.f11867a;
            if (d == d3) {
                int i = this.c;
                if (c2206e3 == null) {
                    c2206e3 = new C2206e3(i);
                } else {
                    c2206e3.f11906a = 0;
                }
                long j = 0;
                while (spliterator.tryAdvance(c2206e3)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long b = b(j);
                for (int i2 = 0; i2 < b; i2++) {
                    consumer.accept(c2206e3.b[i2]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.E3
    public final Spliterator c(Spliterator spliterator) {
        return new E3(spliterator, this);
    }
}
