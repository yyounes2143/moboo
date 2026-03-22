package j$.util.stream;

import j$.util.Objects;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public interface Collector<T, A, R> {
    BiConsumer accumulator();

    Set characteristics();

    BinaryOperator combiner();

    Function finisher();

    Supplier supplier();

    /* renamed from: j$.util.stream.Collector$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static <T, R> Collector<T, R, R> of(Supplier<R> supplier, BiConsumer<R, T> biConsumer, BinaryOperator<R> binaryOperator, Characteristics... characteristicsArr) {
            Set unmodifiableSet;
            Objects.requireNonNull(supplier);
            Objects.requireNonNull(biConsumer);
            Objects.requireNonNull(binaryOperator);
            Objects.requireNonNull(characteristicsArr);
            if (characteristicsArr.length == 0) {
                unmodifiableSet = Collectors.f11862a;
            } else {
                unmodifiableSet = Collections.unmodifiableSet(EnumSet.of(Characteristics.IDENTITY_FINISH, characteristicsArr));
            }
            return new C2227j(supplier, biConsumer, binaryOperator, unmodifiableSet);
        }

        public static <T, A, R> Collector<T, A, R> of(Supplier<A> supplier, BiConsumer<A, T> biConsumer, BinaryOperator<A> binaryOperator, Function<A, R> function, Characteristics... characteristicsArr) {
            Objects.requireNonNull(supplier);
            Objects.requireNonNull(biConsumer);
            Objects.requireNonNull(binaryOperator);
            Objects.requireNonNull(function);
            Objects.requireNonNull(characteristicsArr);
            Set set = Collectors.b;
            if (characteristicsArr.length > 0) {
                EnumSet noneOf = EnumSet.noneOf(Characteristics.class);
                Collections.addAll(noneOf, characteristicsArr);
                set = Collections.unmodifiableSet(noneOf);
            }
            return new C2227j(supplier, biConsumer, binaryOperator, function, set);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static final class Characteristics {
        public static final Characteristics CONCURRENT;
        public static final Characteristics IDENTITY_FINISH;
        public static final Characteristics UNORDERED;

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ Characteristics[] f11861a;

        public static Characteristics valueOf(String str) {
            return (Characteristics) Enum.valueOf(Characteristics.class, str);
        }

        public static Characteristics[] values() {
            return (Characteristics[]) f11861a.clone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        static {
            ?? r3 = new Enum("CONCURRENT", 0);
            CONCURRENT = r3;
            ?? r4 = new Enum("UNORDERED", 1);
            UNORDERED = r4;
            ?? r5 = new Enum("IDENTITY_FINISH", 2);
            IDENTITY_FINISH = r5;
            f11861a = new Characteristics[]{r3, r4, r5};
        }
    }
}
