package j$.util.stream;

import j$.time.format.C2162a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2182a implements BaseStream, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC2182a f11896a;
    public final AbstractC2182a b;
    public final int c;
    public final AbstractC2182a d;
    public int e;
    public int f;
    public Spliterator g;
    public Supplier h;
    public boolean i;
    public final boolean j;
    public Runnable k;
    public boolean l;

    public abstract C0 E(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract boolean G(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2);

    public abstract Y2 H();

    public abstract Spliterator I(Supplier supplier);

    public abstract InterfaceC2282u0 J(long j, IntFunction intFunction);

    public abstract boolean M();

    public abstract InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2);

    public abstract Spliterator Q(AbstractC2182a abstractC2182a, Supplier supplier, boolean z);

    public AbstractC2182a(Spliterator spliterator, int i, boolean z) {
        this.b = null;
        this.g = spliterator;
        this.f11896a = this;
        int i2 = X2.g & i;
        this.c = i2;
        this.f = (~(i2 << 1)) & X2.l;
        this.e = 0;
        this.l = z;
    }

    public AbstractC2182a(AbstractC2182a abstractC2182a, int i) {
        if (abstractC2182a.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2182a.i = true;
        abstractC2182a.d = this;
        this.b = abstractC2182a;
        this.c = X2.h & i;
        this.f = X2.h(i, abstractC2182a.f);
        AbstractC2182a abstractC2182a2 = abstractC2182a.f11896a;
        this.f11896a = abstractC2182a2;
        if (M()) {
            abstractC2182a2.j = true;
        }
        this.e = abstractC2182a.e + 1;
    }

    public AbstractC2182a(Supplier supplier, int i, boolean z) {
        this.b = null;
        this.h = supplier;
        this.f11896a = this;
        int i2 = X2.g & i;
        this.c = i2;
        this.f = (~(i2 << 1)) & X2.l;
        this.e = 0;
        this.l = z;
    }

    public final Object C(I3 i3) {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        if (this.f11896a.l) {
            return i3.c(this, O(i3.d()));
        }
        return i3.b(this, O(i3.d()));
    }

    public final C0 D(IntFunction intFunction) {
        AbstractC2182a abstractC2182a;
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        if (this.f11896a.l && (abstractC2182a = this.b) != null && M()) {
            this.e = 0;
            return K(abstractC2182a, abstractC2182a.O(0), intFunction);
        }
        return B(O(0), true, intFunction);
    }

    public final Spliterator P() {
        AbstractC2182a abstractC2182a = this.f11896a;
        if (this != abstractC2182a) {
            throw new IllegalStateException();
        }
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        Spliterator spliterator = abstractC2182a.g;
        if (spliterator != null) {
            abstractC2182a.g = null;
            return spliterator;
        }
        Supplier supplier = abstractC2182a.h;
        if (supplier != null) {
            Spliterator spliterator2 = (Spliterator) supplier.get();
            abstractC2182a.h = null;
            return spliterator2;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream sequential() {
        this.f11896a.l = false;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream parallel() {
        this.f11896a.l = true;
        return this;
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.i = true;
        this.h = null;
        this.g = null;
        AbstractC2182a abstractC2182a = this.f11896a;
        Runnable runnable = abstractC2182a.k;
        if (runnable != null) {
            abstractC2182a.k = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC2182a abstractC2182a = this.f11896a;
        Runnable runnable2 = abstractC2182a.k;
        if (runnable2 != null) {
            runnable = new H3(runnable2, runnable);
        }
        abstractC2182a.k = runnable;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public Spliterator spliterator() {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        AbstractC2182a abstractC2182a = this.f11896a;
        if (this == abstractC2182a) {
            Spliterator spliterator = abstractC2182a.g;
            if (spliterator != null) {
                abstractC2182a.g = null;
                return spliterator;
            }
            Supplier supplier = abstractC2182a.h;
            if (supplier != null) {
                abstractC2182a.h = null;
                return I(supplier);
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return Q(this, new j$.util.function.g(this, 1), abstractC2182a.l);
    }

    public final C0 B(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f11896a.l) {
            return E(this, spliterator, z, intFunction);
        }
        InterfaceC2282u0 J = J(F(spliterator), intFunction);
        R(spliterator, J);
        return J.a();
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.f11896a.l;
    }

    public final Spliterator O(int i) {
        int i2;
        int i3;
        AbstractC2182a abstractC2182a = this.f11896a;
        Spliterator spliterator = abstractC2182a.g;
        if (spliterator != null) {
            abstractC2182a.g = null;
        } else {
            Supplier supplier = abstractC2182a.h;
            if (supplier != null) {
                spliterator = (Spliterator) supplier.get();
                abstractC2182a.h = null;
            } else {
                throw new IllegalStateException("source already consumed or closed");
            }
        }
        if (abstractC2182a.l && abstractC2182a.j) {
            AbstractC2182a abstractC2182a2 = abstractC2182a.d;
            int i4 = 1;
            while (abstractC2182a != this) {
                int i5 = abstractC2182a2.c;
                if (abstractC2182a2.M()) {
                    if (X2.SHORT_CIRCUIT.l(i5)) {
                        i5 &= ~X2.u;
                    }
                    spliterator = abstractC2182a2.L(abstractC2182a, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~X2.t) & i5;
                        i3 = X2.s;
                    } else {
                        i2 = (~X2.s) & i5;
                        i3 = X2.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                int i6 = i4 + 1;
                abstractC2182a2.e = i4;
                abstractC2182a2.f = X2.h(i5, abstractC2182a.f);
                AbstractC2182a abstractC2182a3 = abstractC2182a2;
                abstractC2182a2 = abstractC2182a2.d;
                abstractC2182a = abstractC2182a3;
                i4 = i6;
            }
        }
        if (i != 0) {
            this.f = X2.h(i, this.f);
        }
        return spliterator;
    }

    public final long F(Spliterator spliterator) {
        if (X2.SIZED.l(this.f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    public final InterfaceC2225i2 R(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        z(spliterator, S((InterfaceC2225i2) Objects.requireNonNull(interfaceC2225i2)));
        return interfaceC2225i2;
    }

    public final void z(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        Objects.requireNonNull(interfaceC2225i2);
        if (!X2.SHORT_CIRCUIT.l(this.f)) {
            interfaceC2225i2.m(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(interfaceC2225i2);
            interfaceC2225i2.l();
            return;
        }
        A(spliterator, interfaceC2225i2);
    }

    public final boolean A(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        AbstractC2182a abstractC2182a = this;
        while (abstractC2182a.e > 0) {
            abstractC2182a = abstractC2182a.b;
        }
        interfaceC2225i2.m(spliterator.getExactSizeIfKnown());
        boolean G = abstractC2182a.G(spliterator, interfaceC2225i2);
        interfaceC2225i2.l();
        return G;
    }

    public final InterfaceC2225i2 S(InterfaceC2225i2 interfaceC2225i2) {
        Objects.requireNonNull(interfaceC2225i2);
        AbstractC2182a abstractC2182a = this;
        while (abstractC2182a.e > 0) {
            AbstractC2182a abstractC2182a2 = abstractC2182a.b;
            interfaceC2225i2 = abstractC2182a.N(abstractC2182a2.f, interfaceC2225i2);
            abstractC2182a = abstractC2182a2;
        }
        return interfaceC2225i2;
    }

    public final Spliterator T(Spliterator spliterator) {
        return this.e == 0 ? spliterator : Q(this, new j$.util.function.g(spliterator, 2), this.f11896a.l);
    }

    public C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        return K(abstractC2182a, spliterator, new C2162a(9)).spliterator();
    }
}
