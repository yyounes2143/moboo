package j$.util.stream;

import java.util.function.LongPredicate;
/* loaded from: classes2.dex */
public final class S3 extends AbstractC2200d2 {
    public final boolean b;

    public S3(D2 d2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11901a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        if (this.b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return !this.b || this.f11901a.o();
    }
}
