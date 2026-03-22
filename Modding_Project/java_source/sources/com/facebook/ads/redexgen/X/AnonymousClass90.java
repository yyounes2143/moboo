package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.90  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass90 implements InterfaceC1850lN {
    public static String[] A07 = {"YlHQuKLayYbpqzx9FSV6CQrLdQj96AeM", "S4RZcb4lBSGk97kEvSl91HaEV0P4", "uVSfNf", "Coq", "aQ2CxhcvUBulJYKynnVyQo", "flTysjHMhLtcJrzUbSTnFz15x2mZl", "8oFgaOvQgeQ1BxQlutu1jILF1QVjJ1FW", "wjWZdP"};
    public int A00;
    public int A01;
    public long A02;
    public byte[] A03;
    public final long A04;
    public final InterfaceC1996nl A05;
    public final byte[] A06;

    public AnonymousClass90(InterfaceC1996nl interfaceC1996nl, long j, long j2) {
        this(interfaceC1996nl, j, j2, false);
    }

    public AnonymousClass90(InterfaceC1996nl interfaceC1996nl, long j, long j2, boolean z) {
        this.A05 = interfaceC1996nl;
        this.A02 = j;
        this.A04 = j2;
        this.A03 = new byte[65536];
        this.A06 = new byte[4096];
    }

    private int A00(int i) {
        int bytesSkipped = Math.min(this.A00, i);
        A05(bytesSkipped);
        return bytesSkipped;
    }

    private int A01(byte[] bArr, int i, int i2) {
        if (this.A00 == 0) {
            return 0;
        }
        int min = Math.min(this.A00, i2);
        System.arraycopy(this.A03, 0, bArr, i, min);
        A05(min);
        return min;
    }

    private int A02(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.A05.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + read;
        }
        throw new InterruptedIOException();
    }

    private void A03(int i) {
        if (i != -1) {
            this.A02 += i;
        }
    }

    private void A04(int i) {
        int i2 = this.A01 + i;
        int requiredLength = this.A03.length;
        if (i2 > requiredLength) {
            int requiredLength2 = this.A03.length;
            int requiredLength3 = 524288 + i2;
            int newPeekCapacity = AbstractC03624a.A07(requiredLength2 * 2, 65536 + i2, requiredLength3);
            this.A03 = Arrays.copyOf(this.A03, newPeekCapacity);
        }
    }

    private void A05(int i) {
        this.A00 -= i;
        this.A01 = 0;
        byte[] bArr = this.A03;
        if (this.A00 < this.A03.length - 524288) {
            bArr = new byte[this.A00 + 65536];
        }
        byte[] bArr2 = this.A03;
        int i2 = this.A00;
        if (A07[3].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[7] = "U6HOVF";
        strArr[2] = "FLrwJS";
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.A03 = bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
        if (r4 == (-1)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
        A03(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A06(int r7, boolean r8) throws java.io.IOException {
        /*
            r6 = this;
            int r4 = r6.A00(r7)
        L4:
            r3 = -1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 1
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L42
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "VT2oIT"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "AHKvNZ"
            r0 = 2
            r2[r0] = r1
            if (r4 >= r7) goto L39
            if (r4 == r3) goto L39
            byte[] r0 = r6.A06
            int r0 = r0.length
            int r0 = r0 + r4
            int r3 = java.lang.Math.min(r7, r0)
            byte[] r1 = r6.A06
            int r2 = -r4
            r0 = r6
            r5 = r8
            int r4 = r0.A02(r1, r2, r3, r4, r5)
            goto L4
        L39:
            r6.A03(r4)
            if (r4 == r3) goto L40
            r0 = 1
        L3f:
            return r0
        L40:
            r0 = 0
            goto L3f
        L42:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass90.A06(int, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final void A3z(int i) throws IOException {
        A40(i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        throw new java.lang.RuntimeException();
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A40(int r7, boolean r8) throws java.io.IOException {
        /*
            r6 = this;
            r3 = r7
            r6.A04(r3)
            int r4 = r6.A00
            int r0 = r6.A01
            int r4 = r4 - r0
        L9:
            if (r4 >= r3) goto L39
            byte[] r1 = r6.A03
            int r2 = r6.A01
            r0 = r6
            r5 = r8
            int r4 = r0.A02(r1, r2, r3, r4, r5)
            r0 = -1
            if (r4 != r0) goto L33
            r3 = 0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 6
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L59
        L2d:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L33:
            int r0 = r6.A01
            int r0 = r0 + r4
            r6.A00 = r0
            goto L9
        L39:
            int r0 = r6.A01
            int r0 = r0 + r3
            r6.A01 = r0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            r0 = 1
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L2d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "05c"
            r0 = 3
            r2[r0] = r1
            r0 = 1
            return r0
        L59:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass90.A07
            java.lang.String r1 = "U9yRyStfgEDvt0OpJggQJXPRXL9S"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "yvkfr8ZSlHssIeYh6rwGG04GsxspU"
            r0 = 5
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass90.A40(int, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final long A8G() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final long A8a() {
        return this.A02 + this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final long A8f() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final Uri A9H() {
        return this.A05.A9H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final int AG8(byte[] bArr, int i, int i2) throws IOException {
        int min;
        A04(i2);
        int bytesPeeked = this.A00 - this.A01;
        if (bytesPeeked == 0) {
            min = A02(this.A03, this.A01, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            int peekBufferRemainingBytes = this.A00;
            this.A00 = peekBufferRemainingBytes + min;
        } else {
            min = Math.min(i2, bytesPeeked);
        }
        byte[] bArr2 = this.A03;
        int peekBufferRemainingBytes2 = this.A01;
        System.arraycopy(bArr2, peekBufferRemainingBytes2, bArr, i, min);
        int peekBufferRemainingBytes3 = this.A01;
        this.A01 = peekBufferRemainingBytes3 + min;
        return min;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final void AG9(byte[] bArr, int i, int i2) throws IOException {
        AGA(bArr, i, i2, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final boolean AGA(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!A40(i2, z)) {
            return false;
        }
        System.arraycopy(this.A03, this.A01 - i2, bArr, i, i2);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final boolean AGh(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int A01 = A01(bArr, i, i2);
        while (A01 < i2 && A01 != -1) {
            A01 = A02(bArr, i, i2, A01, z);
        }
        A03(A01);
        return A01 != -1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final void AI1() {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final int AJG(int i) throws IOException {
        int A00 = A00(i);
        if (A00 == 0) {
            byte[] bArr = this.A06;
            int bytesSkipped = this.A06.length;
            A00 = A02(bArr, 0, Math.min(i, bytesSkipped), 0, true);
        }
        A03(A00);
        String[] strArr = A07;
        String str = strArr[7];
        String str2 = strArr[2];
        int length = str.length();
        int bytesSkipped2 = str2.length();
        if (length != bytesSkipped2) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[6] = "4muWdj2u5Q3eId9F7O7O9kyn7QS9F70y";
        strArr2[0] = "MQBZi4ACHP4vbg8D4iuKjBQaYQ9ASuUs";
        return A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final void AJJ(int i) throws IOException {
        A06(i, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN, com.facebook.ads.redexgen.X.AnonymousClass20
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int bytesRead = A01(bArr, i, i2);
        if (bytesRead == 0) {
            bytesRead = A02(bArr, i, i2, 0, true);
        }
        A03(bytesRead);
        return bytesRead;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1850lN
    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        AGh(bArr, i, i2, false);
    }
}
