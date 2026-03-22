package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* renamed from: j$.util.stream.o3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2256o3 implements InterfaceC2215g2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11924a;
    public final /* synthetic */ IntConsumer b;

    public /* synthetic */ C2256o3(IntConsumer intConsumer, int i) {
        this.f11924a = i;
        this.b = intConsumer;
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
        switch (this.f11924a) {
            case 0:
                AbstractC2273s1.a();
                throw null;
            default:
                AbstractC2273s1.a();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        switch (this.f11924a) {
            case 0:
                this.b.accept(i);
                return;
            default:
                ((O2) this.b).accept(i);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        switch (this.f11924a) {
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
        switch (this.f11924a) {
            case 0:
                n((Integer) obj);
                return;
            default:
                n((Integer) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f11924a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f11924a) {
            case 0:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
            default:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
        int i = this.f11924a;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void m(long j) {
        int i = this.f11924a;
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        switch (this.f11924a) {
            case 0:
                AbstractC2273s1.g(this, num);
                return;
            default:
                AbstractC2273s1.g(this, num);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        switch (this.f11924a) {
            case 0:
                return false;
            default:
                return false;
        }
    }
}
