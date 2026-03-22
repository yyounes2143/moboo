package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class N2 extends R2 implements Spliterator.OfInt {
    public final /* synthetic */ O2 g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.stream.R2
    public final void a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // j$.util.stream.R2
    public final j$.util.I b(Object obj, int i, int i2) {
        return Spliterators.spliterator((int[]) obj, i, i2 + i, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N2(O2 o2, int i, int i2, int i3, int i4) {
        super(o2, i, i2, i3, i4);
        this.g = o2;
    }

    @Override // j$.util.stream.R2
    public final j$.util.I c(int i, int i2, int i3, int i4) {
        return new N2(this.g, i, i2, i3, i4);
    }
}
