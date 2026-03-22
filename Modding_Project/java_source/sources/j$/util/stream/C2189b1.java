package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.b1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2189b1 extends AbstractC2199d1 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }
}
