package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.e1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2204e1 extends AbstractC2209f1 {
    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        C0 a2;
        if (c()) {
            boolean tryAdvance = this.d.tryAdvance(consumer);
            if (!tryAdvance) {
                if (this.c == null && (a2 = AbstractC2209f1.a(this.e)) != null) {
                    Spliterator spliterator = a2.spliterator();
                    this.d = spliterator;
                    return spliterator.tryAdvance(consumer);
                }
                this.f11905a = null;
            }
            return tryAdvance;
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f11905a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.c;
            if (spliterator == null) {
                ArrayDeque b = b();
                while (true) {
                    C0 a2 = AbstractC2209f1.a(b);
                    if (a2 != null) {
                        a2.forEach(consumer);
                    } else {
                        this.f11905a = null;
                        return;
                    }
                }
            } else {
                spliterator.forEachRemaining(consumer);
            }
        } else {
            do {
            } while (tryAdvance(consumer));
        }
    }
}
