package j$.util.stream;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class G2 extends AbstractC2284u2 {
    public double[] c;
    public int d;

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        InterfaceC2225i2 interfaceC2225i2 = this.f11897a;
        interfaceC2225i2.m(this.d);
        if (!this.b) {
            while (i < this.d) {
                interfaceC2225i2.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d && !interfaceC2225i2.o()) {
                interfaceC2225i2.accept(this.c[i]);
                i++;
            }
        }
        interfaceC2225i2.l();
        this.c = null;
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }
}
