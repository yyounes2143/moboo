package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.checkerframework.dataflow.qual.SideEffectFree;
/* renamed from: com.facebook.ads.redexgen.X.0z  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C02850z extends C9Z implements Handler.Callback {
    public static byte[] A0H;
    public static String[] A0I = {"58lW15hp88fFpLaSxErp", "56QScXrV6I", "DwEmmtKo2ODeTiA17rxauXwet98Z4", "A4aLtxZMLOPLaVE6SeDzXnpOLTGefetw", "FhOKuZuvLBWd8lghoK1mwxVLtzQRZ", "h1d8vpIJ83Cnf8DVjx4Ui7av1xQxYsFL", "y1YT0hSXczs7bGZDGpuR", "alxZNjekiwxoo3ZSsAAxphzspQJfVEZr"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public C2061or A05;
    public InterfaceC1800kN A06;
    public C04497j A07;
    public AbstractC04487i A08;
    public AbstractC04487i A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final Handler A0D;
    public final C6N A0E;
    public final InterfaceC0594Dn A0F;
    public final InterfaceC0597Dq A0G;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0I;
            if (strArr[6].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[2] = "1YRuRVntTKbD5w1SSS8awuyRss3tM";
            strArr2[4] = "HmFGzdsys3t1iPkkAdwtO8Q44Z9aJ";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 122);
            i4++;
        }
    }

    public static void A09() {
        A0H = new byte[]{89, Byte.MAX_VALUE, 104, 126, 99, 126, 102, 111, 42, 110, 111, 105, 101, 110, 99, 100, 109, 42, 108, 107, 99, 102, 111, 110, 36, 42, 121, 126, 120, 111, 107, 103, 76, 101, 120, 103, 107, 126, 55, 57, 8, Ascii.NAK, Ascii.EM, 63, 8, 3, 9, 8, Ascii.US, 8, Ascii.US};
    }

    static {
        A09();
    }

    public C02850z(InterfaceC0597Dq interfaceC0597Dq, Looper looper, InterfaceC0594Dn interfaceC0594Dn) {
        super(3);
        this.A0G = (InterfaceC0597Dq) C3M.A01(interfaceC0597Dq);
        this.A0D = looper == null ? null : AbstractC03624a.A0c(looper, this);
        this.A0F = interfaceC0594Dn;
        this.A0E = new C6N();
        this.A02 = -9223372036854775807L;
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    private long A00() {
        if (this.A01 == -1) {
            return Long.MAX_VALUE;
        }
        C3M.A01(this.A09);
        if (this.A01 >= this.A09.A7w()) {
            return Long.MAX_VALUE;
        }
        return this.A09.A7v(this.A01);
    }

    @RequiresNonNull({"subtitle"})
    @SideEffectFree
    private long A01(long j) {
        int A8S = this.A09.A8S(j);
        if (A8S != 0) {
            int nextEventTimeIndex = this.A09.A7w();
            if (nextEventTimeIndex != 0) {
                String[] strArr = A0I;
                String str = strArr[6];
                String str2 = strArr[0];
                int length = str.length();
                int nextEventTimeIndex2 = str2.length();
                if (length != nextEventTimeIndex2) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0I;
                strArr2[2] = "dWbBH4lKinuUlTA8CpNFonpmnzuPl";
                strArr2[4] = "MDue3s6tkJ65MZJ0TxYFZvpfeIb1w";
                if (A8S == -1) {
                    AbstractC04487i abstractC04487i = this.A09;
                    if (A0I[1].length() != 10) {
                        int nextEventTimeIndex3 = this.A09.A7w();
                        return abstractC04487i.A7v(nextEventTimeIndex3 - 1);
                    }
                    A0I[3] = "us0wUp64B7rq5nQeuQUWAOSOIfPFOl8I";
                    int nextEventTimeIndex4 = this.A09.A7w();
                    return abstractC04487i.A7v(nextEventTimeIndex4 - 1);
                }
                int nextEventTimeIndex5 = A8S - 1;
                return this.A09.A7v(nextEventTimeIndex5);
            }
        }
        return ((AbstractC1982nX) this.A09).A01;
    }

    @SideEffectFree
    private long A02(long j) {
        boolean z = true;
        C3M.A08(j != -9223372036854775807L);
        if (this.A04 == -9223372036854775807L) {
            z = false;
        }
        C3M.A08(z);
        return j - this.A04;
    }

    private void A04() {
        A0B(new C2010o0(C1658i1.A01(), A02(this.A03)));
    }

    private void A05() {
        this.A0C = true;
        this.A06 = this.A0F.A5C((C2061or) C3M.A01(this.A05));
    }

    private void A06() {
        this.A07 = null;
        this.A01 = -1;
        if (this.A09 != null) {
            this.A09.A0B();
            this.A09 = null;
        }
        if (this.A08 != null) {
            this.A08.A0B();
            this.A08 = null;
        }
    }

    private void A07() {
        A06();
        ((InterfaceC1800kN) C3M.A01(this.A06)).AGr();
        this.A06 = null;
        this.A00 = 0;
    }

    private void A08() {
        A07();
        A05();
    }

    private void A0A(C2010o0 c2010o0) {
        this.A0G.ACw(c2010o0.A01);
        this.A0G.ACv(c2010o0);
    }

    private void A0B(C2010o0 c2010o0) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(0, c2010o0).sendToTarget();
        } else {
            A0A(c2010o0);
        }
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Method to propagate any SubtitleDecoder Error upwards")
    private void A0C(C0596Dp c0596Dp) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(1, c0596Dp).sendToTarget();
        }
    }

    private void A0D(C1799kM c1799kM) {
        AnonymousClass44.A08(A03(39, 12, 23), A03(0, 39, 112) + this.A05, c1799kM);
        A0C(new C0596Dp(this.A05, c1799kM));
        A04();
        A08();
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void A1Z() {
        this.A05 = null;
        this.A02 = -9223372036854775807L;
        A04();
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void A1a(long j, boolean z) {
        this.A03 = j;
        A04();
        this.A0A = false;
        this.A0B = false;
        this.A02 = -9223372036854775807L;
        if (this.A00 != 0) {
            A08();
            return;
        }
        A06();
        ((InterfaceC1800kN) C3M.A01(this.A06)).flush();
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void A1c(C2061or[] c2061orArr, long j, long j2) {
        this.A04 = j2;
        this.A05 = c2061orArr[0];
        if (this.A06 != null) {
            this.A00 = 1;
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    public final boolean AAG() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    public final boolean AAV() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e8, code lost:
        if (r7 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ea, code lost:
        r9.A09.A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
        r9.A01 = r6.A8S(r10);
        r9.A09 = r6;
        r9.A08 = null;
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0102, code lost:
        if (r7 != null) goto L48;
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AHn(long r10, long r12) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02850z.AHn(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.X.C7D
    public final int AJb(C2061or c2061or) {
        if (this.A0F.AJc(c2061or)) {
            return AnonymousClass76.A00(4);
        }
        if (AbstractC03172h.A0E(c2061or.A0W)) {
            return AnonymousClass76.A00(1);
        }
        return AnonymousClass76.A00(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM, com.facebook.ads.redexgen.X.C7D
    public final String getName() {
        return A03(39, 12, 23);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                A0A((C2010o0) message.obj);
                return true;
            case 1:
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
