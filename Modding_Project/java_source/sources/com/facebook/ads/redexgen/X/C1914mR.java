package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.mR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1914mR implements InterfaceC0556Cb {
    public static byte[] A03;
    public static String[] A04 = {"3Cx8VuBaAtU", "mtIvitx", "ijtxGWvqwx8wBPOmSGXshyr4piVUOT73", "1A2eWfmauMvQ3z4CiBElgktZxGJ5t0Vj", "NuAYfoZUoES6MxZb2vdyJB2K3PVOnnYD", "gczB0K5G5", "TBGYu08V4AAoblIa0rbrS9oc16PYokVw", "JGtQJ9cae1Y"};
    public GX A00;
    public InterfaceC1850lN A01;
    public final InterfaceC0660Gb A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 78);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{80, 89, Ascii.SUB, Ascii.SYN, Ascii.FF, Ascii.NAK, Ascii.GS, 89, Ascii.VT, Ascii.FS, Ascii.CAN, Ascii.GS, 89, Ascii.CR, 17, Ascii.FS, 89, 10, Ascii.CR, Ascii.VT, Ascii.FS, Ascii.CAN, Ascii.DC4, 87, 2, 35, 34, 41, 108, 35, 42, 108, 56, 36, 41, 108, 45, 58, 45, 37, 32, 45, 46, 32, 41, 108, 41, 52, 56, 62, 45, 47, 56, 35, 62, 63, 108, 100};
    }

    static {
        A01();
    }

    public C1914mR(InterfaceC0660Gb interfaceC0660Gb) {
        this.A02 = interfaceC0660Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    @MetaExoPlayerCustomization("No op, we don't include mp3 extractor due to apk size")
    public final void A5q() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    public final long A7S() {
        if (this.A01 != null) {
            return this.A01.A8f();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        if (r9.A8f() != r19) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
        if (r9.A8f() != r19) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
        r0 = false;
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AA3(@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(" To be replaced with DataReader after upstream is updated") com.facebook.ads.redexgen.X.InterfaceC1996nl r16, android.net.Uri r17, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r18, long r19, long r21, com.facebook.ads.redexgen.X.GY r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1914mR.AA3(com.facebook.ads.redexgen.X.nl, android.net.Uri, java.util.Map, long, long, com.facebook.ads.redexgen.X.GY):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    public final int AGc(C0678Gt c0678Gt) throws IOException {
        return ((GX) C3M.A01(this.A00)).AGb((InterfaceC1850lN) C3M.A01(this.A01), c0678Gt);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    public final void AGr() {
        if (this.A00 != null) {
            this.A00.AGr();
            this.A00 = null;
        }
        this.A01 = null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0556Cb
    public final void AIM(long j, long j2) {
        ((GX) C3M.A01(this.A00)).AIM(j, j2);
    }
}
