package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.n3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2251n3 extends Z2 implements j$.util.A {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.stream.Z2
    public final Z2 e(Spliterator spliterator) {
        return new Z2(this.b, spliterator, this.f11895a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.S2, java.lang.Object, j$.util.stream.c, java.util.function.DoubleConsumer] */
    @Override // j$.util.stream.Z2
    public final void d() {
        ?? s2 = new S2();
        this.h = s2;
        Objects.requireNonNull(s2);
        this.e = this.b.S(new C2246m3(s2, 1));
        this.f = new j$.util.function.g(this, 10);
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final j$.util.A trySplit() {
        return (j$.util.A) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final j$.util.I trySplit() {
        return (j$.util.A) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.A) super.trySplit();
    }

    @Override // j$.util.I
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d;
        Objects.requireNonNull(doubleConsumer);
        boolean a2 = a();
        if (a2) {
            M2 m2 = (M2) this.h;
            long j = this.g;
            int u = m2.u(j);
            if (m2.c == 0 && u == 0) {
                d = ((double[]) m2.e)[(int) j];
            } else {
                d = ((double[][]) m2.f)[u][(int) (j - m2.d[u])];
            }
            doubleConsumer.accept(d);
        }
        return a2;
    }

    @Override // j$.util.I
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(doubleConsumer);
            c();
            Objects.requireNonNull(doubleConsumer);
            C2246m3 c2246m3 = new C2246m3(doubleConsumer, 0);
            this.b.R(this.d, c2246m3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(doubleConsumer));
    }
}
