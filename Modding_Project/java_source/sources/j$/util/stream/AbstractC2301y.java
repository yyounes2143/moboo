package j$.util.stream;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import j$.time.format.C2162a;
import j$.util.C2170g;
import j$.util.C2174k;
import j$.util.C2177n;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.y  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2301y extends AbstractC2182a implements DoubleStream {
    @Override // j$.util.stream.DoubleStream
    public final C2174k findAny() {
        return (C2174k) C(C.d);
    }

    @Override // j$.util.stream.DoubleStream
    public final C2174k findFirst() {
        return (C2174k) C(C.c);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream sorted() {
        return new B2(this, X2.q | X2.o, 0);
    }

    public static j$.util.A U(Spliterator spliterator) {
        if (spliterator instanceof j$.util.A) {
            return (j$.util.A) spliterator;
        }
        if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new J(doubleConsumer, false));
    }

    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new J(doubleConsumer, true));
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Y2 H() {
        return Y2.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 E(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2273s1.z(abstractC2182a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator Q(AbstractC2182a abstractC2182a, Supplier supplier, boolean z) {
        return new Z2(abstractC2182a, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean G(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        DoubleConsumer c2177n;
        boolean o;
        j$.util.A U = U(spliterator);
        if (interfaceC2225i2 instanceof DoubleConsumer) {
            c2177n = (DoubleConsumer) interfaceC2225i2;
        } else if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            Objects.requireNonNull(interfaceC2225i2);
            c2177n = new C2177n(interfaceC2225i2, 1);
        }
        do {
            o = interfaceC2225i2.o();
            if (o) {
                break;
            }
        } while (U.tryAdvance(c2177n));
        return o;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2282u0 J(long j, IntFunction intFunction) {
        return AbstractC2273s1.D(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Double> iterator2() {
        j$.util.A spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.N(spliterator);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final j$.util.A spliterator() {
        return U(super.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream boxed() {
        return new C2262q(this, 0, new C2162a(27), 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream e() {
        Objects.requireNonNull(null);
        return new r(this, X2.p | X2.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C2262q(this, X2.p | X2.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final IntStream q() {
        Objects.requireNonNull(null);
        return new C2271s(this, X2.p | X2.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final LongStream i() {
        Objects.requireNonNull(null);
        return new C2276t(this, X2.p | X2.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream d(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C2286v(this, X2.p | X2.n | X2.t, gVar, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream b() {
        Objects.requireNonNull(null);
        return new r(this, X2.t, 2);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C2286v(this, doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2279t2.e(this, 0L, j);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2279t2.e(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream a() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new B2(this, j4.f11916a, 1);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream c() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new AbstractC2296x(this, j4.b, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream distinct() {
        return ((AbstractC2185a2) boxed()).distinct().mapToDouble(new C2162a(28));
    }

    @Override // j$.util.stream.DoubleStream
    public final double sum() {
        double[] dArr = (double[]) collect(new C2252o(1), new C2252o(2), new C2162a(20));
        Set set = Collectors.f11862a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.DoubleStream
    public final C2174k min() {
        return reduce(new C2162a(21));
    }

    @Override // j$.util.stream.DoubleStream
    public final C2174k max() {
        return reduce(new C2252o(0));
    }

    @Override // j$.util.stream.DoubleStream
    public final C2174k average() {
        double[] dArr = (double[]) collect(new C2162a(22), new C2162a(23), new C2162a(24));
        if (dArr[2] > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            Set set = Collectors.f11862a;
            double d = dArr[0] + dArr[1];
            double d2 = dArr[dArr.length - 1];
            if (Double.isNaN(d) && Double.isInfinite(d2)) {
                d = d2;
            }
            return new C2174k(d / dArr[2]);
        }
        return C2174k.c;
    }

    @Override // j$.util.stream.DoubleStream
    public final C2170g summaryStatistics() {
        return (C2170g) collect(new C2162a(10), new C2162a(25), new C2162a(26));
    }

    @Override // j$.util.stream.DoubleStream
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2247n c2247n = new C2247n(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c2247n);
        return C(new C2298x1(Y2.DOUBLE_VALUE, c2247n, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean n() {
        return ((Boolean) C(AbstractC2273s1.M(EnumC2258p0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean h() {
        return ((Boolean) C(AbstractC2273s1.M(EnumC2258p0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean x() {
        return ((Boolean) C(AbstractC2273s1.M(EnumC2258p0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final double[] toArray() {
        return (double[]) AbstractC2273s1.G((InterfaceC2292w0) D(new C2162a(29))).e();
    }

    @Override // j$.util.stream.DoubleStream
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) C(new B1(Y2.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final C2174k reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (C2174k) C(new C2288v1(Y2.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final long count() {
        return ((Long) C(new C2308z1(1))).longValue();
    }
}
