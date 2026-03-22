package j$.util.stream;

import j$.util.C2311t;
import j$.util.Objects;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.c0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2193c0 extends AbstractC2200d2 {
    public boolean b;
    public final C2311t c;
    public final /* synthetic */ C2198d0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2193c0(C2198d0 c2198d0, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2198d0;
        InterfaceC2225i2 interfaceC2225i22 = this.f11901a;
        Objects.requireNonNull(interfaceC2225i22);
        this.c = new C2311t(interfaceC2225i22, 1);
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11901a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((j$.util.function.g) this.d.o).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.b;
                C2311t c2311t = this.c;
                if (!z) {
                    longStream.sequential().forEach(c2311t);
                } else {
                    j$.util.F spliterator = longStream.sequential().spliterator();
                    while (!this.f11901a.o() && spliterator.tryAdvance((LongConsumer) c2311t)) {
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
        }
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        this.b = true;
        return this.f11901a.o();
    }
}
