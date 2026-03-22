package j$.util.stream;

import java.util.function.Consumer;
/* renamed from: j$.util.stream.c1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2194c1 extends AbstractC2199d1 implements j$.util.F {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }
}
