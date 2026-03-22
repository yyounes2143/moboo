package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.jV  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1746jV implements InterfaceC0771Kj {
    public static byte[] A0C;
    public static String[] A0D = {"bYPw9lwZ90LIMnDVrWR9nivpaP", "yFs6hGP2BjxCIYW4vwAvQB", "ThDP9clSa9Dn", "ZJ8KrZKjZ6YsWfu6TvhIHbPrHjBQXt73", "tonD2drFJKLGWlZx83XdaJTA2vW", "BxtbVLMcuUKNP9oDIvLT", "q4ZypHVOEkKJ", "0njOXKHdBu5kWS0YMUnz8"};
    public static final int[] A0E;
    public static final int[] A0F;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public final int A04;
    public final int A05;
    public final C2061or A06;
    public final C4J A07;
    public final GY A08;
    public final H1 A09;
    public final C0773Kl A0A;
    public final byte[] A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 69);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{-120, 109, -76, -68, -63, -121, 109, -51, 0, -8, -19, -21, -4, -19, -20, -88, -18, -6, -23, -11, -19, -5, -88, -8, -19, -6, -88, -22, -12, -9, -21, -13, -62, -88, -7, Ascii.CR, -4, 1, 7, -57, 10, -7, Ascii.SI};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3 = this.A0A.A02;
        int i4 = this.A0A.A05;
        int i5 = (i2 * 4) + (i * i3);
        int i6 = (i4 * 4) + i5;
        int i7 = (i3 / i4) - 4;
        int i8 = ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255);
        int min = Math.min(bArr[i5 + 2] & 255, 88);
        int i9 = A0F[min];
        int i10 = ((this.A04 * i * i4) + i2) * 2;
        bArr2[i10] = (byte) (i8 & 255);
        bArr2[i10 + 1] = (byte) (i8 >> 8);
        for (int i11 = 0; i11 < i7 * 2; i11++) {
            int i12 = bArr[((i11 / 8) * i4 * 4) + i6 + ((i11 / 2) % 4)] & 255;
            int i13 = i11 % 2 == 0 ? i12 & 15 : i12 >> 4;
            int i14 = ((((i13 & 7) * 2) + 1) * i9) >> 3;
            if ((i13 & 8) != 0) {
                i14 = -i14;
            }
            i8 = AbstractC03624a.A07(i8 + i14, -32768, 32767);
            i10 += i4 * 2;
            bArr2[i10] = (byte) (i8 & 255);
            bArr2[i10 + 1] = (byte) (i8 >> 8);
            min = AbstractC03624a.A07(min + A0E[i13], 0, A0F.length - 1);
            i9 = A0F[min];
        }
    }

    static {
        A04();
        A0E = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        A0F = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, ITPNativePlayerMessageCallback.INFO_LONG1_DRM_FATAL_ERROR, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public C1746jV(GY gy, H1 h1, C0773Kl c0773Kl) throws C03182i {
        this.A08 = gy;
        this.A09 = h1;
        this.A0A = c0773Kl;
        this.A05 = Math.max(1, c0773Kl.A04 / 10);
        C4J scratch = new C4J(c0773Kl.A06);
        scratch.A0G();
        this.A04 = scratch.A0G();
        int i = c0773Kl.A05;
        int i2 = (((c0773Kl.A02 - (i * 4)) * 8) / (c0773Kl.A01 * i)) + 1;
        if (this.A04 == i2) {
            int numChannels = AbstractC03624a.A05(this.A05, this.A04);
            this.A0B = new byte[c0773Kl.A02 * numChannels];
            int maxBlocksToDecode = A02(this.A04, i);
            this.A07 = new C4J(maxBlocksToDecode * numChannels);
            int maxBlocksToDecode2 = c0773Kl.A04;
            int constantBitrate = ((maxBlocksToDecode2 * c0773Kl.A02) * 8) / this.A04;
            this.A06 = new C2D().A11(A03(34, 9, 83)).A0a(constantBitrate).A0j(constantBitrate).A0h(A02(this.A05, i)).A0b(c0773Kl.A05).A0m(c0773Kl.A04).A0i(2).A14();
            return;
        }
        throw C03182i.A01(A03(7, 27, 67) + i2 + A03(0, 7, 8) + this.A04, null);
    }

    private int A00(int i) {
        return i / (this.A0A.A05 * 2);
    }

    private int A01(int i) {
        return A02(i, this.A0A.A05);
    }

    public static int A02(int i, int i2) {
        return i * 2 * i2;
    }

    private void A05(int i) {
        int A01 = A01(i);
        this.A09.AIA(this.A03 + AbstractC03624a.A0U(this.A02, 1000000L, this.A0A.A04), 1, A01, this.A01 - A01, null);
        long timeUs = i;
        this.A02 += timeUs;
        this.A01 -= A01;
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A07(byte[] r4, int r5, com.facebook.ads.redexgen.X.C4J r6) {
        /*
            r3 = this;
            r2 = 0
        L1:
            if (r2 >= r5) goto L17
            r1 = 0
        L4:
            com.facebook.ads.redexgen.X.Kl r0 = r3.A0A
            int r0 = r0.A05
            if (r1 >= r0) goto L14
            byte[] r0 = r6.A0l()
            r3.A06(r4, r2, r1, r0)
            int r1 = r1 + 1
            goto L4
        L14:
            int r2 = r2 + 1
            goto L1
        L17:
            int r0 = r3.A04
            int r0 = r0 * r5
            int r1 = r3.A01(r0)
            r0 = 0
            r6.A0f(r0)
            r6.A0e(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1746jV.A07(byte[], int, com.facebook.ads.redexgen.X.4J):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    public final void AA0(int i, long j) {
        this.A08.AIN(new C1743jS(this.A0A, this.A04, i, j));
        this.A09.A6W(this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    public final void AI0(long j) {
        this.A00 = 0;
        this.A03 = j;
        this.A01 = 0;
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    public final boolean AI9(InterfaceC1850lN interfaceC1850lN, long j) throws IOException {
        int A00 = this.A05 - A00(this.A01);
        int targetFramesRemaining = this.A04;
        int blocksToDecode = AbstractC03624a.A05(A00, targetFramesRemaining);
        int i = this.A0A.A02 * blocksToDecode;
        int targetFramesRemaining2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        boolean z = targetFramesRemaining2 == 0;
        while (!z) {
            int targetFramesRemaining3 = this.A00;
            if (targetFramesRemaining3 >= i) {
                break;
            }
            int targetFramesRemaining4 = this.A00;
            int targetReadBytes = (int) Math.min(i - targetFramesRemaining4, j);
            byte[] bArr = this.A0B;
            int targetFramesRemaining5 = this.A00;
            int blocksToDecode2 = interfaceC1850lN.read(bArr, targetFramesRemaining5, targetReadBytes);
            if (blocksToDecode2 == -1) {
                z = true;
            } else {
                int targetFramesRemaining6 = this.A00;
                this.A00 = targetFramesRemaining6 + blocksToDecode2;
            }
        }
        int targetReadBytes2 = this.A00;
        int targetFramesRemaining7 = this.A0A.A02;
        int targetReadBytes3 = targetReadBytes2 / targetFramesRemaining7;
        if (targetReadBytes3 > 0) {
            A07(this.A0B, targetReadBytes3, this.A07);
            int blocksToDecode3 = this.A00;
            int targetFramesRemaining8 = this.A0A.A02;
            this.A00 = blocksToDecode3 - (targetFramesRemaining8 * targetReadBytes3);
            int blocksToDecode4 = A0D[3].charAt(16);
            if (blocksToDecode4 != 84) {
                throw new RuntimeException();
            }
            A0D[0] = "TvVFAtGQ";
            int targetReadBytes4 = this.A07.A0A();
            this.A09.AI7(this.A07, targetReadBytes4);
            int targetFramesRemaining9 = this.A01;
            this.A01 = targetFramesRemaining9 + targetReadBytes4;
            int targetFramesRemaining10 = this.A01;
            int blocksToDecode5 = A00(targetFramesRemaining10);
            int targetFramesRemaining11 = this.A05;
            if (blocksToDecode5 >= targetFramesRemaining11) {
                int targetFramesRemaining12 = this.A05;
                A05(targetFramesRemaining12);
            }
        }
        if (z) {
            int targetFramesRemaining13 = this.A01;
            int targetFramesRemaining14 = A00(targetFramesRemaining13);
            if (targetFramesRemaining14 > 0) {
                A05(targetFramesRemaining14);
            }
        }
        return z;
    }
}
