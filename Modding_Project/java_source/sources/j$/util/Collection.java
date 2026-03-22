package j$.util;

import j$.util.List;
import j$.util.stream.AbstractC2182a;
import j$.util.stream.Stream;
import j$.util.stream.X2;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public interface Collection<E> extends j$.lang.a {
    @Override // j$.util.Collection, j$.lang.a
    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);

    /* renamed from: j$.util.Collection$-EL */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class EL {
        public static /* synthetic */ Stream stream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).stream() : CC.$default$stream(collection);
        }

        public static Spliterator a(java.util.Collection collection) {
            Spliterator spliterator;
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                return Spliterators.spliterator((LinkedHashSet) collection, 17);
            }
            if (collection instanceof java.util.SortedSet) {
                java.util.SortedSet sortedSet = (java.util.SortedSet) collection;
                return new C2315x(sortedSet, sortedSet);
            } else if (!(collection instanceof java.util.Set)) {
                return collection instanceof java.util.List ? List.CC.$default$spliterator((java.util.List) collection) : Spliterators.spliterator(collection, 0);
            } else {
                spliterator = Spliterators.spliterator((java.util.Set) collection, 1);
                return spliterator;
            }
        }
    }

    /* renamed from: j$.util.Collection$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            boolean removeIf;
            if (DesugarCollections.f11806a.isInstance(collection)) {
                Field field = DesugarCollections.b;
                if (field == null) {
                    try {
                        java.util.Collection collection2 = (java.util.Collection) DesugarCollections.c.get(collection);
                        return collection2 instanceof Collection ? ((Collection) collection2).removeIf(predicate) : $default$removeIf(collection2, predicate);
                    } catch (IllegalAccessException e) {
                        throw new Error("Runtime illegal access in synchronized collection removeIf fall-back.", e);
                    }
                }
                try {
                    synchronized (field.get(collection)) {
                        java.util.Collection collection3 = (java.util.Collection) DesugarCollections.c.get(collection);
                        removeIf = collection3 instanceof Collection ? ((Collection) collection3).removeIf(predicate) : $default$removeIf(collection3, predicate);
                    }
                    return removeIf;
                } catch (IllegalAccessException e2) {
                    throw new Error("Runtime illegal access in synchronized collection removeIf.", e2);
                }
            }
            Objects.requireNonNull(predicate);
            Iterator<E> it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (predicate.test(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
        public static Stream $default$stream(java.util.Collection collection) {
            Spliterator a2 = EL.a(collection);
            Objects.requireNonNull(a2);
            return new AbstractC2182a(a2, X2.k(a2), false);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
        public static Stream $default$parallelStream(java.util.Collection collection) {
            Spliterator a2 = EL.a(collection);
            Objects.requireNonNull(a2);
            return new AbstractC2182a(a2, X2.k(a2), true);
        }
    }
}
