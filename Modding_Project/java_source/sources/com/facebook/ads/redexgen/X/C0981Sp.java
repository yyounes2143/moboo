package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Sp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0981Sp {
    public static SparseIntArray A00;
    public static Executor A01;
    public static boolean A02;
    public static boolean A03;
    public static byte[] A04;
    public static String[] A05 = {"7RJhgfAHrbCmdmvJO272XvW7u1fNB6AD", "SRAGcoTEjCaoOjv1TM3aABjegfXmDbQ2", "TJJTsgNcbEXqB1u8vE3MpXQkjlg70u98", "t1ySRzXu9XpLihhV0EPpMNwY8xH1TItL", "3rsqEGuQmw5YOXxTuvx2sfjKNK9b", "ZMUzhorUr0JjW6bP", "tg0Wl7kwCnCjIdXfhu7KKTsHjGWToUDr", "3JMITBtDsKuz"};
    public static final List<Integer> A06;
    public static final List<C0982Sq> A07;
    public static final AtomicBoolean A08;
    public static final AtomicInteger A09;
    public static final AtomicReference<InterfaceC0979Sn> A0A;
    public static final AtomicReference<InterfaceC0980So> A0B;
    public static final AtomicReference<Boolean> A0C;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 61);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A04 = new byte[]{117, 105, -86, -83, -83, -78, -67, -78, -72, -73, -86, -75, -110, -73, -81, -72, 105, -122, 105, -53, -65, Ascii.FF, 4, Ascii.DC2, Ascii.DC2, 0, 6, 4, -65, -36, -65, -43, -55, Ascii.FS, Ascii.RS, Ascii.VT, Ascii.GS, 34, Ascii.EM, Ascii.SO, -20, Ascii.CAN, Ascii.CR, Ascii.SO, -55, -26, -55, -46, -91, -61, -48, -119, -42, -126, -50, -47, -55, -126, -90, -57, -60, -41, -55, -126, -89, -40, -57, -48, -42, -112, -126, -91, -47, -48, -42, -57, -38, -42, -126, -53, -43, -126, -48, -41, -50, -50, -112, -74, -30, -24, -31, -25, -40, -27, -83, -109, -46, -13, -16, 3, -11, -82, -15, 0, -17, 1, -10, -82, -16, -13, -15, -17, 3, 1, -13, -82, -3, -12, -82, -13, 4, -13, -4, 2, -82, 5, -9, 2, -10, -82, 1, 3, -16, 2, 7, -2, -13, -82, -53, -82, -56, -5, -26, -24, -24, -25, -24, -25, -93, -20, -15, -80, -16, -24, -16, -14, -11, -4, -93, -17, -14, -22, -93, -17, -20, -16, -20, -9, -92, -93, -49, -28, -10, -9, -93, -24, -7, -24, -15, -9, -67, -93, -12, 39, Ascii.DC2, Ascii.DC4, Ascii.US, 35, Ascii.CAN, Ascii.RS, Ascii.GS, -49, -13, Ascii.DC4, 17, 36, Ascii.SYN, -49, -12, 37, Ascii.DC4, Ascii.GS, 35, -49, 38, Ascii.CAN, 35, Ascii.ETB, -49, 34, 36, 17, 35, 40, Ascii.US, Ascii.DC4, -49, -20, -49, -123, -72, -93, -91, -80, -76, -87, -81, -82, 96, -92, -75, -78, -87, -82, -89, 96, -84, -81, -89, -89, -87, -82, -89, 96, -92, -91, -94, -75, -89, 96, -91, -74, -91, -82, -76, 110, -55, -4, -25, -23, -12, -8, -19, -13, -14, -92, -9, -20, -13, -7, -16, -24, -92, -14, -13, -8, -92, -20, -27, -12, -12, -23, -14, -92, -20, -23, -10, -23, -78, -122, -126, -127, -75, -92, -87, -91, -82, -93, -91, -114, -91, -76, -73, -81, -78, -85, -20, 17, 9, Ascii.DC2, -61, -25, 8, 5, Ascii.CAN, 10, -61, -24, Ascii.EM, 8, 17, Ascii.ETB, -61, Ascii.SUB, Ascii.FF, Ascii.ETB, Ascii.VT, -61, Ascii.SYN, Ascii.CAN, 5, Ascii.ETB, Ascii.FS, 19, 8, -61, -32, -61, -99, -72, -72, 105, -74, -86, -73, -62, 105, -82, -65, -82, -73, -67, -68, 105, -72, -81, 105, -68, -66, -85, -67, -62, -71, -82, 105, -84, -72, -83, -82, -125, 105, -8, -6, -11, -6, -9, 10, -9, -11, 2, 5, -3, -3, -1, 4, -3, -90, -77, -72, -93, -88, -87, -72, -87, -89, -72, -83, -77, -78, -93, -69, -77, -93, -73, -83, -85, -78, -91, -80, -93, -88, -91, -72, -91, -93, -80, -77, -85, -85, -83, -78, -85, -6, -8, -6, -1, -4, -60, -59, -65, -52, -49, -57, -57, -55, -50, -57, -49, -43, -54, -36, -47, -31, -16, -23, -23, -32, -25, Ascii.VT, Ascii.DC2, 5, 1, Ascii.CAN, 3, Ascii.SO, Ascii.VT, 6, 3, Ascii.SYN, Ascii.VT, 17, Ascii.DLE, -80, -89, -74, -71, -79, -76, -83};
    }

    static {
        A04();
        A00 = new SparseIntArray();
        A03 = false;
        A0B = new AtomicReference<>();
        A0A = new AtomicReference<>();
        A01 = Executors.newSingleThreadExecutor();
        A06 = Arrays.asList(10, 50, 100, 1000);
        A07 = Collections.synchronizedList(new ArrayList());
        A09 = new AtomicInteger();
        A08 = new AtomicBoolean();
        A0C = new AtomicReference<>(false);
        A02 = false;
    }

    public static int A00(String str, int i, SQ sq) {
        if ((A01(462, 7, 5).equals(str) && AbstractC0987Sv.A20 == i) || A01(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 5, 90).equals(str) || A01(442, 6, 62).equals(str)) {
            return 200;
        }
        if (A01(386, 36, 7).equals(str)) {
            return 50;
        }
        if (A01(371, 15, 89).equals(str)) {
            return U9.A05(sq);
        }
        return -1;
    }

    public static /* synthetic */ List A02() {
        List<C0982Sq> list = A07;
        if (A05[0].charAt(12) != 'b') {
            String[] strArr = A05;
            strArr[6] = "zk7JrRKdkqRVNKieaZlWPGFPyzHfiD6w";
            strArr[3] = "fyoGHU5IjzPGh6SPmUkkru2DTQYQg6uC";
            return list;
        }
        throw new RuntimeException();
    }

    public static void A05(SQ sq, int i, int i2) {
        sq.A08().AAy(A01(427, 10, 35), AbstractC0987Sv.A2Z, new C0988Sw(A01(338, 33, 12) + i, A01(87, 9, 54) + i2));
    }

    @Deprecated
    public static void A06(SQ sq, String str, int i, C0988Sw c0988Sw) {
        if (sq == null) {
            A0F(new RuntimeException(A01(48, 39, 37)));
            return;
        }
        SP.A01(sq.A02());
        if (A02 && c0988Sw.A01() == 0) {
            A0D(new RuntimeException(A01(96, 44, 81) + str + A01(31, 16, 108) + i, c0988Sw));
        }
        try {
            if (A0J(sq, str, i, Math.random(), c0988Sw)) {
                A09(sq, str, i, c0988Sw);
            }
        } catch (Throwable th) {
            if (A05[7].length() == 7) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[6] = "Wr4fCxMFDWkIVvnx3dc83TKhQDpVGTp5";
            strArr[3] = "OVQSbEPH5m9BJKnAfFJqQw5cDphpT4wi";
            A0F(th);
        }
    }

    @Deprecated
    public static void A07(SQ sq, String str, int i, C0988Sw c0988Sw) {
        try {
            c0988Sw.A05(2);
            c0988Sw.A0A(false);
            c0988Sw.A06(1);
            if (U9.A0Q(sq)) {
                c0988Sw.A08(true);
            } else {
                c0988Sw.A08(false);
            }
            A06(sq, str, i, c0988Sw);
        } catch (Throwable t) {
            A0F(t);
        }
    }

    @Deprecated
    public static void A08(SQ sq, String str, int i, C0988Sw c0988Sw) {
        try {
            c0988Sw.A05(2);
            c0988Sw.A08(false);
            A06(sq, str, i, c0988Sw);
        } catch (Throwable th) {
            String[] strArr = A05;
            if (strArr[2].charAt(18) != strArr[1].charAt(18)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[2] = "lrlTLjNTeannl0YPXC3Gfh7JwXVpOQq4";
            strArr2[1] = "kBSf974kPIRKP3U3j132aDHcl1k5alA0";
            A0F(th);
        }
    }

    public static void A09(SQ sq, String str, int i, C0988Sw c0988Sw) {
        synchronized (C0981Sp.class) {
            if (!A03) {
                int A012 = U9.A01(sq);
                int threshold = A09.getAndIncrement();
                if (threshold < A012 - 1) {
                    A07.add(new C0982Sq(str, i, c0988Sw));
                } else if (A09.get() == A012) {
                    A07.add(new C0982Sq(A01(427, 10, 35), AbstractC0987Sv.A2W, new C0988Sw(A01(TPOptionalID.OPTION_ID_BEFORE_OBJECT_JITTER_BUFFER_CONFIG, 42, 70) + str + A01(47, 1, 91) + i)));
                }
            } else {
                A0A(sq, str, i, c0988Sw, true);
            }
        }
    }

    public static void A0A(SQ sq, String str, int i, C0988Sw c0988Sw, boolean z) {
        InterfaceC0980So interfaceC0980So = A0B.get();
        boolean z2 = interfaceC0980So != null && interfaceC0980So.AAZ();
        boolean z3 = A08.get();
        String[] strArr = A05;
        if (strArr[6].charAt(6) == strArr[3].charAt(6)) {
            throw new RuntimeException();
        }
        A05[0] = "wcUF0zMFhzDc2LBIPX26ddygqjW04ktX";
        if (z3 || z2) {
            int A012 = c0988Sw.A01();
            String A013 = A01(289, 17, 3);
            String A014 = A01(31, 16, 108);
            if (A012 == 0) {
                Log.e(A013, A01(182, 37, 114) + str + A014 + i, c0988Sw);
            } else {
                Log.i(A013, A01(306, 32, 102) + str + A014 + i + A01(19, 12, 98) + c0988Sw.getMessage() + A01(0, 19, 12) + c0988Sw.A03());
            }
        }
        C1195aP c1195aP = new C1195aP(sq, str, i, c0988Sw, interfaceC0980So);
        if (z) {
            A01.execute(c1195aP);
        } else {
            c1195aP.run();
        }
    }

    public static void A0C(C1350cu c1350cu, InterfaceC0980So interfaceC0980So, InterfaceC0979Sn interfaceC0979Sn, boolean z) {
        A0A.set(interfaceC0979Sn);
        A0B.set(interfaceC0980So);
        A08.set(z);
        synchronized (C0981Sp.class) {
            if (!A03) {
                A03 = true;
                A01.execute(new C1250bI(c1350cu));
            }
        }
    }

    public static void A0D(RuntimeException runtimeException) {
        if (A02) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0978Sm(runtimeException));
        }
    }

    @Deprecated
    public static void A0E(Throwable th) {
        if (A02) {
            A0D(new RuntimeException(A01(256, 33, 71), th));
        }
    }

    public static void A0F(Throwable th) {
        Log.e(A01(289, 17, 3), A01(219, 37, 3), th);
        if (A02) {
            A0D(new RuntimeException(th));
        }
    }

    public static boolean A0H(SQ sq) {
        Boolean shouldSkipFunnelEventsForSession = A0C.get();
        return (shouldSkipFunnelEventsForSession == null || !shouldSkipFunnelEventsForSession.booleanValue()) && U9.A0A(sq) != 0;
    }

    public static boolean A0I(SQ sq) {
        Boolean shouldSkipFunnelEventsForSession = A0C.get();
        if (shouldSkipFunnelEventsForSession != null && shouldSkipFunnelEventsForSession.booleanValue()) {
            return false;
        }
        double funnelEventLogProbability = 1.0d / U9.A0A(sq);
        return sq.A09().A00() <= funnelEventLogProbability;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017b, code lost:
        com.facebook.ads.redexgen.X.C0981Sp.A0C.set(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0185, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0186, code lost:
        if (r0 <= 0) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0188, code lost:
        r7 = 1.0d / r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x018a, code lost:
        if (r11 == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x018c, code lost:
        r7 = r7 * r2;
        r2 = com.facebook.ads.redexgen.X.C0981Sp.A05;
        r1 = r2[6];
        r2 = r2[3];
        r1 = r1.charAt(6);
        r0 = r2.charAt(6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x019e, code lost:
        if (r1 == r0) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a0, code lost:
        r2 = com.facebook.ads.redexgen.X.C0981Sp.A05;
        r2[5] = "ov2u4VJ7e4Jf0Cpe";
        r2[4] = "3S8vDNMGZoIrI2ECoHj3stfewtnb";
        r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01ae, code lost:
        if (r0 > 0) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01b0, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01b2, code lost:
        r2 = com.facebook.ads.redexgen.X.C0981Sp.A05;
        r2[2] = "J7AbISTAh4tNpjUdhq3A9LORixiN2LjD";
        r2[1] = "NK4gpNISnoGezA2FzC3Uh9mHyAzfRHIK";
        r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c0, code lost:
        if (r0 > 0) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01c3, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c5, code lost:
        r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01c7, code lost:
        if (r0 > 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01c9, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01cb, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01cf, code lost:
        r7 = 1.0d - r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01da, code lost:
        if (com.facebook.ads.redexgen.X.C0981Sp.A05[7].length() == 7) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01dc, code lost:
        com.facebook.ads.redexgen.X.C0981Sp.A05[0] = "IU4RZwbJxJdQMYPPezGzztuufFdsMCjm";
        r0 = (r16 > r7 ? 1 : (r16 == r7 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01e5, code lost:
        if (r0 < 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01e7, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01e9, code lost:
        r0 = (r16 > r7 ? 1 : (r16 == r7 ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01eb, code lost:
        if (r0 < 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0152, code lost:
        if (r6 == 2) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0161, code lost:
        if (r6 == 2) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0163, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0164, code lost:
        r0 = com.facebook.ads.redexgen.X.C0981Sp.A0C.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016c, code lost:
        if (r0 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0172, code lost:
        if (r0.booleanValue() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0174, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0175, code lost:
        r0 = com.facebook.ads.redexgen.X.U9.A0A(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0179, code lost:
        if (r0 != 0) goto L104;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0J(com.facebook.ads.redexgen.X.SQ r13, java.lang.String r14, int r15, double r16, com.facebook.ads.redexgen.X.C0988Sw r18) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0981Sp.A0J(com.facebook.ads.redexgen.X.SQ, java.lang.String, int, double, com.facebook.ads.redexgen.X.Sw):boolean");
    }

    public static boolean A0K(SQ sq, String str, int i, C0988Sw c0988Sw) {
        if (U9.A0P(sq)) {
            int customLimit = A00.get(i);
            int eventsLimit = U9.A00(sq);
            if (c0988Sw.A02() != -1) {
                eventsLimit = c0988Sw.A02();
            } else {
                int currentCounter = A00(str, i, sq);
                if (eventsLimit < currentCounter) {
                    eventsLimit = currentCounter;
                }
            }
            if (customLimit >= eventsLimit) {
                if (A06.contains(Integer.valueOf(customLimit)) && c0988Sw.A0D()) {
                    A05(sq, i, customLimit);
                }
                A00.put(i, customLimit + 1);
                return true;
            }
            A00.put(i, customLimit + 1);
            return false;
        }
        return true;
    }
}
