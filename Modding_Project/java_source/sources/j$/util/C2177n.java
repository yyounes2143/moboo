package j$.util;

import j$.util.stream.InterfaceC2225i2;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.n  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2177n implements DoubleConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11853a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ C2177n(Consumer consumer, int i) {
        this.f11853a = i;
        this.b = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f11853a) {
            case 0:
                this.b.accept(Double.valueOf(d));
                return;
            default:
                ((InterfaceC2225i2) this.b).accept(d);
                return;
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f11853a) {
            case 0:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
            default:
                return j$.com.android.tools.r8.a.b(this, doubleConsumer);
        }
    }
}
