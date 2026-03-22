package j$.util.stream;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class G0 implements C0 {

    /* renamed from: a  reason: collision with root package name */
    public final Collection f11871a;

    @Override // j$.util.stream.C0
    public final /* synthetic */ C0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC2273s1.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.C0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.C0
    public final C0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.C0
    public final void forEach(Consumer consumer) {
        Collection<Object> collection = this.f11871a;
        if (collection instanceof j$.util.Collection) {
            ((j$.util.Collection) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    public G0(Collection collection) {
        this.f11871a = collection;
    }

    @Override // j$.util.stream.C0
    public final Spliterator spliterator() {
        return Collection.EL.stream(this.f11871a).spliterator();
    }

    @Override // j$.util.stream.C0
    public final void j(Object[] objArr, int i) {
        for (Object obj : this.f11871a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // j$.util.stream.C0
    public final Object[] p(IntFunction intFunction) {
        java.util.Collection collection = this.f11871a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.C0
    public final long count() {
        return this.f11871a.size();
    }

    public final String toString() {
        java.util.Collection collection = this.f11871a;
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(collection.size()), collection);
    }
}
