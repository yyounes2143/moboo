package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* renamed from: j$.util.stream.p3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2261p3 extends Z2 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.stream.Z2
    public final Z2 e(Spliterator spliterator) {
        return new Z2(this.b, spliterator, this.f11895a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.function.IntConsumer, j$.util.stream.S2, java.lang.Object, j$.util.stream.c] */
    @Override // j$.util.stream.Z2
    public final void d() {
        ?? s2 = new S2();
        this.h = s2;
        Objects.requireNonNull(s2);
        this.e = this.b.S(new C2256o3(s2, 1));
        this.f = new j$.util.function.g(this, 11);
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final j$.util.I trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.I
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i;
        Objects.requireNonNull(intConsumer);
        boolean a2 = a();
        if (a2) {
            O2 o2 = (O2) this.h;
            long j = this.g;
            int u = o2.u(j);
            if (o2.c == 0 && u == 0) {
                i = ((int[]) o2.e)[(int) j];
            } else {
                i = ((int[][]) o2.f)[u][(int) (j - o2.d[u])];
            }
            intConsumer.accept(i);
        }
        return a2;
    }

    @Override // j$.util.I
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(intConsumer);
            c();
            Objects.requireNonNull(intConsumer);
            C2256o3 c2256o3 = new C2256o3(intConsumer, 0);
            this.b.R(this.d, c2256o3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(intConsumer));
    }
}
