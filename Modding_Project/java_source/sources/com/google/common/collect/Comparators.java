package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import j$.util.Comparator;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.stream.Collector;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
/* compiled from: Proguard */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
public final class Comparators {
    private Comparators() {
    }

    @IgnoreJRERequirement
    public static <T> Collector<T, ?, List<T>> greatest(int i, Comparator<? super T> comparator) {
        return least(i, Comparator.EL.reversed(comparator));
    }

    public static <T> boolean isInOrder(Iterable<? extends T> iterable, java.util.Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (comparator.compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    public static <T> boolean isInStrictOrder(Iterable<? extends T> iterable, java.util.Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (comparator.compare(next, next2) >= 0) {
                    return false;
                }
                next = next2;
            }
            return true;
        }
        return true;
    }

    @IgnoreJRERequirement
    public static <T> Collector<T, ?, List<T>> least(final int i, final java.util.Comparator<? super T> comparator) {
        CollectPreconditions.checkNonnegative(i, CampaignEx.JSON_KEY_AD_K);
        Preconditions.checkNotNull(comparator);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Illllllll
            @Override // java.util.function.Supplier
            public final Object get() {
                TopKSelector least;
                least = TopKSelector.least(i, comparator);
                return least;
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Illlllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((TopKSelector) obj).offer(obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illllll
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((TopKSelector) obj).combine((TopKSelector) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.Illlll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((TopKSelector) obj).topK();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static <T, S extends T> java.util.Comparator<Iterable<S>> lexicographical(java.util.Comparator<T> comparator) {
        return new LexicographicalOrdering((java.util.Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T extends Comparable<? super T>> T max(T t, T t2) {
        return t.compareTo(t2) >= 0 ? t : t2;
    }

    public static <T extends Comparable<? super T>> T min(T t, T t2) {
        return t.compareTo(t2) <= 0 ? t : t2;
    }

    @ParametricNullness
    public static <T> T max(@ParametricNullness T t, @ParametricNullness T t2, java.util.Comparator<T> comparator) {
        return comparator.compare(t, t2) >= 0 ? t : t2;
    }

    @ParametricNullness
    public static <T> T min(@ParametricNullness T t, @ParametricNullness T t2, java.util.Comparator<T> comparator) {
        return comparator.compare(t, t2) <= 0 ? t : t2;
    }
}
