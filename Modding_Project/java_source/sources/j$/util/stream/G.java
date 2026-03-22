package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public abstract class G implements J3 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11870a;
    public Object b;

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        if (this.f11870a) {
            return;
        }
        this.f11870a = true;
        this.b = obj;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.f11870a;
    }
}
