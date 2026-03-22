package j$.util.stream;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class J2 extends AbstractC2299x2 {
    public Object[] d;
    public int e;

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = new Object[(int) j];
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        InterfaceC2225i2 interfaceC2225i2 = this.f11903a;
        interfaceC2225i2.m(this.e);
        if (!this.c) {
            while (i < this.e) {
                interfaceC2225i2.accept((InterfaceC2225i2) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e && !interfaceC2225i2.o()) {
                interfaceC2225i2.accept((InterfaceC2225i2) this.d[i]);
                i++;
            }
        }
        interfaceC2225i2.l();
        this.d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }
}
