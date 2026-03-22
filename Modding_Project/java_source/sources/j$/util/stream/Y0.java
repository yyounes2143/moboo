package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class Y0 extends X0 implements InterfaceC2272s0 {
    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC2282u0
    public final /* bridge */ /* synthetic */ C0 a() {
        a();
        return this;
    }

    @Override // j$.util.stream.InterfaceC2272s0, j$.util.stream.InterfaceC2282u0
    public final InterfaceC2302y0 a() {
        int i = this.b;
        int[] iArr = this.f11891a;
        if (i >= iArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(iArr.length)));
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        int[] iArr = this.f11891a;
        if (j != iArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(iArr.length)));
        }
        this.b = 0;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        int i2 = this.b;
        int[] iArr = this.f11891a;
        if (i2 < iArr.length) {
            this.b = 1 + i2;
            iArr[i2] = i;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(iArr.length)));
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void l() {
        int i = this.b;
        int[] iArr = this.f11891a;
        if (i < iArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(iArr.length)));
        }
    }

    @Override // j$.util.stream.X0
    public final String toString() {
        int[] iArr = this.f11891a;
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(iArr.length - this.b), Arrays.toString(iArr));
    }
}
