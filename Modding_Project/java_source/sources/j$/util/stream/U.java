package j$.util.stream;

import j$.util.C2180q;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class U extends AbstractC2195c2 {
    public boolean b;
    public final C2180q c;
    public final /* synthetic */ S d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(S s, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = s;
        InterfaceC2225i2 interfaceC2225i22 = this.f11899a;
        Objects.requireNonNull(interfaceC2225i22);
        this.c = new C2180q(interfaceC2225i22, 1);
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11899a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((I) this.d.n).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.b;
                C2180q c2180q = this.c;
                if (!z) {
                    intStream.sequential().forEach(c2180q);
                } else {
                    Spliterator.OfInt spliterator = intStream.sequential().spliterator();
                    while (!this.f11899a.o() && spliterator.tryAdvance((IntConsumer) c2180q)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        this.b = true;
        return this.f11899a.o();
    }
}
