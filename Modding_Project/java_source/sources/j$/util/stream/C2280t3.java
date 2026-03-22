package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.t3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2280t3 extends AbstractC2290v3 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator, j$.util.stream.x3] */
    @Override // j$.util.stream.AbstractC2300x3
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new AbstractC2300x3((Spliterator.OfInt) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC2290v3
    public final Object b() {
        return new C2297x0(1);
    }
}
