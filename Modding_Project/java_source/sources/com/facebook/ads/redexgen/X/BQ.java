package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.google.common.base.Ascii;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
/* loaded from: assets/audience_network.dex */
public final class BQ extends Handler {
    public static byte[] A0D;
    public static String[] A0E = {"iNmXvBj9FTihCrbZiC4S7zhCL1s9H33W", "EvGedAo1NbwIZrU2eJLjABwCKULHNO", "OhLMnivBPD1ct3YE1XOZQ5ppblACA0SV", "Bbpc8NZfeBPLrlsLcOoRpsaFZoo07Ukk", "cYMMpvUaIb0CtoOD5hU2j4Ih7c76pz", "QlCwnx", "3GDIv0eUOBpBneHy6OJWPXV1MBWevv42", "cGd21R9dzjO1"};
    public boolean A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public boolean A05;
    public boolean A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final InterfaceC0538Bh A09;
    public final InterfaceC1916mT A0A;
    public final ArrayList<B8> A0B;
    public final HashMap<String, C1921mY> A0C;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 73);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A0D = new byte[]{-42, -54, -9, 34, 42, 33, Ascii.US, 34, Ascii.DC4, Ascii.ETB, 0, Ascii.DC4, 33, Ascii.DC4, Ascii.SUB, Ascii.CAN, 37, -61, -34, -26, -23, -30, -31, -99, -15, -20, -99, -23, -20, -34, -31, -99, -31, -20, -12, -21, -23, -20, -34, -31, -73, -99, -109, -82, -74, -71, -78, -79, 109, -63, -68, 109, -71, -68, -82, -79, 109, -79, -68, -60, -69, -71, -68, -82, -79, -64, 123, -99, -72, -64, -61, -68, -69, 119, -53, -58, 119, -61, -58, -72, -69, 119, -64, -59, -69, -68, -49, -123, -87, -60, -52, -49, -56, -57, -125, -41, -46, -125, -43, -56, -48, -46, -39, -56, -125, -55, -43, -46, -48, -125, -57, -60, -41, -60, -59, -60, -42, -56, -109, -82, -74, -71, -78, -79, 109, -63, -68, 109, -65, -78, -70, -68, -61, -78, 109, -69, -68, -69, -78, -59, -74, -64, -63, -78, -69, -63, 109, -79, -68, -60, -69, -71, -68, -82, -79, -121, 109, -12, Ascii.SI, Ascii.ETB, Ascii.SUB, 19, Ascii.DC2, -50, 34, Ascii.GS, -50, 33, 19, 34, -50, Ascii.ESC, Ascii.SI, Ascii.FS, 35, Ascii.SI, Ascii.SUB, -50, 33, 34, Ascii.GS, Ascii.RS, -50, 32, 19, Ascii.SI, 33, Ascii.GS, Ascii.FS, -113, -86, -78, -75, -82, -83, 105, -67, -72, 105, -68, -82, -67, 105, -74, -86, -73, -66, -86, -75, 105, -68, -67, -72, -71, 105, -69, -82, -86, -68, -72, -73, -125, 105, -67, -40, -32, -29, -36, -37, -105, -21, -26, -105, -20, -25, -37, -40, -21, -36, -105, -32, -27, -37, -36, -17, -91, -13, 0, Ascii.DC2, 10, -65, 5, 0, 8, Ascii.VT, 4, 3, -39, -65};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0Q(DownloadRequest downloadRequest, int i) {
        B8 A06 = A06(downloadRequest.A02, true);
        long currentTimeMillis = System.currentTimeMillis();
        if (A06 != null) {
            A03(BT.A00(A06, downloadRequest, i, currentTimeMillis));
        } else {
            A03(new B8(downloadRequest, i != 0 ? 1 : 0, currentTimeMillis, currentTimeMillis, -1L, i, 0));
        }
        A0B();
    }

    static {
        A0D();
    }

    public BQ(HandlerThread handlerThread, InterfaceC1916mT interfaceC1916mT, InterfaceC0538Bh interfaceC0538Bh, Handler handler, int i, int i2, boolean z) {
        super(handlerThread.getLooper());
        this.A08 = handlerThread;
        this.A0A = interfaceC1916mT;
        this.A09 = interfaceC0538Bh;
        this.A07 = handler;
        this.A02 = i;
        this.A03 = i2;
        this.A05 = z;
        this.A0B = new ArrayList<>();
        this.A0C = new HashMap<>();
    }

    public static int A00(B8 b8, B8 b82) {
        return AbstractC03624a.A08(b8.A05, b82.A05);
    }

    /* JADX WARN: Incorrect condition in loop: B:22:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A02(java.lang.String r6) {
        /*
            r5 = this;
            r4 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r5.A0B
            int r0 = r0.size()
            if (r4 >= r0) goto L3e
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r5.A0B
            java.lang.Object r0 = r0.get(r4)
            com.facebook.ads.redexgen.X.B8 r0 = (com.facebook.ads.redexgen.X.B8) r0
            com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest r3 = r0.A07
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.BQ.A0E
            r0 = 4
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L38
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.BQ.A0E
            java.lang.String r1 = "id4WW5MNYn317aHfBDbhwYGK6MIHb4Bm"
            r0 = 6
            r2[r0] = r1
            java.lang.String r0 = r3.A02
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L35
            return r4
        L35:
            int r4 = r4 + 1
            goto L1
        L38:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3e:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BQ.A02(java.lang.String):int");
    }

    private B8 A03(B8 b8) {
        C3M.A08((b8.A02 == 3 || b8.A02 == 4) ? false : true);
        int A02 = A02(b8.A07.A02);
        if (A02 == -1) {
            this.A0B.add(b8);
            Collections.sort(this.A0B, new BP());
        } else {
            int changedIndex = (b8.A05 > this.A0B.get(A02).A05 ? 1 : (b8.A05 == this.A0B.get(A02).A05 ? 0 : -1));
            boolean z = changedIndex != 0;
            this.A0B.set(A02, b8);
            if (z) {
                Collections.sort(this.A0B, new BP());
            }
        }
        try {
            this.A0A.AGV(b8);
        } catch (IOException e) {
            AnonymousClass44.A08(A08(2, 15, 106), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 46), e);
        }
        this.A07.obtainMessage(2, new BO(b8, false, new ArrayList(this.A0B), null)).sendToTarget();
        return b8;
    }

    private B8 A04(B8 b8, int i, int i2) {
        C3M.A08((i == 3 || i == 4) ? false : true);
        return A03(A05(b8, i, i2));
    }

    public static B8 A05(B8 b8, int i, int i2) {
        return new B8(b8.A07, i, b8.A05, System.currentTimeMillis(), b8.A04, i2, 0, b8.A00);
    }

    private B8 A06(String str, boolean z) {
        int A02 = A02(str);
        if (A02 != -1) {
            return this.A0B.get(A02);
        }
        if (z) {
            try {
                return this.A0A.A7i(str);
            } catch (IOException e) {
                AnonymousClass44.A08(A08(2, 15, 106), A08(17, 25, 52) + str, e);
                return null;
            }
        }
        return null;
    }

    private C1921mY A07(C1921mY c1921mY, B8 b8) {
        boolean z;
        if (c1921mY == null) {
            if (A0U() && this.A01 < this.A02) {
                B8 A04 = A04(b8, 2, 0);
                C1921mY c1921mY2 = new C1921mY(A04.A07, this.A09.A5E(A04.A07), A04.A00, false, this.A03, this);
                this.A0C.put(A04.A07.A02, c1921mY2);
                int i = this.A01;
                this.A01 = i + 1;
                if (i == 0) {
                    sendEmptyMessageDelayed(11, 5000L);
                }
                c1921mY2.start();
                return c1921mY2;
            }
            return null;
        }
        z = c1921mY.A06;
        C3M.A08(!z);
        c1921mY.A05(false);
        return c1921mY;
    }

    private void A09() {
        for (C1921mY c1921mY : this.A0C.values()) {
            c1921mY.A05(true);
        }
        try {
            this.A0A.AIe();
        } catch (IOException e) {
            AnonymousClass44.A08(A08(2, 15, 106), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 46), e);
        }
        this.A0B.clear();
        this.A08.quit();
        synchronized (this) {
            this.A00 = true;
            notifyAll();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x007e, code lost:
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0A() {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BQ.A0A():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:28:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0B() {
        /*
            r5 = this;
            r4 = 0
            r3 = 0
        L2:
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r5.A0B
            int r0 = r0.size()
            if (r3 >= r0) goto L49
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r5.A0B
            java.lang.Object r2 = r0.get(r3)
            com.facebook.ads.redexgen.X.B8 r2 = (com.facebook.ads.redexgen.X.B8) r2
            java.util.HashMap<java.lang.String, com.facebook.ads.redexgen.X.mY> r1 = r5.A0C
            com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest r0 = r2.A07
            java.lang.String r0 = r0.A02
            java.lang.Object r1 = r1.get(r0)
            com.facebook.ads.redexgen.X.mY r1 = (com.facebook.ads.redexgen.X.C1921mY) r1
            int r0 = r2.A02
            switch(r0) {
                case 0: goto L38;
                case 1: goto L34;
                case 2: goto L2d;
                case 3: goto L23;
                case 4: goto L23;
                case 5: goto L29;
                case 6: goto L23;
                case 7: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L29:
            r5.A0O(r1, r2)
            goto L3c
        L2d:
            com.facebook.ads.redexgen.X.C3M.A01(r1)
            r5.A0P(r1, r2, r4)
            goto L3c
        L34:
            r5.A0M(r1)
            goto L3c
        L38:
            com.facebook.ads.redexgen.X.mY r1 = r5.A07(r1, r2)
        L3c:
            if (r1 == 0) goto L46
            boolean r0 = com.facebook.ads.redexgen.X.C1921mY.A03(r1)
            if (r0 != 0) goto L46
            int r4 = r4 + 1
        L46:
            int r3 = r3 + 1
            goto L2
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BQ.A0B():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:23:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0C() {
        /*
            r6 = this;
            r5 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r6.A0B
            int r0 = r0.size()
            if (r5 >= r0) goto L36
            java.util.ArrayList<com.facebook.ads.redexgen.X.B8> r0 = r6.A0B
            java.lang.Object r2 = r0.get(r5)
            com.facebook.ads.redexgen.X.B8 r2 = (com.facebook.ads.redexgen.X.B8) r2
            int r1 = r2.A02
            r0 = 2
            if (r1 != r0) goto L33
            com.facebook.ads.redexgen.X.mT r0 = r6.A0A     // Catch: java.io.IOException -> L1c
            r0.AGV(r2)     // Catch: java.io.IOException -> L1c
            goto L33
        L1c:
            r4 = move-exception
            r2 = 2
            r1 = 15
            r0 = 106(0x6a, float:1.49E-43)
            java.lang.String r3 = A08(r2, r1, r0)
            r2 = 223(0xdf, float:3.12E-43)
            r1 = 23
            r0 = 46
            java.lang.String r0 = A08(r2, r1, r0)
            com.facebook.ads.redexgen.X.AnonymousClass44.A08(r3, r0, r4)
        L33:
            int r5 = r5 + 1
            goto L1
        L36:
            r2 = 11
            r0 = 5000(0x1388, double:2.4703E-320)
            r6.sendEmptyMessageDelayed(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BQ.A0C():void");
    }

    private void A0E(int i) {
        this.A04 = i;
        C1926md c1926md = null;
        try {
            try {
                this.A0A.AIe();
                c1926md = this.A0A.A7j(0, 1, 2, 5, 7);
                while (c1926md.A01()) {
                    this.A0B.add(c1926md.A00());
                }
            } catch (IOException e) {
                AnonymousClass44.A08(A08(2, 15, 106), A08(67, 21, 14), e);
                this.A0B.clear();
            }
            AbstractC03624a.A10(c1926md);
            this.A07.obtainMessage(0, new ArrayList(this.A0B)).sendToTarget();
            A0B();
        } catch (Throwable th) {
            AbstractC03624a.A10(c1926md);
            throw th;
        }
    }

    private void A0F(int i) {
        this.A02 = i;
        A0B();
    }

    private void A0G(int i) {
        this.A03 = i;
    }

    private void A0H(int i) {
        this.A04 = i;
        A0B();
    }

    private void A0I(B8 b8) {
        if (b8.A02 == 7) {
            int i = b8.A03 == 0 ? 0 : 1;
            int state = b8.A03;
            A04(b8, i, state);
            A0B();
            return;
        }
        this.A0B.remove(A02(b8.A07.A02));
        try {
            this.A0A.AHh(b8.A07.A02);
        } catch (IOException unused) {
            String A08 = A08(2, 15, 106);
            String[] strArr = A0E;
            String str = strArr[1];
            String str2 = strArr[7];
            int length = str.length();
            int removeIndex = str2.length();
            if (length == removeIndex) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[4] = "0mOws7zeqclkbY70VWtV8amCVjdjwc";
            strArr2[2] = "5byiBwQrvMTmrLaxdcHCyvzuNe0iHvcw";
            AnonymousClass44.A05(A08, A08(88, 30, 26));
        }
        this.A07.obtainMessage(2, new BO(b8, true, new ArrayList(this.A0B), null)).sendToTarget();
    }

    private void A0J(B8 b8, int i) {
        if (i == 0) {
            if (b8.A02 == 1) {
                A04(b8, 0, 0);
                return;
            }
            return;
        }
        int i2 = b8.A03;
        if (A0E[6].charAt(14) != 'H') {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[4] = "qDoL4xVSTO8RDQU7ZVoZcH2BhkCOc4";
        strArr[2] = "ugBXxeG19GlyVlR2WcoXaVyqVtSsbrKH";
        if (i == i2) {
            return;
        }
        int i3 = b8.A02;
        A03(new B8(b8.A07, (i3 == 0 || i3 == 2) ? 1 : 1, b8.A05, System.currentTimeMillis(), b8.A04, i, 0, b8.A00));
    }

    private void A0K(B8 b8, Exception exc) {
        int i;
        DownloadRequest downloadRequest = b8.A07;
        int i2 = exc == null ? 3 : 4;
        long j = b8.A05;
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = b8.A04;
        int i3 = b8.A03;
        if (exc == null) {
            i = 0;
        } else {
            i = 1;
        }
        B8 b82 = new B8(downloadRequest, i2, j, currentTimeMillis, j2, i3, i, b8.A00);
        this.A0B.remove(A02(b82.A07.A02));
        try {
            this.A0A.AGV(b82);
        } catch (IOException e) {
            AnonymousClass44.A08(A08(2, 15, 106), A08(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 23, 46), e);
        }
        this.A07.obtainMessage(2, new BO(b82, false, new ArrayList(this.A0B), exc)).sendToTarget();
    }

    private void A0L(C1921mY c1921mY) {
        DownloadRequest downloadRequest;
        boolean z;
        boolean z2;
        Exception finalException;
        DownloadRequest downloadRequest2;
        downloadRequest = c1921mY.A04;
        String str = downloadRequest.A02;
        this.A0C.remove(str);
        z = c1921mY.A06;
        if (z) {
            this.A06 = false;
        } else {
            int i = this.A01 - 1;
            this.A01 = i;
            if (i == 0) {
                removeMessages(11);
            }
        }
        z2 = c1921mY.A08;
        if (z2) {
            A0B();
            return;
        }
        finalException = c1921mY.A01;
        if (finalException != null) {
            StringBuilder sb = new StringBuilder();
            String downloadId = A08(246, 13, 86);
            StringBuilder append = sb.append(downloadId);
            downloadRequest2 = c1921mY.A04;
            StringBuilder append2 = append.append(downloadRequest2);
            String downloadId2 = A08(0, 2, 97);
            String sb2 = append2.append(downloadId2).append(z).toString();
            String downloadId3 = A08(2, 15, 106);
            AnonymousClass44.A08(downloadId3, sb2, finalException);
        }
        B8 A06 = A06(str, false);
        if (A0E[3].charAt(4) != '8') {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[4] = "ylCSlCHYxJLig8GFragBjcnbyuXWai";
        strArr[2] = "OMWcFhgpmCCD5KtgAO70M2kgxcAld7fK";
        B8 b8 = (B8) C3M.A01(A06);
        switch (b8.A02) {
            case 2:
                C3M.A08(!z);
                A0K(b8, finalException);
                break;
            case 3:
            case 4:
            case 6:
            default:
                throw new IllegalStateException();
            case 5:
            case 7:
                C3M.A08(z);
                A0I(b8);
                break;
        }
        A0B();
    }

    private void A0M(C1921mY c1921mY) {
        boolean z;
        if (c1921mY == null) {
            return;
        }
        z = c1921mY.A06;
        C3M.A08(!z);
        c1921mY.A05(false);
    }

    private void A0N(C1921mY c1921mY, long j) {
        DownloadRequest downloadRequest;
        downloadRequest = c1921mY.A04;
        B8 b8 = (B8) C3M.A01(A06(downloadRequest.A02, false));
        if (j == b8.A04 || j == -1) {
            return;
        }
        A03(new B8(b8.A07, b8.A02, b8.A05, System.currentTimeMillis(), j, b8.A03, b8.A01, b8.A00));
    }

    private void A0O(C1921mY c1921mY, B8 b8) {
        boolean z;
        if (c1921mY == null) {
            boolean z2 = this.A06;
            if (A0E[3].charAt(4) != '8') {
                throw new RuntimeException();
            }
            A0E[0] = "e4XXQnURg6mIpThj5jyh4wOBvzx0EgPt";
            if (z2) {
                return;
            }
            C1921mY c1921mY2 = new C1921mY(b8.A07, this.A09.A5E(b8.A07), b8.A00, true, this.A03, this);
            this.A0C.put(b8.A07.A02, c1921mY2);
            this.A06 = true;
            c1921mY2.start();
            return;
        }
        z = c1921mY.A06;
        if (!z) {
            c1921mY.A05(false);
        }
    }

    private void A0P(C1921mY c1921mY, B8 b8, int i) {
        boolean z;
        z = c1921mY.A06;
        C3M.A08(!z);
        if (!A0U() || i >= this.A02) {
            A04(b8, 0, 0);
            c1921mY.A05(false);
        }
    }

    private void A0R(String str) {
        B8 A06 = A06(str, true);
        if (A06 == null) {
            AnonymousClass44.A05(A08(2, 15, 106), A08(118, 39, 4) + str);
            return;
        }
        A04(A06, 5, 0);
        A0B();
    }

    private void A0S(String str, int i) {
        String A08 = A08(2, 15, 106);
        if (str == null) {
            for (int i2 = 0; i2 < this.A0B.size(); i2++) {
                A0J(this.A0B.get(i2), i);
            }
            try {
                this.A0A.AJ6(i);
            } catch (IOException e) {
                AnonymousClass44.A08(A08, A08(157, 32, 101), e);
            }
        } else {
            B8 A06 = A06(str, false);
            if (A06 != null) {
                A0J(A06, i);
            } else {
                try {
                    this.A0A.AJ7(str, i);
                } catch (IOException e2) {
                    AnonymousClass44.A08(A08, A08(189, 34, 0) + str, e2);
                }
            }
        }
        A0B();
    }

    private void A0T(boolean z) {
        this.A05 = z;
        A0B();
    }

    private boolean A0U() {
        if (!this.A05) {
            int i = this.A04;
            if (A0E[6].charAt(14) != 'H') {
                throw new RuntimeException();
            }
            A0E[5] = "cfwXoVsCs";
            if (i == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        boolean z = true;
        try {
            switch (message.what) {
                case 0:
                    A0E(message.arg1);
                    break;
                case 1:
                    A0T(message.arg1 != 0);
                    break;
                case 2:
                    A0H(message.arg1);
                    break;
                case 3:
                    A0S((String) message.obj, message.arg1);
                    break;
                case 4:
                    A0F(message.arg1);
                    break;
                case 5:
                    A0G(message.arg1);
                    break;
                case 6:
                    A0Q((DownloadRequest) message.obj, message.arg1);
                    break;
                case 7:
                    A0R((String) message.obj);
                    break;
                case 8:
                    A0A();
                    break;
                case 9:
                    A0L((C1921mY) message.obj);
                    z = false;
                    break;
                case 10:
                    A0N((C1921mY) message.obj, AbstractC03624a.A0N(message.arg1, message.arg2));
                    return;
                case 11:
                    A0C();
                    return;
                case 12:
                    A09();
                    return;
                default:
                    throw new IllegalStateException();
            }
            this.A07.obtainMessage(1, z ? 1 : 0, this.A0C.size()).sendToTarget();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
