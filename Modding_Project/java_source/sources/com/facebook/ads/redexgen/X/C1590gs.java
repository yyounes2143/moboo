package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import kotlin.io.encoding.Base64;
/* renamed from: com.facebook.ads.redexgen.X.gs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1590gs implements InterfaceC0851Nm {
    public static byte[] A06;
    public static String[] A07 = {"41kFMkgYcMqjBdEAHWyZzQ9Q1YQDMkZo", "a1qrqbdzoLKte5dp2TdqsHV2Btmo8HIO", "VlRnhGghZyM7Xz", "WVmrs7jRPAo6ieNv", "abQhu9SgesOIRxLkCU6L7yAdrfeNFYXV", "iVqBhi5IkesALAcr", "e6wMTa30i0R6i9", "GTVyj1NjpD4uWxM1mBTnBnh1LH0X6W6g"};
    public boolean A00;
    public final AbstractC1610hD A01;
    public final InterfaceC0839Na A02;
    public final C1593gv A03;
    public final HandlerC0846Nh A04;
    public final C1376dL A05;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{110, 75, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 77, 69, 74, 76, 91, Ascii.SI, 70, 92, Ascii.SI, 65, 90, 67, 67, 9, Ascii.RS, 5, Ascii.SI, 7, Ascii.SO, Ascii.DC4, Ascii.SO, 19, Ascii.US, Ascii.EM, 10, Ascii.CAN, Ascii.DC4, 0, Ascii.SO, Ascii.DC2, 47, 43, 40, Ascii.FS, Ascii.CR, 0, Ascii.FF, 7, 10, Ascii.FF, 39, Ascii.FF, Ascii.GS, Ascii.RS, 6, Ascii.ESC, 2, 87, 80, 74, 65, 91, 76, 76, 81, 76, 65, 93, 81, 90, 91, 65, 85, 91, 71, Ascii.SO, Ascii.CR, Ascii.FF, 5, Ascii.GS, Ascii.VT, Ascii.FF, Ascii.DC4, 3, Ascii.SO, Ascii.VT, 6, 3, Ascii.SYN, Ascii.VT, Ascii.CR, Ascii.FF, Ascii.GS, Ascii.SYN, Ascii.VT, Ascii.SI, 7, Ascii.GS, 9, 7, Ascii.ESC, 39, Ascii.SI, Ascii.EM, Ascii.EM, Ascii.VT, Ascii.CR, Ascii.SI, 80, 74, 118, 82, 72, 72, 82, 85, 92, Ascii.ESC, 89, 78, 85, 95, 87, 94, Ascii.ESC, 93, 84, 73, Ascii.ESC, 86, 94, 72, 72, 90, 92, 94, Ascii.NAK, 35, 36, 34, 47, 53, 34, 34, 63, 34, 47, Base64.padSymbol, 53, 35, 35, 49, 55, 53, 47, 59, 53, 41, 72, 89, SignedBytes.MAX_POWER_OF_TWO};
    }

    static {
        A01();
    }

    public C1590gs(C1376dL c1376dL, C1593gv c1593gv, InterfaceC0839Na interfaceC0839Na, AbstractC1610hD abstractC1610hD, HandlerC0846Nh handlerC0846Nh) {
        this.A05 = c1376dL;
        this.A03 = c1593gv;
        this.A02 = interfaceC0839Na;
        this.A01 = abstractC1610hD;
        this.A04 = handlerC0846Nh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0851Nm
    public final Bundle A5J(String str) {
        return AbstractC0858Nt.A02(str, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0851Nm
    public final void A5n() {
        this.A04.A0F(1012, null);
        this.A04.A0C();
        this.A03.A0D(null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0851Nm
    public final int A8H() {
        return 1010;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014d  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0851Nm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A9b(android.os.Message r10) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1590gs.A9b(android.os.Message):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0851Nm
    public final void AJ3(boolean z) {
        this.A00 = z;
    }
}
