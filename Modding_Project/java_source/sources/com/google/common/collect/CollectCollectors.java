package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.CollectCollectors;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableRangeMap;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.ImmutableSortedMap;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.MultimapBuilder;
import j$.util.Map;
import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.stream.Collector;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import javax.annotation.CheckForNull;
/* compiled from: Proguard */
@GwtCompatible
@ElementTypesAreNonnullByDefault
@IgnoreJRERequirement
/* loaded from: classes5.dex */
final class CollectCollectors {
    private static final Collector<Object, ?, ImmutableList<Object>> TO_IMMUTABLE_LIST = Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableList.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwww
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableList.Builder) obj).add((ImmutableList.Builder) obj2);
        }

        public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
            return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwww
        public /* synthetic */ BiFunction andThen(Function function) {
            return BiFunction$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableList.Builder) obj).combine((ImmutableList.Builder) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwww
        @Override // java.util.function.Function
        /* renamed from: andThen */
        public /* synthetic */ Function mo425andThen(Function function) {
            return Function$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableList.Builder) obj).build();
        }

        public /* synthetic */ Function compose(Function function) {
            return Function$CC.$default$compose(this, function);
        }
    }, new Collector.Characteristics[0]);
    private static final Collector<Object, ?, ImmutableSet<Object>> TO_IMMUTABLE_SET = Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwww
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwww
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableSet.Builder) obj).add((ImmutableSet.Builder) obj2);
        }

        public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
            return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwww
        public /* synthetic */ BiFunction andThen(Function function) {
            return BiFunction$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableSet.Builder) obj).combine((ImmutableSet.Builder) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.Wwwwwwwwwwwwwww
        @Override // java.util.function.Function
        /* renamed from: andThen */
        public /* synthetic */ Function mo425andThen(Function function) {
            return Function$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableSet.Builder) obj).build();
        }

        public /* synthetic */ Function compose(Function function) {
            return Function$CC.$default$compose(this, function);
        }
    }, new Collector.Characteristics[0]);
    @GwtIncompatible
    private static final Collector<Range<Comparable<?>>, ?, ImmutableRangeSet<Comparable<?>>> TO_IMMUTABLE_RANGE_SET = Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwwwwwwwwwwww
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableRangeSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwwww
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableRangeSet.Builder) obj).add((Range) obj2);
        }

        public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
            return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwww
        public /* synthetic */ BiFunction andThen(Function function) {
            return BiFunction$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableRangeSet.Builder) obj).combine((ImmutableRangeSet.Builder) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwww
        @Override // java.util.function.Function
        /* renamed from: andThen */
        public /* synthetic */ Function mo425andThen(Function function) {
            return Function$CC.$default$andThen(this, function);
        }

        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableRangeSet.Builder) obj).build();
        }

        public /* synthetic */ Function compose(Function function) {
            return Function$CC.$default$compose(this, function);
        }
    }, new Collector.Characteristics[0]);

    /* compiled from: Proguard */
    @J2ktIncompatible
    @IgnoreJRERequirement
    /* loaded from: classes5.dex */
    public static class EnumMapAccumulator<K extends Enum<K>, V> {
        @CheckForNull
        private EnumMap<K, V> map = null;
        private final BinaryOperator<V> mergeFunction;

        public EnumMapAccumulator(BinaryOperator<V> binaryOperator) {
            this.mergeFunction = binaryOperator;
        }

        public EnumMapAccumulator<K, V> combine(EnumMapAccumulator<K, V> enumMapAccumulator) {
            if (this.map == null) {
                return enumMapAccumulator;
            }
            EnumMap<K, V> enumMap = enumMapAccumulator.map;
            if (enumMap == null) {
                return this;
            }
            Map.EL.forEach(enumMap, new BiConsumer() { // from class: com.google.common.collect.Illlllllll
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CollectCollectors.EnumMapAccumulator.this.put((Enum) obj, obj2);
                }

                public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                    return BiConsumer$CC.$default$andThen(this, biConsumer);
                }
            });
            return this;
        }

        public void put(K k, V v) {
            EnumMap<K, V> enumMap = this.map;
            if (enumMap == null) {
                this.map = new EnumMap<>(Collections.singletonMap(k, v));
            } else {
                Map.EL.merge(enumMap, k, v, this.mergeFunction);
            }
        }

        public ImmutableMap<K, V> toImmutableMap() {
            EnumMap<K, V> enumMap = this.map;
            if (enumMap == null) {
                return ImmutableMap.of();
            }
            return ImmutableEnumMap.asImmutable(enumMap);
        }
    }

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes5.dex */
    public static final class EnumSetAccumulator<E extends Enum<E>> {
        static final Collector<Enum<?>, ?, ImmutableSet<? extends Enum<?>>> TO_IMMUTABLE_ENUM_SET = CollectCollectors.access$000();
        @CheckForNull
        private EnumSet<E> set;

        private EnumSetAccumulator() {
        }

        public void add(E e) {
            EnumSet<E> enumSet = this.set;
            if (enumSet == null) {
                this.set = EnumSet.of((Enum) e);
            } else {
                enumSet.add(e);
            }
        }

        public EnumSetAccumulator<E> combine(EnumSetAccumulator<E> enumSetAccumulator) {
            EnumSet<E> enumSet = this.set;
            if (enumSet == null) {
                return enumSetAccumulator;
            }
            EnumSet<E> enumSet2 = enumSetAccumulator.set;
            if (enumSet2 == null) {
                return this;
            }
            enumSet.addAll(enumSet2);
            return this;
        }

        public ImmutableSet<E> toImmutableSet() {
            EnumSet<E> enumSet = this.set;
            if (enumSet == null) {
                return ImmutableSet.of();
            }
            ImmutableSet<E> asImmutable = ImmutableEnumSet.asImmutable(enumSet);
            this.set = null;
            return asImmutable;
        }
    }

    private CollectCollectors() {
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.common.collect.Multimap Wwwwwww(com.google.common.collect.Multimap r0, com.google.common.collect.Multimap r1) {
        /*
            r0.putAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CollectCollectors.Wwwwwww(com.google.common.collect.Multimap, com.google.common.collect.Multimap):com.google.common.collect.Multimap");
    }

    public static /* synthetic */ EnumMapAccumulator Wwwwwwww(BinaryOperator binaryOperator) {
        return new EnumMapAccumulator(binaryOperator);
    }

    public static /* synthetic */ Object Wwwwwwwwww(Object obj, Object obj2) {
        throw new IllegalArgumentException("Multiple values for key: " + obj + ", " + obj2);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwww(Function function, Function function2, Multimap multimap, Object obj) {
        final Collection collection = multimap.get(function.apply(obj));
        Objects.requireNonNull(collection);
        ((Stream) function2.apply(obj)).forEachOrdered(new Consumer() { // from class: com.google.common.collect.Illllllllllllllllllll
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                collection.add(obj2);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }

    public static /* synthetic */ EnumSetAccumulator Wwwwwwwwwwwwwwwwww() {
        return new EnumSetAccumulator();
    }

    public static /* synthetic */ TreeMap Wwwwwwwwwwwwwwwwwww(Comparator comparator) {
        return new TreeMap(comparator);
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.common.collect.Multiset Wwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset r0, com.google.common.collect.Multiset r1) {
        /*
            r0.addAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset, com.google.common.collect.Multiset):com.google.common.collect.Multiset");
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.common.collect.Multiset Wwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset r0, com.google.common.collect.Multiset r1) {
        /*
            r0.addAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset, com.google.common.collect.Multiset):com.google.common.collect.Multiset");
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.common.collect.Multimap Wwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multimap r0, com.google.common.collect.Multimap r1) {
        /*
            r0.putAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multimap, com.google.common.collect.Multimap):com.google.common.collect.Multimap");
    }

    public static /* synthetic */ ImmutableSortedSet.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Comparator comparator) {
        return new ImmutableSortedSet.Builder(comparator);
    }

    public static /* synthetic */ EnumMapAccumulator Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new EnumMapAccumulator(new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return CollectCollectors.Wwwwwwwwww(obj, obj2);
            }
        });
    }

    public static /* synthetic */ ImmutableSortedMap.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Comparator comparator) {
        return new ImmutableSortedMap.Builder(comparator);
    }

    public static /* synthetic */ Collector access$000() {
        return toImmutableEnumSetGeneric();
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> flatteningToImmutableListMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.Wwwwwwwww
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function4) {
                return Function$CC.$default$andThen(this, function4);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object checkNotNull;
                checkNotNull = Preconditions.checkNotNull(Function.this.apply(obj));
                return checkNotNull;
            }

            public /* synthetic */ Function compose(Function function4) {
                return Function$CC.$default$compose(this, function4);
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.Wwwwwwww
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function5) {
                return Function$CC.$default$andThen(this, function5);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream peek;
                peek = ((Stream) Function.this.apply(obj)).peek(new Kkkkkkkkkkkkkkkkkk());
                return peek;
            }

            public /* synthetic */ Function compose(Function function5) {
                return Function$CC.$default$compose(this, function5);
            }
        };
        final MultimapBuilder.ListMultimapBuilder<Object, Object> arrayListValues = MultimapBuilder.linkedHashKeys().arrayListValues();
        Objects.requireNonNull(arrayListValues);
        return Collectors.collectingAndThen(flatteningToMultimap(function3, function4, new Supplier() { // from class: com.google.common.collect.Wwwwwww
            @Override // java.util.function.Supplier
            public final Object get() {
                return MultimapBuilder.ListMultimapBuilder.this.build();
            }
        }), new Function() { // from class: com.google.common.collect.Wwwwww
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function5) {
                return Function$CC.$default$andThen(this, function5);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableListMultimap.copyOf((Multimap) ((ListMultimap) obj));
            }

            public /* synthetic */ Function compose(Function function5) {
                return Function$CC.$default$compose(this, function5);
            }
        });
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> flatteningToImmutableSetMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function4) {
                return Function$CC.$default$andThen(this, function4);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object checkNotNull;
                checkNotNull = Preconditions.checkNotNull(Function.this.apply(obj));
                return checkNotNull;
            }

            public /* synthetic */ Function compose(Function function4) {
                return Function$CC.$default$compose(this, function4);
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function5) {
                return Function$CC.$default$andThen(this, function5);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream peek;
                peek = ((Stream) Function.this.apply(obj)).peek(new Kkkkkkkkkkkkkkkkkk());
                return peek;
            }

            public /* synthetic */ Function compose(Function function5) {
                return Function$CC.$default$compose(this, function5);
            }
        };
        final MultimapBuilder.SetMultimapBuilder<Object, Object> linkedHashSetValues = MultimapBuilder.linkedHashKeys().linkedHashSetValues();
        Objects.requireNonNull(linkedHashSetValues);
        return Collectors.collectingAndThen(flatteningToMultimap(function3, function4, new Supplier() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return MultimapBuilder.SetMultimapBuilder.this.build();
            }
        }), new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function5) {
                return Function$CC.$default$andThen(this, function5);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSetMultimap.copyOf((Multimap) ((SetMultimap) obj));
            }

            public /* synthetic */ Function compose(Function function5) {
                return Function$CC.$default$compose(this, function5);
            }
        });
    }

    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> flatteningToMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(supplier);
        return Collector.CC.of(supplier, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwww
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                CollectCollectors.Wwwwwwwwwwwwwww(Function.this, function2, (Multimap) obj, obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.common.collect.CollectCollectors.Wwwwwww(com.google.common.collect.Multimap, com.google.common.collect.Multimap):com.google.common.collect.Multimap
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.NullPointerException
                */
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object r1, java.lang.Object r2) {
                /*
                    r0 = this;
                    com.google.common.collect.Multimap r1 = (com.google.common.collect.Multimap) r1
                    com.google.common.collect.Multimap r2 = (com.google.common.collect.Multimap) r2
                    com.google.common.collect.Multimap r1 = com.google.common.collect.CollectCollectors.Wwwwwww(r1, r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Wwwwwwwwww.apply(java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> toImmutableBiMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Illllllllll
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableBiMap.Builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableBiMap.Builder) obj).put((ImmutableBiMap.Builder) Function.this.apply(obj2), (ImmutableBiMap.Builder) function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableBiMap.Builder) obj).combine((ImmutableMap.Builder) ((ImmutableBiMap.Builder) obj2));
            }
        }, new Function() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableBiMap.Builder) obj).buildOrThrow();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, new Collector.Characteristics[0]);
    }

    @J2ktIncompatible
    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableEnumMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((CollectCollectors.EnumMapAccumulator) obj).put((Enum) Preconditions.checkNotNull((Enum) Function.this.apply(obj2), "Null key for input %s", obj2), Preconditions.checkNotNull(function2.apply(obj2), "Null value for input %s", obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new Kkkkkkkkkkkkkkk(), new Kkkkkkkkkkkkkk(), Collector.Characteristics.UNORDERED);
    }

    public static <E extends Enum<E>> Collector<E, ?, ImmutableSet<E>> toImmutableEnumSet() {
        return (Collector<E, ?, ImmutableSet<E>>) EnumSetAccumulator.TO_IMMUTABLE_ENUM_SET;
    }

    private static <E extends Enum<E>> Collector<E, EnumSetAccumulator<E>, ImmutableSet<E>> toImmutableEnumSetGeneric() {
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwwwwwwwwwwwww();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((CollectCollectors.EnumSetAccumulator) obj).add((Enum) obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((CollectCollectors.EnumSetAccumulator) obj).combine((CollectCollectors.EnumSetAccumulator) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CollectCollectors.EnumSetAccumulator) obj).toImmutableSet();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static <E> Collector<E, ?, ImmutableList<E>> toImmutableList() {
        return (Collector<E, ?, ImmutableList<E>>) TO_IMMUTABLE_LIST;
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> toImmutableListMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function, "keyFunction");
        Preconditions.checkNotNull(function2, "valueFunction");
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Kkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableListMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Kkk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableListMultimap.Builder) obj).put((ImmutableListMultimap.Builder) Function.this.apply(obj2), (ImmutableListMultimap.Builder) function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illllllllllllllllllllllllllll
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableListMultimap.Builder) obj).combine((ImmutableMultimap.Builder) ((ImmutableListMultimap.Builder) obj2));
            }
        }, new Function() { // from class: com.google.common.collect.Illlllllllllllllllllllllllll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableListMultimap.Builder) obj).build();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Kkkkkkkkkkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableMap.Builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Kkkkkkkkkkk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableMap.Builder) obj).put(Function.this.apply(obj2), function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Kkkkkkkkkk
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableMap.Builder) obj).combine((ImmutableMap.Builder) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.Kkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableMap.Builder) obj).buildOrThrow();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(final Function<? super T, ? extends E> function, final ToIntFunction<? super T> toIntFunction) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(toIntFunction);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwww
            @Override // java.util.function.Supplier
            public final Object get() {
                return LinkedHashMultiset.create();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Wwww
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Multiset) obj).add(Preconditions.checkNotNull(Function.this.apply(obj2)), toIntFunction.applyAsInt(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Www
            public /* synthetic */ BiFunction andThen(Function function2) {
                return BiFunction$CC.$default$andThen(this, function2);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset, com.google.common.collect.Multiset):com.google.common.collect.Multiset
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.NullPointerException
                */
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object r1, java.lang.Object r2) {
                /*
                    r0 = this;
                    com.google.common.collect.Multiset r1 = (com.google.common.collect.Multiset) r1
                    com.google.common.collect.Multiset r2 = (com.google.common.collect.Multiset) r2
                    com.google.common.collect.Multiset r1 = com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwww(r1, r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Www.apply(java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }, new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function2) {
                return Function$CC.$default$andThen(this, function2);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableMultiset copyFromEntries;
                copyFromEntries = ImmutableMultiset.copyFromEntries(((Multiset) obj).entrySet());
                return copyFromEntries;
            }

            public /* synthetic */ Function compose(Function function2) {
                return Function$CC.$default$compose(this, function2);
            }
        }, new Collector.Characteristics[0]);
    }

    @GwtIncompatible
    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> toImmutableRangeMap(final Function<? super T, Range<K>> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Wwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableRangeMap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Wwwwwwwwwww
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableRangeMap.Builder) obj).put((Range) Function.this.apply(obj2), function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkkkkkk
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableRangeMap.Builder) obj).combine((ImmutableRangeMap.Builder) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableRangeMap.Builder) obj).build();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, new Collector.Characteristics[0]);
    }

    @GwtIncompatible
    public static <E extends Comparable<? super E>> Collector<Range<E>, ?, ImmutableRangeSet<E>> toImmutableRangeSet() {
        return (Collector<Range<E>, ?, ImmutableRangeSet<E>>) TO_IMMUTABLE_RANGE_SET;
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return (Collector<E, ?, ImmutableSet<E>>) TO_IMMUTABLE_SET;
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> toImmutableSetMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(function, "keyFunction");
        Preconditions.checkNotNull(function2, "valueFunction");
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Illllllllllllllllllllllllll
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableSetMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Illlllllllllllllllllllllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSetMultimap.Builder) obj).put((ImmutableSetMultimap.Builder) Function.this.apply(obj2), (ImmutableSetMultimap.Builder) function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illllllllllllllllllllllll
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSetMultimap.Builder) obj).combine((ImmutableMultimap.Builder) ((ImmutableSetMultimap.Builder) obj2));
            }
        }, new Function() { // from class: com.google.common.collect.Illlllllllllllllllllllll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSetMultimap.Builder) obj).build();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> toImmutableSortedMap(final Comparator<? super K> comparator, final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Kk
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(comparator);
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Illllllllllllllllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedMap.Builder) obj).put((ImmutableSortedMap.Builder) Function.this.apply(obj2), (ImmutableSortedMap.Builder) function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illllllllllll
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedMap.Builder) obj).combine((ImmutableSortedMap.Builder) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.Illlllllllll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedMap.Builder) obj).buildOrThrow();
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static <E> Collector<E, ?, ImmutableSortedSet<E>> toImmutableSortedSet(final Comparator<? super E> comparator) {
        Preconditions.checkNotNull(comparator);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Kkkkkkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(comparator);
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Kkkkkkk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedSet.Builder) obj).add((ImmutableSortedSet.Builder) obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Kkkkkk
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedSet.Builder) obj).combine((ImmutableSet.Builder) ((ImmutableSortedSet.Builder) obj2));
            }
        }, new Function() { // from class: com.google.common.collect.Kkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedSet.Builder) obj).build();
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, K, V, M extends Multimap<K, V>> Collector<T, ?, M> toMultimap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(supplier);
        return Collector.CC.of(supplier, new BiConsumer() { // from class: com.google.common.collect.Illllllllllllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Multimap) obj).put(Function.this.apply(obj2), function2.apply(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illlllllllllll
            public /* synthetic */ BiFunction andThen(Function function3) {
                return BiFunction$CC.$default$andThen(this, function3);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multimap, com.google.common.collect.Multimap):com.google.common.collect.Multimap
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.NullPointerException
                */
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object r1, java.lang.Object r2) {
                /*
                    r0 = this;
                    com.google.common.collect.Multimap r1 = (com.google.common.collect.Multimap) r1
                    com.google.common.collect.Multimap r2 = (com.google.common.collect.Multimap) r2
                    com.google.common.collect.Multimap r1 = com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Illlllllllllll.apply(java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, E, M extends Multiset<E>> Collector<T, ?, M> toMultiset(final Function<? super T, E> function, final ToIntFunction<? super T> toIntFunction, Supplier<M> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(toIntFunction);
        Preconditions.checkNotNull(supplier);
        return Collector.CC.of(supplier, new BiConsumer() { // from class: com.google.common.collect.Illlllllllllllllllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((Multiset) obj).add(Function.this.apply(obj2), toIntFunction.applyAsInt(obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.Illlllllllllllllll
            public /* synthetic */ BiFunction andThen(Function function2) {
                return BiFunction$CC.$default$andThen(this, function2);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwww(com.google.common.collect.Multiset, com.google.common.collect.Multiset):com.google.common.collect.Multiset
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.NullPointerException
                */
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object r1, java.lang.Object r2) {
                /*
                    r0 = this;
                    com.google.common.collect.Multiset r1 = (com.google.common.collect.Multiset) r1
                    com.google.common.collect.Multiset r2 = (com.google.common.collect.Multiset) r2
                    com.google.common.collect.Multiset r1 = com.google.common.collect.CollectCollectors.Wwwwwwwwwwwwwwwwwwww(r1, r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Illlllllllllllllll.apply(java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }, new Collector.Characteristics[0]);
    }

    @J2ktIncompatible
    public static <T, K extends Enum<K>, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableEnumMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2, final BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collector.CC.of(new Supplier() { // from class: com.google.common.collect.Illllllllllllllll
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwww(BinaryOperator.this);
            }
        }, new BiConsumer() { // from class: com.google.common.collect.Illlllllllllllll
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((CollectCollectors.EnumMapAccumulator) obj).put((Enum) Preconditions.checkNotNull((Enum) Function.this.apply(obj2), "Null key for input %s", obj2), Preconditions.checkNotNull(function2.apply(obj2), "Null value for input %s", obj2));
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new Kkkkkkkkkkkkkkk(), new Kkkkkkkkkkkkkk(), new Collector.Characteristics[0]);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.Illllllllllllllllllllll
            @Override // java.util.function.Supplier
            public final Object get() {
                return new LinkedHashMap();
            }
        }), new Function() { // from class: com.google.common.collect.Illlllllllllllllllllll
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableMap.copyOf((java.util.Map) ((LinkedHashMap) obj));
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        });
    }

    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> toImmutableSortedMap(final Comparator<? super K> comparator, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function2);
        Preconditions.checkNotNull(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return CollectCollectors.Wwwwwwwwwwwwwwwwwww(comparator);
            }
        }), new Function() { // from class: com.google.common.collect.Kkkkkkkkkkkkkkkkkkk
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo425andThen(Function function3) {
                return Function$CC.$default$andThen(this, function3);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            }

            public /* synthetic */ Function compose(Function function3) {
                return Function$CC.$default$compose(this, function3);
            }
        });
    }
}
