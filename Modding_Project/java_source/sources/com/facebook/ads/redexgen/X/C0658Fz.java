package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Fz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0658Fz implements InterfaceC1103Xl {
    public static byte[] A01;
    public static String[] A02 = {"csDJTKMsYdQDTZ6oaAKl5T8I2UfElmlw", "ZPoBWwRbmlxJW4JBXeHiCznpgduRwX0R", "YnHNxwrcL4VP2rzDabEPBpSRhKQlF70O", "ZXjFBdL6N8QRVPocRq4T6yjW", "DvDV4BG5U2fSuPxyYCt3atNQBem4gb3r", "Lz5NxPzXDVZYAcKGP0xvxFjIAyYktO5Y", "USLnjf5V4FwfzNcoOXwUO87ZM5qcDzRn", "2jpbWPspWwKCP4YD7vZxOkEv1N6M1MwD"};
    public final /* synthetic */ C0657Fy A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        if (A02[0].charAt(1) == '2') {
            throw new RuntimeException();
        }
        A02[3] = "dLINtRlzHu";
        A01 = new byte[]{117, 109, 111, 118};
    }

    static {
        A01();
    }

    public C0658Fz(C0657Fy c0657Fy) {
        this.A00 = c0657Fy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1103Xl
    public final void ACC(AbstractC1104Xm abstractC1104Xm) {
        AbstractC0701Hr abstractC0701Hr;
        C1017Ua c1017Ua;
        AbstractC0701Hr abstractC0701Hr2;
        if (abstractC1104Xm.getToolbarActionMode() == 8) {
            abstractC0701Hr = this.A00.A04;
            if (abstractC0701Hr != null) {
                c1017Ua = this.A00.A0F;
                c1017Ua.A04(UZ.A0Y, null);
                abstractC0701Hr2 = this.A00.A04;
                abstractC0701Hr2.A1A(A00(0, 4, 95));
                this.A00.A0E();
                return;
            }
        }
        this.A00.A0C();
    }
}
