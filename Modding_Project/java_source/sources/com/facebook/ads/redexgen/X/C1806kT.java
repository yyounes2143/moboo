package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* renamed from: com.facebook.ads.redexgen.X.kT  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1806kT extends AbstractC0735Iz {
    public static String[] A02 = {"WZkrugZ9k", "x4SWtznAL", "HpTT9hwXiF", "GejxPsVIqdMqn4uNSueU2CvK5QdcE", "kY6PJZpIMUpeuimCFjYxSQzMMPc04", "AyPx1MENxNPCbM7HZGi1kOnAmMtkHxm9", "mMmHuZ9NaaUgibHMJoRcA4q0AdWca5ys", "Hii3DdXYVzyt8ReiNrO7wglp0i"};
    public C0666Gh A00;
    public C1807kU A01;

    private int A00(C4J c4j) {
        int i = (c4j.A0l()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c4j.A0g(4);
            String[] strArr = A02;
            String str = strArr[6];
            String str2 = strArr[5];
            int charAt = str.charAt(19);
            int blockSizeKey = str2.charAt(19);
            if (charAt == blockSizeKey) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = "Cisj8wK8S";
            strArr2[0] = "koTyuZ08X";
            c4j.A0S();
        }
        int result = AbstractC0662Gd.A00(c4j, i);
        c4j.A0f(0);
        return result;
    }

    public static boolean A01(C4J c4j) {
        return c4j.A07() >= 5 && c4j.A0I() == 127 && c4j.A0Q() == 1179402563;
    }

    public static boolean A02(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0735Iz
    public final long A09(C4J c4j) {
        if (!A02(c4j.A0l())) {
            return -1L;
        }
        return A00(c4j);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0735Iz
    public final void A0B(boolean z) {
        super.A0B(z);
        if (z) {
            this.A00 = null;
            this.A01 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0735Iz
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean A0C(C4J c4j, long j, C0734Iy c0734Iy) {
        byte[] A0l = c4j.A0l();
        C0666Gh c0666Gh = this.A00;
        if (c0666Gh == null) {
            C0666Gh c0666Gh2 = new C0666Gh(A0l, 17);
            this.A00 = c0666Gh2;
            c0734Iy.A00 = c0666Gh2.A08(Arrays.copyOfRange(A0l, 9, c4j.A0A()), null);
            return true;
        } else if ((A0l[0] & Byte.MAX_VALUE) == 3) {
            C0665Gg A03 = AbstractC0664Gf.A03(c4j);
            C0666Gh streamMetadata = c0666Gh.A09(A03);
            this.A00 = streamMetadata;
            this.A01 = new C1807kU(streamMetadata, A03);
            return true;
        } else if (!A02(A0l)) {
            return true;
        } else {
            if (this.A01 != null) {
                this.A01.A00(j);
                c0734Iy.A01 = this.A01;
            }
            C2061or c2061or = c0734Iy.A00;
            String[] strArr = A02;
            if (strArr[4].length() != strArr[7].length()) {
                String[] strArr2 = A02;
                strArr2[3] = "zwTfeKiQLRobCpiZaAgtU0oyP8s29";
                strArr2[2] = "wrCWS6iAkk";
                C3M.A01(c2061or);
                return false;
            }
            throw new RuntimeException();
        }
    }
}
