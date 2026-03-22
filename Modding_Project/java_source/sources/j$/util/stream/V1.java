package j$.util.stream;

import j$.util.C2177n;
import j$.util.C2311t;
import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class V1 extends AbstractC2205e2 {
    public final /* synthetic */ int b = 0;
    public boolean c;
    public final Object d;
    public final /* synthetic */ AbstractC2182a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V1(C2286v c2286v, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.e = c2286v;
        InterfaceC2225i2 interfaceC2225i22 = this.f11903a;
        Objects.requireNonNull(interfaceC2225i22);
        this.d = new C2177n(interfaceC2225i22, 1);
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        switch (this.b) {
            case 0:
                this.f11903a.m(-1L);
                return;
            default:
                this.f11903a.m(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                LongStream longStream = (LongStream) ((j$.util.function.g) ((C2198d0) this.e).o).apply((j$.util.function.g) obj);
                if (longStream != null) {
                    try {
                        boolean z = this.c;
                        C2311t c2311t = (C2311t) this.d;
                        if (!z) {
                            longStream.sequential().forEach(c2311t);
                        } else {
                            j$.util.F spliterator = longStream.sequential().spliterator();
                            while (!this.f11903a.o() && spliterator.tryAdvance((LongConsumer) c2311t)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            longStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (longStream != null) {
                    longStream.close();
                    return;
                }
                return;
            default:
                DoubleStream doubleStream = (DoubleStream) ((j$.util.function.g) ((C2286v) this.e).o).apply((j$.util.function.g) obj);
                if (doubleStream != null) {
                    try {
                        boolean z2 = this.c;
                        C2177n c2177n = (C2177n) this.d;
                        if (!z2) {
                            doubleStream.sequential().forEach(c2177n);
                        } else {
                            j$.util.A spliterator2 = doubleStream.sequential().spliterator();
                            while (!this.f11903a.o() && spliterator2.tryAdvance((DoubleConsumer) c2177n)) {
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            doubleStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (doubleStream != null) {
                    doubleStream.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        switch (this.b) {
            case 0:
                this.c = true;
                return this.f11903a.o();
            default:
                this.c = true;
                return this.f11903a.o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V1(C2198d0 c2198d0, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.e = c2198d0;
        InterfaceC2225i2 interfaceC2225i22 = this.f11903a;
        Objects.requireNonNull(interfaceC2225i22);
        this.d = new C2311t(interfaceC2225i22, 1);
    }
}
