package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
/* renamed from: j$.util.stream.s1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2273s1 implements I3 {

    /* renamed from: a  reason: collision with root package name */
    public static final U0 f11929a = new Object();
    public static final S0 b = new Object();
    public static final T0 c = new Object();
    public static final R0 d = new Object();
    public static final int[] e = new int[0];
    public static final long[] f = new long[0];
    public static final double[] g = new double[0];

    public abstract N1 Q();

    @Override // j$.util.stream.I3
    public /* synthetic */ int d() {
        return 0;
    }

    public static j$.util.function.g J(Function function) {
        j$.util.function.g gVar = new j$.util.function.g(5);
        gVar.b = function;
        return gVar;
    }

    public static j$.util.concurrent.t P(EnumC2258p0 enumC2258p0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2258p0);
        return new j$.util.concurrent.t(Y2.REFERENCE, enumC2258p0, new j$.util.concurrent.t(5, enumC2258p0, predicate));
    }

    public static V0 E(Y2 y2) {
        int i = D0.f11863a[y2.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return d;
                    }
                    throw new IllegalStateException("Unknown shape " + y2);
                }
                return c;
            }
            return b;
        }
        return f11929a;
    }

    public static j$.util.concurrent.t N(EnumC2258p0 enumC2258p0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC2258p0);
        return new j$.util.concurrent.t(Y2.INT_VALUE, enumC2258p0, new C2228j0(enumC2258p0, 1));
    }

    public static C0 w(C0 c0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        Spliterator spliterator = c0.spliterator();
        long j3 = j2 - j;
        InterfaceC2282u0 x = x(j3, intFunction);
        x.m(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new Z(4)); i++) {
        }
        if (j2 == c0.count()) {
            spliterator.forEachRemaining(x);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(x); i2++) {
            }
        }
        x.l();
        return x.a();
    }

    public static E0 C(Y2 y2, C0 c0, C0 c02) {
        int i = D0.f11863a[y2.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException("Unknown shape " + y2);
                    }
                    return new E0((InterfaceC2292w0) c0, (InterfaceC2292w0) c02);
                }
                return new E0((A0) c0, (A0) c02);
            }
            return new E0((InterfaceC2302y0) c0, (InterfaceC2302y0) c02);
        }
        return new E0(c0, c02);
    }

    public static j$.util.concurrent.t O(EnumC2258p0 enumC2258p0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC2258p0);
        return new j$.util.concurrent.t(Y2.LONG_VALUE, enumC2258p0, new C2228j0(enumC2258p0, 0));
    }

    public static void k() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static j$.util.concurrent.t M(EnumC2258p0 enumC2258p0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC2258p0);
        return new j$.util.concurrent.t(Y2.DOUBLE_VALUE, enumC2258p0, new C2228j0(enumC2258p0, 2));
    }

    public static void l() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.F0, j$.util.stream.u0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.T2, j$.util.stream.u0] */
    public static InterfaceC2282u0 x(long j, IntFunction intFunction) {
        if (j >= 0 && j < 2147483639) {
            return new F0(j, intFunction);
        }
        return new T2();
    }

    public static void a() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void g(InterfaceC2215g2 interfaceC2215g2, Integer num) {
        if (K3.f11879a) {
            K3.a(interfaceC2215g2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2215g2.accept(num.intValue());
        }
    }

    public static void i(InterfaceC2220h2 interfaceC2220h2, Long l) {
        if (K3.f11879a) {
            K3.a(interfaceC2220h2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2220h2.accept(l.longValue());
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.X0, j$.util.stream.s0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.S2, j$.util.stream.s0] */
    public static InterfaceC2272s0 K(long j) {
        if (j < 0 || j >= 2147483639) {
            return new S2();
        }
        return new X0(j);
    }

    public static void e(InterfaceC2210f2 interfaceC2210f2, Double d2) {
        if (K3.f11879a) {
            K3.a(interfaceC2210f2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2210f2.accept(d2.doubleValue());
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.g1, j$.util.stream.t0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.S2, j$.util.stream.t0] */
    public static InterfaceC2277t0 L(long j) {
        if (j < 0 || j >= 2147483639) {
            return new S2();
        }
        return new C2214g1(j);
    }

    public static Object[] m(B0 b0, IntFunction intFunction) {
        if (K3.f11879a) {
            K3.a(b0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (b0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        } else {
            Object[] objArr = (Object[]) intFunction.apply((int) b0.count());
            b0.j(objArr, 0);
            return objArr;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.r0, j$.util.stream.O0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.r0, j$.util.stream.S2] */
    public static InterfaceC2267r0 D(long j) {
        if (j < 0 || j >= 2147483639) {
            return new S2();
        }
        return new O0(j);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [j$.util.stream.I, java.util.function.LongFunction, java.lang.Object] */
    public static C0 y(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long F = abstractC2182a.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            ?? obj = new Object();
            obj.f11874a = intFunction;
            C0 c0 = (C0) new H0(abstractC2182a, spliterator, obj, new Z(12), 3).invoke();
            return z ? F(c0, intFunction) : c0;
        } else if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        } else {
            Object[] objArr = (Object[]) intFunction.apply((int) F);
            new C2244m1(spliterator, abstractC2182a, objArr).invoke();
            return new F0(objArr);
        }
    }

    public static void r(InterfaceC2302y0 interfaceC2302y0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            interfaceC2302y0.f((IntConsumer) consumer);
        } else if (K3.f11879a) {
            K3.a(interfaceC2302y0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.OfInt) interfaceC2302y0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void o(InterfaceC2302y0 interfaceC2302y0, Integer[] numArr, int i) {
        if (K3.f11879a) {
            K3.a(interfaceC2302y0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2302y0.e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static InterfaceC2302y0 u(InterfaceC2302y0 interfaceC2302y0, long j, long j2) {
        if (j == 0 && j2 == interfaceC2302y0.count()) {
            return interfaceC2302y0;
        }
        long j3 = j2 - j;
        Spliterator.OfInt ofInt = (Spliterator.OfInt) interfaceC2302y0.spliterator();
        InterfaceC2272s0 K = K(j3);
        K.m(j3);
        for (int i = 0; i < j && ofInt.tryAdvance((IntConsumer) new C2297x0(0)); i++) {
        }
        if (j2 == interfaceC2302y0.count()) {
            ofInt.forEachRemaining((IntConsumer) K);
        } else {
            for (int i2 = 0; i2 < j3 && ofInt.tryAdvance((IntConsumer) K); i2++) {
            }
        }
        K.l();
        return K.a();
    }

    public static InterfaceC2302y0 A(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z) {
        long F = abstractC2182a.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2302y0 interfaceC2302y0 = (InterfaceC2302y0) new H0(abstractC2182a, spliterator, new Z(8), new Z(9), 1).invoke();
            return z ? H(interfaceC2302y0) : interfaceC2302y0;
        } else if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        } else {
            int[] iArr = new int[(int) F];
            new C2234k1(spliterator, abstractC2182a, iArr).invoke();
            return new X0(iArr);
        }
    }

    public static A0 B(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z) {
        long F = abstractC2182a.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            A0 a0 = (A0) new H0(abstractC2182a, spliterator, new Z(10), new Z(11), 2).invoke();
            return z ? I(a0) : a0;
        } else if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        } else {
            long[] jArr = new long[(int) F];
            new C2239l1(spliterator, abstractC2182a, jArr).invoke();
            return new C2214g1(jArr);
        }
    }

    public static void s(A0 a0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            a0.f((LongConsumer) consumer);
        } else if (K3.f11879a) {
            K3.a(a0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((j$.util.F) a0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void p(A0 a0, Long[] lArr, int i) {
        if (K3.f11879a) {
            K3.a(a0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) a0.e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static A0 v(A0 a0, long j, long j2) {
        if (j == 0 && j2 == a0.count()) {
            return a0;
        }
        long j3 = j2 - j;
        j$.util.F f2 = (j$.util.F) a0.spliterator();
        InterfaceC2277t0 L = L(j3);
        L.m(j3);
        for (int i = 0; i < j && f2.tryAdvance((LongConsumer) new C2307z0(0)); i++) {
        }
        if (j2 == a0.count()) {
            f2.forEachRemaining((LongConsumer) L);
        } else {
            for (int i2 = 0; i2 < j3 && f2.tryAdvance((LongConsumer) L); i2++) {
            }
        }
        L.l();
        return L.a();
    }

    public static InterfaceC2292w0 z(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z) {
        long F = abstractC2182a.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2292w0 interfaceC2292w0 = (InterfaceC2292w0) new H0(abstractC2182a, spliterator, new Z(6), new Z(7), 0).invoke();
            return z ? G(interfaceC2292w0) : interfaceC2292w0;
        } else if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        } else {
            double[] dArr = new double[(int) F];
            new C2229j1(spliterator, abstractC2182a, dArr).invoke();
            return new O0(dArr);
        }
    }

    public static C0 F(C0 c0, IntFunction intFunction) {
        if (c0.r() > 0) {
            long count = c0.count();
            if (count >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            Object[] objArr = (Object[]) intFunction.apply((int) count);
            new C2268r1(c0, objArr, 1).invoke();
            return new F0(objArr);
        }
        return c0;
    }

    public static void q(InterfaceC2292w0 interfaceC2292w0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            interfaceC2292w0.f((DoubleConsumer) consumer);
        } else if (K3.f11879a) {
            K3.a(interfaceC2292w0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((j$.util.A) interfaceC2292w0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static InterfaceC2302y0 H(InterfaceC2302y0 interfaceC2302y0) {
        if (interfaceC2302y0.r() > 0) {
            long count = interfaceC2302y0.count();
            if (count >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            int[] iArr = new int[(int) count];
            new C2268r1(interfaceC2302y0, iArr, 0).invoke();
            return new X0(iArr);
        }
        return interfaceC2302y0;
    }

    public static void n(InterfaceC2292w0 interfaceC2292w0, Double[] dArr, int i) {
        if (K3.f11879a) {
            K3.a(interfaceC2292w0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2292w0.e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static InterfaceC2292w0 t(InterfaceC2292w0 interfaceC2292w0, long j, long j2) {
        if (j == 0 && j2 == interfaceC2292w0.count()) {
            return interfaceC2292w0;
        }
        long j3 = j2 - j;
        j$.util.A a2 = (j$.util.A) interfaceC2292w0.spliterator();
        InterfaceC2267r0 D = D(j3);
        D.m(j3);
        for (int i = 0; i < j && a2.tryAdvance((DoubleConsumer) new C2287v0(0)); i++) {
        }
        if (j2 == interfaceC2292w0.count()) {
            a2.forEachRemaining((DoubleConsumer) D);
        } else {
            for (int i2 = 0; i2 < j3 && a2.tryAdvance((DoubleConsumer) D); i2++) {
            }
        }
        D.l();
        return D.a();
    }

    public static A0 I(A0 a0) {
        if (a0.r() > 0) {
            long count = a0.count();
            if (count >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            long[] jArr = new long[(int) count];
            new C2268r1(a0, jArr, 0).invoke();
            return new C2214g1(jArr);
        }
        return a0;
    }

    public static InterfaceC2292w0 G(InterfaceC2292w0 interfaceC2292w0) {
        if (interfaceC2292w0.r() > 0) {
            long count = interfaceC2292w0.count();
            if (count >= 2147483639) {
                throw new IllegalArgumentException("Stream size exceeds max array size");
            }
            double[] dArr = new double[(int) count];
            new C2268r1(interfaceC2292w0, dArr, 0).invoke();
            return new O0(dArr);
        }
        return interfaceC2292w0;
    }

    @Override // j$.util.stream.I3
    public Object b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        N1 Q = Q();
        abstractC2182a.R(spliterator, Q);
        return Q.get();
    }

    @Override // j$.util.stream.I3
    public Object c(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        return ((N1) new U1(this, abstractC2182a, spliterator).invoke()).get();
    }
}
