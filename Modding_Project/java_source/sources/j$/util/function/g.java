package j$.util.function;

import j$.util.C2168e;
import j$.util.Map;
import j$.util.Spliterator;
import j$.util.stream.A;
import j$.util.stream.AbstractC2182a;
import j$.util.stream.C2218h0;
import j$.util.stream.C2223i0;
import j$.util.stream.C2251n3;
import j$.util.stream.C2261p3;
import j$.util.stream.C2270r3;
import j$.util.stream.C2306z;
import j$.util.stream.Collectors;
import j$.util.stream.DoubleStream;
import j$.util.stream.G3;
import j$.util.stream.IntStream;
import j$.util.stream.InterfaceC2225i2;
import j$.util.stream.LongStream;
import j$.util.stream.Stream;
import j$.util.stream.U2;
import j$.util.stream.W2;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Predicate, Supplier, BinaryOperator, DoubleFunction, Function, LongFunction, Consumer, BooleanSupplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11848a;
    public Object b;

    public /* synthetic */ g(int i) {
        this.f11848a = i;
    }

    public /* synthetic */ g(Object obj, int i) {
        this.f11848a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f11848a) {
            case 7:
                ((InterfaceC2225i2) this.b).accept((InterfaceC2225i2) obj);
                return;
            default:
                ((ArrayList) this.b).add(obj);
                return;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11848a) {
            case 7:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo425andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.b).test(obj);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return U2.j((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof DoubleStream) {
            return A.j((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return C2306z.j((java.util.stream.DoubleStream) apply);
        }
        if (apply instanceof LongStream) {
            return C2223i0.j((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return C2218h0.j((java.util.stream.LongStream) apply);
        }
        C2168e.a("java.util.stream.*Stream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof DoubleStream) {
            return A.j((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return C2306z.j((java.util.stream.DoubleStream) apply);
        }
        C2168e.a("java.util.stream.DoubleStream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof LongStream) {
            return C2223i0.j((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return C2218h0.j((java.util.stream.LongStream) apply);
        }
        C2168e.a("java.util.stream.LongStream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f11848a) {
            case 10:
                C2251n3 c2251n3 = (C2251n3) this.b;
                return c2251n3.d.tryAdvance(c2251n3.e);
            case 11:
                C2261p3 c2261p3 = (C2261p3) this.b;
                return c2261p3.d.tryAdvance(c2261p3.e);
            case 12:
                C2270r3 c2270r3 = (C2270r3) this.b;
                return c2270r3.d.tryAdvance(c2270r3.e);
            default:
                G3 g3 = (G3) this.b;
                return g3.d.tryAdvance(g3.e);
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f11848a) {
            case 1:
                return ((AbstractC2182a) this.b).O(0);
            default:
                return (Spliterator) this.b;
        }
    }

    public void b(W2 w2) {
        ((EnumMap) this.b).put((EnumMap) w2, (W2) 1);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        Map map = (Map) obj;
        Set set = Collectors.f11862a;
        for (Map.Entry entry : ((Map) obj2).entrySet()) {
            Map.EL.merge(map, entry.getKey(), entry.getValue(), (BinaryOperator) this.b);
        }
        return map;
    }
}
