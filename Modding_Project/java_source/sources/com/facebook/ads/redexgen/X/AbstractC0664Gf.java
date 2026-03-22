package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
@MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
/* renamed from: com.facebook.ads.redexgen.X.Gf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0664Gf {
    public static byte[] A00;
    public static String[] A01 = {"jaTfwC0cI533jMSLFdbnMioREeamNCq8", "oxYS1uYBjADPdRUL4vsR12VppXrr4BxP", "o9bG5hJtiKIeIPN2CaXw8mH6vllsT8Pg", "8s8MZLb5TSIkvuwEDH", "W6kvFYauQlSyWCDb8CQhWvVbWb1Alqwq", "aw37R0CiGakhFrBRrvipxmkRXRxeCTzI", "Y2zfIeYjiYIsjSkQMxD0jwTDeetOAull", "DaiobFePrAznnRWN86LDTmrCW9O2HPvR"};

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{5, 34, 42, 47, 38, 39, 99, 55, 44, 99, 49, 38, 34, 39, 99, 5, Ascii.SI, 2, 0, 99, 48, 55, 49, 38, 34, 46, 99, 46, 34, 49, 40, 38, 49, 109, 125, 82, 73, 72, 79, Ascii.ESC, 93, 73, 90, 86, 94, Ascii.ESC, 95, 84, 94, 72, Ascii.ESC, 85, 84, 79, Ascii.ESC, 72, 79, 90, 73, 79, Ascii.ESC, 76, 82, 79, 83, Ascii.ESC, 72, 66, 85, 88, Ascii.ESC, 88, 84, 95, 94, Ascii.NAK};
    }

    static {
        A08();
    }

    public static int A00(InterfaceC1850lN interfaceC1850lN) throws IOException {
        interfaceC1850lN.AI1();
        C4J c4j = new C4J(2);
        interfaceC1850lN.AG9(c4j.A0l(), 0, 2);
        int syncCode = c4j.A0M();
        int frameStartMarker = syncCode >> 2;
        if (frameStartMarker == 16382) {
            interfaceC1850lN.AI1();
            return syncCode;
        }
        interfaceC1850lN.AI1();
        throw C03182i.A01(A06(34, 42, 75), null);
    }

    public static Metadata A01(InterfaceC1850lN interfaceC1850lN, boolean z) throws IOException {
        InterfaceC0687Hc id3FramePredicate;
        if (z) {
            id3FramePredicate = null;
        } else {
            id3FramePredicate = C04708i.A03;
        }
        Metadata A002 = new C0669Gk().A00(interfaceC1850lN, id3FramePredicate);
        if (A002 == null || A002.A02() == 0) {
            return null;
        }
        return A002;
    }

    public static Metadata A02(InterfaceC1850lN interfaceC1850lN, boolean z) throws IOException {
        interfaceC1850lN.AI1();
        long A8a = interfaceC1850lN.A8a();
        Metadata A012 = A01(interfaceC1850lN, z);
        interfaceC1850lN.AJJ((int) (interfaceC1850lN.A8a() - A8a));
        return A012;
    }

    public static C0665Gg A03(C4J c4j) {
        c4j.A0g(1);
        int A0K = c4j.A0K();
        int length = c4j.A09();
        long j = length + A0K;
        int i = A0K / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long A0P = c4j.A0P();
            int length2 = (A0P > (-1L) ? 1 : (A0P == (-1L) ? 0 : -1));
            if (length2 == 0) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = A0P;
            jArr2[i2] = c4j.A0P();
            c4j.A0g(2);
            i2++;
        }
        int length3 = c4j.A09();
        c4j.A0g((int) (j - length3));
        return new C0665Gg(jArr, jArr2);
    }

    public static C0665Gg A04(InterfaceC1850lN interfaceC1850lN, int i) throws IOException {
        C4J c4j = new C4J(i);
        interfaceC1850lN.readFully(c4j.A0l(), 0, i);
        return A03(c4j);
    }

    public static C0666Gh A05(InterfaceC1850lN interfaceC1850lN) throws IOException {
        byte[] bArr = new byte[38];
        interfaceC1850lN.readFully(bArr, 0, 38);
        return new C0666Gh(bArr, 4);
    }

    public static List<String> A07(InterfaceC1850lN interfaceC1850lN, int i) throws IOException {
        C4J c4j = new C4J(i);
        interfaceC1850lN.readFully(c4j.A0l(), 0, i);
        c4j.A0g(4);
        return Arrays.asList(H8.A05(c4j, false, false).A02);
    }

    public static void A09(InterfaceC1850lN interfaceC1850lN) throws IOException {
        C4J c4j = new C4J(4);
        interfaceC1850lN.readFully(c4j.A0l(), 0, 4);
        if (c4j.A0Q() == 1716281667) {
            return;
        }
        throw C03182i.A01(A06(0, 34, 51), null);
    }

    public static boolean A0A(InterfaceC1850lN interfaceC1850lN) throws IOException {
        C4J c4j = new C4J(4);
        interfaceC1850lN.AG9(c4j.A0l(), 0, 4);
        return c4j.A0Q() == 1716281667;
    }

    public static boolean A0B(InterfaceC1850lN interfaceC1850lN, C0663Ge c0663Ge) throws IOException {
        interfaceC1850lN.AI1();
        C4I c4i = new C4I(new byte[4]);
        interfaceC1850lN.AG9(c4i.A00, 0, 4);
        boolean A0H = c4i.A0H();
        int A04 = c4i.A04(7);
        int A042 = c4i.A04(24) + 4;
        if (A04 == 0) {
            C0666Gh A05 = A05(interfaceC1850lN);
            String[] strArr = A01;
            if (strArr[1].charAt(0) != strArr[2].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "oF2KQg39ZEK5V6OHUZM6u4PkuH0D3J87";
            strArr2[2] = "opWNo3Pnwj2PHBTvqD8r5OWylRW508kK";
            c0663Ge.A00 = A05;
        } else {
            C0666Gh c0666Gh = c0663Ge.A00;
            if (c0666Gh != null) {
                if (A04 != 3) {
                    if (A04 == 4) {
                        c0663Ge.A00 = c0666Gh.A0B(A07(interfaceC1850lN, A042));
                    } else if (A04 == 6) {
                        C4J c4j = new C4J(A042);
                        interfaceC1850lN.readFully(c4j.A0l(), 0, A042);
                        c4j.A0g(4);
                        PictureFrame pictureFrame = PictureFrame.A00(c4j);
                        c0663Ge.A00 = c0666Gh.A0A(C1658i1.A03(pictureFrame));
                    } else {
                        interfaceC1850lN.AJJ(A042);
                    }
                } else {
                    c0663Ge.A00 = c0666Gh.A09(A04(interfaceC1850lN, A042));
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return A0H;
    }
}
