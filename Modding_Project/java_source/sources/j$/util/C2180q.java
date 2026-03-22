package j$.util;

import j$.util.stream.InterfaceC2225i2;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* renamed from: j$.util.q  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2180q implements IntConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11856a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ C2180q(Consumer consumer, int i) {
        this.f11856a = i;
        this.b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.f11856a) {
            case 0:
                this.b.accept(Integer.valueOf(i));
                return;
            default:
                ((InterfaceC2225i2) this.b).accept(i);
                return;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f11856a) {
            case 0:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
            default:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
        }
    }
}
