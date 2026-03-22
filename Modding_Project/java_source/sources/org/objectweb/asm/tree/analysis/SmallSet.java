package org.objectweb.asm.tree.analysis;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class SmallSet<T> extends AbstractSet<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f14175Wwwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f14174Wwwwwwwwwwwwwwwwwwwwwwww = null;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class IteratorImpl<T> implements Iterator<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public T f14176Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public T f14177Wwwwwwwwwwwwwwwwwwwwwwwww;

        public IteratorImpl(T t, T t2) {
            this.f14177Wwwwwwwwwwwwwwwwwwwwwwwww = t;
            this.f14176Wwwwwwwwwwwwwwwwwwwwwwww = t2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14177Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            T t = this.f14177Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (t != null) {
                this.f14177Wwwwwwwwwwwwwwwwwwwwwwwww = this.f14176Wwwwwwwwwwwwwwwwwwwwwwww;
                this.f14176Wwwwwwwwwwwwwwwwwwwwwwww = null;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        return new IteratorImpl(this.f14175Wwwwwwwwwwwwwwwwwwwwwwwww, this.f14174Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        if (this.f14175Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return 0;
        }
        if (this.f14174Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            return 1;
        }
        return 2;
    }
}
