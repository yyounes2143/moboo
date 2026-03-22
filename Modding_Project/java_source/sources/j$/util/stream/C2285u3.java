package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.u3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2285u3 extends AbstractC2290v3 implements j$.util.F {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator, j$.util.stream.x3] */
    @Override // j$.util.stream.AbstractC2300x3
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new AbstractC2300x3((j$.util.F) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC2290v3
    public final Object b() {
        return new C2307z0(1);
    }
}
