package j$.util;

import j$.util.stream.InterfaceC2225i2;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.t  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2311t implements LongConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11937a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ C2311t(Consumer consumer, int i) {
        this.f11937a = i;
        this.b = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f11937a) {
            case 0:
                this.b.accept(Long.valueOf(j));
                return;
            default:
                ((InterfaceC2225i2) this.b).accept(j);
                return;
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f11937a) {
            case 0:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
            default:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
        }
    }
}
