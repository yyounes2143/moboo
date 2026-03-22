package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
/* renamed from: com.facebook.ads.redexgen.X.li  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1870li extends EK {
    public static String[] A01 = {"LN1kZ6lR3vZBqqrviA4uTSOzBGS9o2bO", "mUQPITaRnEXTrG2Wr7xIAnPzPHhU6DS3", "avW0I4bwWNzzQZleeOInYpLZY9PTle7", "LGUT8ZIo3joumZn9NybI7JCchk0DSCTG", "S4WFRdtC0lcE2afHWARgiwpUU5tNPmtd", "SbOYlLigHNVPkFHrMvYK7wwtNeL", "2fmBOvz22OTh8nUuYBKjoVDFU", "lR30iWlIbuozJgbVtB9O9DOed4NJenPq"};
    public EC A00;

    public abstract Pair<C7G[], InterfaceC1871lj[]> A0d(EC ec, int[][][] iArr, int[] iArr2, C1908mL c1908mL, Timeline timeline) throws C9Y;

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /* JADX WARN: Incorrect condition in loop: B:7:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A0Y(com.facebook.ads.redexgen.X.C7D[] r8, com.facebook.ads.redexgen.X.C2027oH r9, int[] r10, boolean r11) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            int r6 = r8.length
            r5 = 0
            r7 = 1
            r4 = 0
        L4:
            int r0 = r8.length
            if (r4 >= r0) goto L39
            r3 = r8[r4]
            r2 = 0
            r1 = 0
        Lb:
            int r0 = r9.A01
            if (r1 >= r0) goto L22
            com.facebook.ads.redexgen.X.or r0 = r9.A08(r1)
            int r0 = r3.AJb(r0)
            int r0 = com.facebook.ads.redexgen.X.AnonymousClass76.A03(r0)
            int r2 = java.lang.Math.max(r2, r0)
            int r1 = r1 + 1
            goto Lb
        L22:
            r0 = r10[r4]
            if (r0 != 0) goto L37
            r0 = 1
        L27:
            if (r2 > r5) goto L31
            if (r2 != r5) goto L34
            if (r11 == 0) goto L34
            if (r7 != 0) goto L34
            if (r0 == 0) goto L34
        L31:
            r6 = r4
            r5 = r2
            r7 = r0
        L34:
            int r4 = r4 + 1
            goto L4
        L37:
            r0 = 0
            goto L27
        L39:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1870li.A0Y(com.facebook.ads.redexgen.X.7D[], com.facebook.ads.redexgen.X.oH, int[], boolean):int");
    }

    public static int[] A0Z(C7D c7d, C2027oH c2027oH) throws C9Y {
        int[] iArr = new int[c2027oH.A01];
        for (int i = 0; i < c2027oH.A01; i++) {
            iArr[i] = c7d.AJb(c2027oH.A08(i));
        }
        return iArr;
    }

    public static int[] A0a(C7D[] c7dArr) throws C9Y {
        int[] iArr = new int[c7dArr.length];
        for (int i = 0; i < iArr.length; i++) {
            int AJd = c7dArr[i].AJd();
            String[] strArr = A01;
            String str = strArr[4];
            String str2 = strArr[1];
            int i2 = str.charAt(23);
            if (i2 == str2.charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "1ViYEGUZxGRCVXLKV1NACncyCaxKGcLE";
            strArr2[1] = "WZkUCc71MckdncxFpAml539B1oxWjr0A";
            iArr[i] = AJd;
        }
        return iArr;
    }

    @Override // com.facebook.ads.redexgen.X.EK
    public final EL A0b(C7D[] c7dArr, C1898mA c1898mA, C1908mL c1908mL, Timeline timeline) throws C9Y {
        int[] rendererTrackGroupCounts;
        int[] iArr = new int[c7dArr.length + 1];
        C2027oH[][] c2027oHArr = new C2027oH[c7dArr.length + 1];
        int[][][] iArr2 = new int[c7dArr.length + 1][];
        for (int i = 0; i < c2027oHArr.length; i++) {
            c2027oHArr[i] = new C2027oH[c1898mA.A01];
            iArr2[i] = new int[c1898mA.A01];
        }
        int[] A0a = A0a(c7dArr);
        for (int i2 = 0; i2 < c1898mA.A01; i2++) {
            C2027oH A05 = c1898mA.A05(i2);
            int groupIndex = A0Y(c7dArr, A05, iArr, A05.A02 == 5);
            if (groupIndex == c7dArr.length) {
                rendererTrackGroupCounts = new int[A05.A01];
            } else {
                rendererTrackGroupCounts = A0Z(c7dArr[groupIndex], A05);
            }
            int i3 = iArr[groupIndex];
            c2027oHArr[groupIndex][i3] = A05;
            iArr2[groupIndex][i3] = rendererTrackGroupCounts;
            iArr[groupIndex] = iArr[groupIndex] + 1;
        }
        C1898mA[] c1898mAArr = new C1898mA[c7dArr.length];
        String[] strArr = new String[c7dArr.length];
        int[] iArr3 = new int[c7dArr.length];
        int i4 = 0;
        while (true) {
            int length = c7dArr.length;
            String[] strArr2 = A01;
            if (strArr2[4].charAt(23) == strArr2[1].charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A01;
            strArr3[4] = "hppY0P6sht5kF7is4RCKyMBKsFUVAoRB";
            strArr3[1] = "XeHPWbHBeoBDFVDQc4DbmKa9NYqMdrJh";
            if (i4 < length) {
                int i5 = iArr[i4];
                c1898mAArr[i4] = new C1898mA((C2027oH[]) AbstractC03624a.A1I(c2027oHArr[i4], i5));
                iArr2[i4] = (int[][]) AbstractC03624a.A1I(iArr2[i4], i5);
                strArr[i4] = c7dArr[i4].getName();
                iArr3[i4] = c7dArr[i4].A9F();
                i4++;
            } else {
                EC ec = new EC(strArr, iArr3, c1898mAArr, A0a, iArr2, new C1898mA((C2027oH[]) AbstractC03624a.A1I(c2027oHArr[c7dArr.length], iArr[c7dArr.length])));
                Pair<C7G[], InterfaceC1871lj[]> A0d = A0d(ec, iArr2, A0a, c1908mL, timeline);
                return new EL((C7G[]) A0d.first, (InterfaceC1871lj[]) A0d.second, EH.A00(ec, (EE[]) A0d.second), ec);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.EK
    public final void A0c(Object obj) {
        this.A00 = (EC) obj;
    }
}
