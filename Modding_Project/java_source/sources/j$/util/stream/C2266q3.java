package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.q3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2266q3 implements InterfaceC2220h2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11926a;
    public final /* synthetic */ LongConsumer b;

    public /* synthetic */ C2266q3(LongConsumer longConsumer, int i) {
        this.f11926a = i;
        this.b = longConsumer;
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
        switch (this.f11926a) {
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
        switch (this.f11926a) {
            case 0:
                AbstractC2273s1.k();
                throw null;
            default:
                AbstractC2273s1.k();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        switch (this.f11926a) {
            case 0:
                this.b.accept(j);
                return;
            default:
                ((Q2) this.b).accept(j);
                return;
        }
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f11926a) {
            case 0:
                k((Long) obj);
                return;
            default:
                k((Long) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11926a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f11926a) {
            case 0:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
            default:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
        }
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        switch (this.f11926a) {
            case 0:
                AbstractC2273s1.i(this, l);
                return;
            default:
                AbstractC2273s1.i(this, l);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
        int i = this.f11926a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
        int i = this.f11926a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        switch (this.f11926a) {
            case 0:
                return false;
            default:
                return false;
        }
    }
}
