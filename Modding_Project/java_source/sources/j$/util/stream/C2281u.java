package j$.util.stream;

import j$.util.C2177n;
import j$.util.Objects;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.u  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2281u extends AbstractC2190b2 {
    public boolean b;
    public final C2177n c;
    public final /* synthetic */ C2286v d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2281u(C2286v c2286v, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2286v;
        InterfaceC2225i2 interfaceC2225i22 = this.f11897a;
        Objects.requireNonNull(interfaceC2225i22);
        this.c = new C2177n(interfaceC2225i22, 1);
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11897a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        DoubleStream doubleStream = (DoubleStream) ((j$.util.function.g) this.d.o).apply(d);
        if (doubleStream != null) {
            try {
                boolean z = this.b;
                C2177n c2177n = this.c;
                if (!z) {
                    doubleStream.sequential().forEach(c2177n);
                } else {
                    j$.util.A spliterator = doubleStream.sequential().spliterator();
                    while (!this.f11897a.o() && spliterator.tryAdvance((DoubleConsumer) c2177n)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    doubleStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (doubleStream != null) {
            doubleStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        this.b = true;
        return this.f11897a.o();
    }
}
