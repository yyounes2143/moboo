package j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.z2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2309z2 extends AbstractC2289v2 {
    public O2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.O2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
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

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final void l() {
        int[] iArr = (int[]) this.c.e();
        Arrays.sort(iArr);
        InterfaceC2225i2 interfaceC2225i2 = this.f11899a;
        interfaceC2225i2.m(iArr.length);
        int i = 0;
        if (!this.b) {
            int length = iArr.length;
            while (i < length) {
                interfaceC2225i2.accept(iArr[i]);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (interfaceC2225i2.o()) {
                    break;
                }
                interfaceC2225i2.accept(i2);
                i++;
            }
        }
        interfaceC2225i2.l();
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        this.c.accept(i);
    }
}
