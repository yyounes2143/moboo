package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.r3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2270r3 extends Z2 implements j$.util.F {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.stream.Z2
    public final Z2 e(Spliterator spliterator) {
        return new Z2(this.b, spliterator, this.f11895a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.S2, java.lang.Object, j$.util.stream.c, java.util.function.LongConsumer] */
    @Override // j$.util.stream.Z2
    public final void d() {
        ?? s2 = new S2();
        this.h = s2;
        Objects.requireNonNull(s2);
        this.e = this.b.S(new C2266q3(s2, 1));
        this.f = new j$.util.function.g(this, 12);
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final j$.util.F trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final j$.util.I trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.stream.Z2, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.F) super.trySplit();
    }

    @Override // j$.util.I
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j;
        Objects.requireNonNull(longConsumer);
        boolean a2 = a();
        if (a2) {
            Q2 q2 = (Q2) this.h;
            long j2 = this.g;
            int u = q2.u(j2);
            if (q2.c == 0 && u == 0) {
                j = ((long[]) q2.e)[(int) j2];
            } else {
                j = ((long[][]) q2.f)[u][(int) (j2 - q2.d[u])];
            }
            longConsumer.accept(j);
        }
        return a2;
    }

    @Override // j$.util.I
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(longConsumer);
            c();
            Objects.requireNonNull(longConsumer);
            C2266q3 c2266q3 = new C2266q3(longConsumer, 0);
            this.b.R(this.d, c2266q3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(longConsumer));
    }
}
