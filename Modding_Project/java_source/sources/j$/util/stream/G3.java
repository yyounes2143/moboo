package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class G3 extends Z2 {
    @Override // j$.util.stream.Z2
    public final Z2 e(Spliterator spliterator) {
        return new Z2(this.b, spliterator, this.f11895a);
    }

    @Override // j$.util.stream.Z2
    public final void d() {
        T2 t2 = new T2();
        this.h = t2;
        Objects.requireNonNull(t2);
        this.e = this.b.S(new F3(t2, 0));
        this.f = new j$.util.function.g(this, 13);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a2 = a();
        if (a2) {
            T2 t2 = (T2) this.h;
            long j = this.g;
            if (t2.c == 0) {
                if (j < t2.b) {
                    obj = t2.e[(int) j];
                } else {
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
            } else if (j >= t2.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                for (int i = 0; i <= t2.c; i++) {
                    long j2 = t2.d[i];
                    Object[] objArr = t2.f[i];
                    if (j < objArr.length + j2) {
                        obj = objArr[(int) (j - j2)];
                    }
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            consumer.accept(obj);
            return a2;
        }
        return a2;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(consumer);
            c();
            Objects.requireNonNull(consumer);
            F3 f3 = new F3(consumer, 1);
            this.b.R(this.d, f3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(consumer));
    }
}
