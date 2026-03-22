package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.MoreCollectors;
import j$.util.Optional;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.stream.Collector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.annotation.CheckForNull;
import kotlin.text.Typography;
/* compiled from: Proguard */
@GwtCompatible
@ElementTypesAreNonnullByDefault
@IgnoreJRERequirement
/* loaded from: classes5.dex */
final class MoreCollectors {
    private static final Object NULL_PLACEHOLDER;
    private static final Collector<Object, ?, Object> ONLY_ELEMENT;
    private static final Collector<Object, ?, Optional<Object>> TO_OPTIONAL;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class ToOptionalState {
        static final int MAX_EXTRAS = 4;
        @CheckForNull
        Object element = null;
        List<Object> extras = Collections.EMPTY_LIST;

        public void add(Object obj) {
            Preconditions.checkNotNull(obj);
            if (this.element == null) {
                this.element = obj;
            } else if (this.extras.isEmpty()) {
                ArrayList arrayList = new ArrayList(4);
                this.extras = arrayList;
                arrayList.add(obj);
            } else if (this.extras.size() < 4) {
                this.extras.add(obj);
            } else {
                throw multiples(true);
            }
        }

        public ToOptionalState combine(ToOptionalState toOptionalState) {
            if (this.element == null) {
                return toOptionalState;
            }
            if (toOptionalState.element != null) {
                if (this.extras.isEmpty()) {
                    this.extras = new ArrayList();
                }
                this.extras.add(toOptionalState.element);
                this.extras.addAll(toOptionalState.extras);
                if (this.extras.size() > 4) {
                    List<Object> list = this.extras;
                    list.subList(4, list.size()).clear();
                    throw multiples(true);
                }
            }
            return this;
        }

        public Object getElement() {
            if (this.element != null) {
                if (this.extras.isEmpty()) {
                    return this.element;
                }
                throw multiples(false);
            }
            throw new NoSuchElementException();
        }

        @IgnoreJRERequirement
        public Optional<Object> getOptional() {
            if (this.extras.isEmpty()) {
                return Optional.ofNullable(this.element);
            }
            throw multiples(false);
        }

        public IllegalArgumentException multiples(boolean z) {
            StringBuilder sb = new StringBuilder();
            sb.append("expected one element but was: <");
            sb.append(this.element);
            for (Object obj : this.extras) {
                sb.append(", ");
                sb.append(obj);
            }
            if (z) {
                sb.append(", ...");
            }
            sb.append(Typography.greater);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    static {
        Supplier supplier = new Supplier() { // from class: com.google.common.collect.IIl
            @Override // java.util.function.Supplier
            public final Object get() {
                return new MoreCollectors.ToOptionalState();
            }
        };
        BiConsumer biConsumer = new BiConsumer() { // from class: com.google.common.collect.O0000000000
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((MoreCollectors.ToOptionalState) obj).add(obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer2) {
                return BiConsumer$CC.$default$andThen(this, biConsumer2);
            }
        };
        BinaryOperator binaryOperator = new BinaryOperator() { // from class: com.google.common.collect.O000000000
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((MoreCollectors.ToOptionalState) obj).combine((MoreCollectors.ToOptionalState) obj2);
            }
        };
        Function function = new Function() { // from class: com.google.common.collect.O00000000
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function2) {
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((MoreCollectors.ToOptionalState) obj).getOptional();
            }

            public /* synthetic */ Function compose(Function function2) {
                return Function$CC.$default$compose(this, function2);
            }
        };
        Collector.Characteristics characteristics = Collector.Characteristics.UNORDERED;
        TO_OPTIONAL = Collector.CC.of(supplier, biConsumer, binaryOperator, function, characteristics);
        NULL_PLACEHOLDER = new Object();
        ONLY_ELEMENT = Collector.CC.of(new Supplier() { // from class: com.google.common.collect.IIl
            @Override // java.util.function.Supplier
            public final Object get() {
                return new MoreCollectors.ToOptionalState();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.O0000000
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                MoreCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MoreCollectors.ToOptionalState) obj, obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer2) {
                return BiConsumer$CC.$default$andThen(this, biConsumer2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.O000000000
            public /* synthetic */ BiFunction andThen(Function function2) {
                return BiFunction$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((MoreCollectors.ToOptionalState) obj).combine((MoreCollectors.ToOptionalState) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.O000000
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function2) {
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return MoreCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MoreCollectors.ToOptionalState) obj);
            }

            public /* synthetic */ Function compose(Function function2) {
                return Function$CC.$default$compose(this, function2);
            }
        }, characteristics);
    }

    private MoreCollectors() {
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToOptionalState toOptionalState) {
        Object element = toOptionalState.getElement();
        if (element == NULL_PLACEHOLDER) {
            return null;
        }
        return element;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToOptionalState toOptionalState, Object obj) {
        if (obj == null) {
            obj = NULL_PLACEHOLDER;
        }
        toOptionalState.add(obj);
    }

    public static <T> Collector<T, ?, T> onlyElement() {
        return (Collector<T, ?, T>) ONLY_ELEMENT;
    }

    public static <T> Collector<T, ?, Optional<T>> toOptional() {
        return (Collector<T, ?, Optional<T>>) TO_OPTIONAL;
    }
}
