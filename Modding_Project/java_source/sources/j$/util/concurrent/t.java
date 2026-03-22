package j$.util.concurrent;

import j$.util.Spliterator;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.stream.AbstractC2182a;
import j$.util.stream.AbstractC2253o0;
import j$.util.stream.C2233k0;
import j$.util.stream.C2241l3;
import j$.util.stream.C2263q0;
import j$.util.stream.EnumC2258p0;
import j$.util.stream.I3;
import j$.util.stream.X2;
import j$.util.stream.Y2;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public final /* synthetic */ class t implements BiConsumer, BiFunction, Consumer, Supplier, I3 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11836a;
    public final Object b;
    public final Object c;

    public /* synthetic */ t(int i, Object obj, Object obj2) {
        this.f11836a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ t(BiFunction biFunction, Function function) {
        this.f11836a = 2;
        this.c = biFunction;
        this.b = function;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f11836a) {
            case 0:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            default:
                return BiConsumer$CC.$default$andThen(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11836a) {
            case 3:
                return Consumer$CC.$default$andThen(this, consumer);
            case 4:
                return Consumer$CC.$default$andThen(this, consumer);
            case 5:
            case 6:
            default:
                return Consumer$CC.$default$andThen(this, consumer);
            case 7:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.b).apply(((BiFunction) this.c).apply(obj, obj2));
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f11836a) {
            case 0:
                break;
            default:
                ((BiConsumer) this.b).accept(obj, obj2);
                ((BiConsumer) this.c).accept(obj, obj2);
                return;
        }
        do {
            Object apply = ((BiFunction) this.c).apply(obj, obj2);
            java.util.concurrent.ConcurrentMap concurrentMap = (java.util.concurrent.ConcurrentMap) this.b;
            if (concurrentMap.replace(obj, obj2, apply)) {
                return;
            }
            obj2 = concurrentMap.get(obj);
        } while (obj2 != null);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new C2233k0((EnumC2258p0) this.b, (Predicate) this.c);
    }

    public t(Y2 y2, EnumC2258p0 enumC2258p0, Supplier supplier) {
        this.f11836a = 6;
        this.b = enumC2258p0;
        this.c = supplier;
    }

    @Override // j$.util.stream.I3
    public int d() {
        return X2.u | X2.r;
    }

    @Override // j$.util.stream.I3
    public Object b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        AbstractC2253o0 abstractC2253o0 = (AbstractC2253o0) ((Supplier) this.c).get();
        abstractC2182a.R(spliterator, abstractC2253o0);
        return Boolean.valueOf(abstractC2253o0.b);
    }

    @Override // j$.util.stream.I3
    public Object c(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        return (Boolean) new C2263q0(this, abstractC2182a, spliterator).invoke();
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f11836a) {
            case 3:
                ((Consumer) this.b).accept(obj);
                ((Consumer) this.c).accept(obj);
                return;
            case 4:
                if (obj == null) {
                    ((AtomicBoolean) this.b).set(true);
                    return;
                } else {
                    ((ConcurrentHashMap) this.c).putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
            case 6:
            default:
                C2241l3 c2241l3 = (C2241l3) this.b;
                c2241l3.getClass();
                if (c2241l3.b.putIfAbsent(obj != null ? obj : C2241l3.d, Boolean.TRUE) == null) {
                    ((Consumer) this.c).accept(obj);
                    return;
                }
                return;
            case 7:
                ((BiConsumer) this.b).accept(this.c, obj);
                return;
        }
    }
}
