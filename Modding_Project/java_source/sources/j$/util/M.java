package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class M implements PrimitiveIterator$OfLong, LongConsumer, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11813a = false;
    public long b;
    public final /* synthetic */ F c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.InterfaceC2314w
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (Z.f11825a) {
            Z.a(M.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator, j$.util.InterfaceC2172i
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (Z.f11825a) {
            Z.a(M.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new C2311t(consumer, 0));
    }

    public M(F f) {
        this.c = f;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f11813a = true;
        this.b = j;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f11813a) {
            this.c.tryAdvance((LongConsumer) this);
        }
        return this.f11813a;
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final long nextLong() {
        if (!this.f11813a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f11813a = false;
        return this.b;
    }
}
