package j$.util.stream;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class A2 extends AbstractC2294w2 {
    public Q2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.Q2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
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

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        long[] jArr = (long[]) this.c.e();
        Arrays.sort(jArr);
        InterfaceC2225i2 interfaceC2225i2 = this.f11901a;
        interfaceC2225i2.m(jArr.length);
        int i = 0;
        if (!this.b) {
            int length = jArr.length;
            while (i < length) {
                interfaceC2225i2.accept(jArr[i]);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (interfaceC2225i2.o()) {
                    break;
                }
                interfaceC2225i2.accept(j);
                i++;
            }
        }
        interfaceC2225i2.l();
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        this.c.accept(j);
    }
}
