package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* renamed from: j$.util.stream.z3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2310z3 extends B3 implements Spliterator.OfInt, IntConsumer {
    public int f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.E3
    public final Spliterator c(Spliterator spliterator) {
        return new E3((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.stream.B3
    public final void e(Object obj) {
        ((IntConsumer) obj).accept(this.f);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f = i;
    }

    @Override // j$.util.stream.B3
    public final AbstractC2201d3 f(int i) {
        return new C2191b3(i);
    }
}
