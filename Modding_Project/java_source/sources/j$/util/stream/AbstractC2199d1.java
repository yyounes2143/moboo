package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.d1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2199d1 extends AbstractC2209f1 implements j$.util.I {
    @Override // j$.util.I
    public final boolean tryAdvance(Object obj) {
        B0 b0;
        if (c()) {
            boolean tryAdvance = ((j$.util.I) this.d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.c == null && (b0 = (B0) AbstractC2209f1.a(this.e)) != null) {
                    j$.util.I spliterator = b0.spliterator();
                    this.d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f11905a = null;
            }
            return tryAdvance;
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(Object obj) {
        if (this.f11905a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.c;
            if (spliterator == null) {
                ArrayDeque b = b();
                while (true) {
                    B0 b0 = (B0) AbstractC2209f1.a(b);
                    if (b0 != null) {
                        b0.f(obj);
                    } else {
                        this.f11905a = null;
                        return;
                    }
                }
            } else {
                ((j$.util.I) spliterator).forEachRemaining(obj);
            }
        } else {
            do {
            } while (tryAdvance(obj));
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
