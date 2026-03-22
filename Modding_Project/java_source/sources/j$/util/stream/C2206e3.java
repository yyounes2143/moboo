package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.e3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2206e3 extends AbstractC2211f3 implements Consumer {
    public final Object[] b;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public C2206e3(int i) {
        this.b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f11906a;
        this.f11906a = i + 1;
        this.b[i] = obj;
    }
}
