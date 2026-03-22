package j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.y2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2304y2 extends AbstractC2284u2 {
    public M2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.M2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        ?? r0;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            r0 = new S2();
        } else {
            r0 = new S2((int) j);
        }
        this.c = r0;
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        double[] dArr = (double[]) this.c.e();
        Arrays.sort(dArr);
        InterfaceC2225i2 interfaceC2225i2 = this.f11897a;
        interfaceC2225i2.m(dArr.length);
        int i = 0;
        if (!this.b) {
            int length = dArr.length;
            while (i < length) {
                interfaceC2225i2.accept(dArr[i]);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (interfaceC2225i2.o()) {
                    break;
                }
                interfaceC2225i2.accept(d);
                i++;
            }
        }
        interfaceC2225i2.l();
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.c.accept(d);
    }
}
