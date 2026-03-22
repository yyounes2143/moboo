package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.dn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1404dn extends AbstractRunnableC1061Vt {
    public static byte[] A02;
    public final /* synthetic */ C1403dm A00;
    public final /* synthetic */ AtomicBoolean A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{Ascii.SO, 44, 46, 51, 48, -21, 49, 44, 52, 55, -7, -110, -80, -78, -73, -76, 111, -62, -60, -78, -78, -76, -62, -62, 125};
    }

    public C1404dn(C1403dm c1403dm, AtomicBoolean atomicBoolean) {
        this.A00 = c1403dm;
        this.A01 = atomicBoolean;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        SQ sq;
        long j;
        SQ sq2;
        long j2;
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(UZ.A0H);
                sq2 = this.A00.A02.A04;
                S8 s8 = this.A00.A01;
                int i = SI.A00;
                j2 = this.A00.A02.A00;
                SI.A02(sq2, s8, i, A00(11, 14, 1), j2);
                this.A00.A02.A0U();
                this.A00.A00.ACq();
                return;
            }
            this.A00.A02.A0I(UZ.A0G);
            sq = this.A00.A02.A04;
            S8 s82 = this.A00.A01;
            int i2 = SI.A04;
            j = this.A00.A02.A00;
            SI.A02(sq, s82, i2, A00(0, 11, 125), j);
            this.A00.A02.A0V();
            this.A00.A00.ACh();
        }
    }
}
