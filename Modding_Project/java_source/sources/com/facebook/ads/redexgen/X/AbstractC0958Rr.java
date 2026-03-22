package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Rr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0958Rr {
    public static byte[] A00;
    public static String[] A01 = {"T8", "", "As3hIStO2xNa0GSSHrkEVjQu", "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC", "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN", "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb", "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC", "txdj"};
    public static final AtomicReference<C0956Rp> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[7].length() != 4) {
                throw new RuntimeException();
            }
            A01[6] = "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 86);
            i4++;
        }
    }

    public static void A05() {
        A00 = new byte[]{19, Ascii.ESC, Ascii.SYN, 17, 33, 40, Ascii.ETB, 36, 36, Ascii.ESC, Ascii.SYN, Ascii.ETB, 17, Ascii.SI, Ascii.CAN, Ascii.SI, Ascii.FS, 19, Ascii.CR, 43, 38, 40, 35, 33, 49, 56, 39, 52, 52, 43, 38, 39};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 12));
    }

    public static C0956Rp A00() {
        C0956Rp advertisingIdInfo = A02.get();
        if (advertisingIdInfo == null) {
            return C0956Rp.A00();
        }
        return advertisingIdInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C0956Rp A01(com.facebook.ads.redexgen.X.SQ r5, com.facebook.ads.redexgen.X.C0956Rp r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L29
        Lc:
            com.facebook.ads.redexgen.X.Rp r0 = com.facebook.ads.redexgen.X.AbstractC0963Rx.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.Su r5 = r5.A08()
            int r4 = com.facebook.ads.redexgen.X.AbstractC0987Sv.A1Q
            com.facebook.ads.redexgen.X.Sw r3 = new com.facebook.ads.redexgen.X.Sw
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 84
            java.lang.String r0 = A04(r2, r1, r0)
            r5.AAy(r0, r4, r3)
        L29:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC0958Rr.A01(com.facebook.ads.redexgen.X.SQ, com.facebook.ads.redexgen.X.Rp):com.facebook.ads.redexgen.X.Rp");
    }

    public static C0956Rp A02(SQ sq, C0956Rp c0956Rp, C0957Rq c0957Rq) {
        C0959Rs c0959Rs = null;
        try {
            if (U6.A06(sq) && (c0956Rp == null || TextUtils.isEmpty(c0956Rp.A03()))) {
                c0959Rs = AbstractC0960Rt.A00(sq.getContentResolver());
            }
        } catch (Throwable th) {
            sq.A08().AAy(A04(12, 7, 84), AbstractC0987Sv.A1S, new C0988Sw(th));
        }
        if (c0959Rs != null && c0959Rs.A01 != null) {
            A03.set(c0959Rs.A01);
            c0957Rq.A05(c0959Rs.A01);
        }
        if (c0956Rp == null && c0959Rs != null && !TextUtils.isEmpty(c0959Rs.A00)) {
            return new C0956Rp(c0959Rs.A00, c0959Rs.A02, EnumC0955Ro.A04);
        }
        return c0956Rp;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 12);
        }
        return attributionId;
    }

    public static void A06(C0957Rq c0957Rq) {
        A02.set(c0957Rq.A02());
        A03.set(c0957Rq.A03());
    }

    public static void A07(SQ sq) {
        long j;
        C0956Rp advertisingIdInfo;
        try {
            C0957Rq c0957Rq = new C0957Rq(sq);
            A06(c0957Rq);
            if (A08()) {
                return;
            }
            C0956Rp advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                j = advertisingIdInfo2.A01();
            } else {
                j = -1;
            }
            if (j > 0 && System.currentTimeMillis() - j < U6.A00(sq)) {
                return;
            }
            if (U6.A07(sq)) {
                advertisingIdInfo = A01(sq, A02(sq, null, c0957Rq));
            } else {
                advertisingIdInfo = A02(sq, A01(sq, null), c0957Rq);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c0957Rq.A04(advertisingIdInfo);
            }
        } catch (Throwable t) {
            sq.A08().AAy(A04(12, 7, 84), AbstractC0987Sv.A1R, new C0988Sw(t));
        }
    }

    public static boolean A08() {
        boolean z = false;
        boolean updated = WS.A04();
        if (updated) {
            String A04 = A04(0, 12, 92);
            boolean updated2 = WS.A05(A04);
            if (updated2) {
                A03.set(WS.A01(A04));
                z = true;
            }
        }
        boolean A042 = WS.A04();
        if (A01[7].length() != 4) {
            throw new RuntimeException();
        }
        A01[6] = "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm";
        if (A042) {
            String A043 = A04(19, 13, 108);
            boolean updated3 = WS.A05(A043);
            if (updated3) {
                String A012 = WS.A01(A043);
                AtomicReference<C0956Rp> atomicReference = A02;
                if (A012 == null) {
                    if (A01[7].length() != 4) {
                        A01[7] = "Ywke";
                        A012 = A04(0, 0, 2);
                    } else {
                        A01[5] = "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB";
                        A012 = A04(0, 0, 12);
                    }
                }
                atomicReference.set(new C0956Rp(A012, false, EnumC0955Ro.A03));
                return true;
            }
            return z;
        }
        return z;
    }
}
