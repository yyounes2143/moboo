package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class F3 implements InterfaceC2225i2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11869a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ F3(Consumer consumer, int i) {
        this.f11869a = i;
        this.b = consumer;
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void c(long j) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        switch (this.f11869a) {
            case 0:
                AbstractC2273s1.a();
                throw null;
            default:
                AbstractC2273s1.a();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(int i) {
        switch (this.f11869a) {
            case 0:
                AbstractC2273s1.k();
                throw null;
            default:
                AbstractC2273s1.k();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        switch (this.f11869a) {
            case 0:
                AbstractC2273s1.l();
                throw null;
            default:
                AbstractC2273s1.l();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f11869a) {
            case 0:
                ((T2) this.b).accept(obj);
                return;
            default:
                this.b.accept(obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11869a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
        int i = this.f11869a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
        int i = this.f11869a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        switch (this.f11869a) {
            case 0:
                return false;
            default:
                return false;
        }
    }
}
