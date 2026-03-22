package j$.util.stream;

import j$.util.Spliterator;
/* renamed from: j$.util.stream.k  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2232k extends AbstractC2205e2 {
    public final /* synthetic */ int b = 2;
    public boolean c;
    public Object d;

    public /* synthetic */ C2232k(InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2232k(L3 l3, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = l3;
        this.c = true;
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
                this.f11903a.m(-1L);
                return;
            case 1:
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
                InterfaceC2225i2 interfaceC2225i2 = this.f11903a;
                if (obj == null) {
                    if (this.c) {
                        return;
                    }
                    this.c = true;
                    this.d = null;
                    interfaceC2225i2.accept((InterfaceC2225i2) null);
                    return;
                }
                Object obj2 = this.d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.d = obj;
                    interfaceC2225i2.accept((InterfaceC2225i2) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((j$.util.function.g) ((C2262q) this.d).o).apply((j$.util.function.g) obj);
                if (stream != null) {
                    try {
                        boolean z = this.c;
                        InterfaceC2225i2 interfaceC2225i22 = this.f11903a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(interfaceC2225i22);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC2225i22.o() && spliterator.tryAdvance(interfaceC2225i22)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.c) {
                    boolean test = ((L3) this.d).n.test(obj);
                    this.c = test;
                    if (test) {
                        this.f11903a.accept((InterfaceC2225i2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public boolean o() {
        switch (this.b) {
            case 1:
                this.c = true;
                return this.f11903a.o();
            case 2:
                return !this.c || this.f11903a.o();
            default:
                return super.o();
        }
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public void l() {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
                this.f11903a.l();
                return;
            default:
                super.l();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2232k(C2262q c2262q, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2262q;
    }
}
