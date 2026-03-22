package j$.util.stream;

import j$.time.format.C2162a;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;
/* renamed from: j$.util.stream.m  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2242m extends Z1 {
    public static G0 U(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        C2162a c2162a = new C2162a(17);
        C2162a c2162a2 = new C2162a(18);
        C2162a c2162a3 = new C2162a(19);
        Objects.requireNonNull(c2162a);
        Objects.requireNonNull(c2162a2);
        Objects.requireNonNull(c2162a3);
        return new G0((Collection) new C2298x1(Y2.REFERENCE, c2162a3, c2162a2, c2162a, 3).c(abstractC2182a, spliterator));
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        if (X2.DISTINCT.l(abstractC2182a.f)) {
            return abstractC2182a.B(spliterator, false, intFunction);
        }
        if (X2.ORDERED.l(abstractC2182a.f)) {
            return U(abstractC2182a, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.util.concurrent.t tVar = new j$.util.concurrent.t(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(tVar);
        new M(tVar, false).e(abstractC2182a, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new G0(keySet);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        if (X2.DISTINCT.l(abstractC2182a.f)) {
            return abstractC2182a.T(spliterator);
        }
        if (X2.ORDERED.l(abstractC2182a.f)) {
            return U(abstractC2182a, spliterator).spliterator();
        }
        return new C2241l3(abstractC2182a.T(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        Objects.requireNonNull(interfaceC2225i2);
        if (X2.DISTINCT.l(i)) {
            return interfaceC2225i2;
        }
        if (X2.SORTED.l(i)) {
            return new C2232k(interfaceC2225i2);
        }
        return new C2237l(interfaceC2225i2);
    }
}
