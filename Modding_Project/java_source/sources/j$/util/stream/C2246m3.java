package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.m3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2246m3 implements InterfaceC2210f2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11919a;
    public final /* synthetic */ DoubleConsumer b;

    public /* synthetic */ C2246m3(DoubleConsumer doubleConsumer, int i) {
        this.f11919a = i;
        this.b = doubleConsumer;
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void c(long j) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f11919a) {
            case 0:
                this.b.accept(d);
                return;
            default:
                ((M2) this.b).accept(d);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(int i) {
        switch (this.f11919a) {
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
        switch (this.f11919a) {
            case 0:
                AbstractC2273s1.l();
                throw null;
            default:
                AbstractC2273s1.l();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f11919a) {
            case 0:
                q((Double) obj);
                return;
            default:
                q((Double) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11919a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f11919a) {
            case 0:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
            default:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
        int i = this.f11919a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
        int i = this.f11919a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        switch (this.f11919a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        switch (this.f11919a) {
            case 0:
                AbstractC2273s1.e(this, d);
                return;
            default:
                AbstractC2273s1.e(this, d);
                return;
        }
    }
}
