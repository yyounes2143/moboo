package j$.util;

import j$.util.function.Consumer$CC;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class K implements Iterator, Consumer {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11811a = false;
    public Object b;
    public final /* synthetic */ Spliterator c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public K(Spliterator spliterator) {
        this.c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f11811a = true;
        this.b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f11811a) {
            this.c.tryAdvance(this);
        }
        return this.f11811a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f11811a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f11811a = false;
        return this.b;
    }
}
