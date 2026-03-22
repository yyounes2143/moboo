package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.92  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass92 extends AbstractC1870li {
    public static byte[] A07;
    public static String[] A08 = {"yr7s5jzv1addyUjDczkFmKgb3TbXTjPI", "k5bxDF12X7IfueMvpCyLhsS14secbcRr", "A1nn9z9SPvnfAziOnMuSk0GZzxZ0jVfY", "Bn8GSVMc2Ww3cTp6j1ZQIVGuo4fvIYJ3", "KOSGSA", "kbDMqlVGuQuF7sZpY9G1V32bVqx23m", "bfxskyCfRQ3e5JfVyMYK1TBq", "KPf5jweXKATwb3ocWNu711OjnnCWcsTU"};
    public static final AbstractC2040oV<Integer> A09;
    public static final AbstractC2040oV<Integer> A0A;
    public C2067oy A00;
    public AnonymousClass93 A01;
    public E3 A02;
    public final Context A03;
    public final EA A04;
    public final Object A05;
    public final boolean A06;

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c7, code lost:
        if (r18.A01.A0A == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
        if (r7.isEmpty() != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d5, code lost:
        if (r7.size() != r10.A01) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d7, code lost:
        r6.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e7, code lost:
        if (com.facebook.ads.redexgen.X.AnonymousClass92.A08[1].charAt(16) == 'p') goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e9, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass92.A08[4] = "67hsDi";
        r6.add(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f3, code lost:
        r14.addAll(r6);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass92.A08[4] = "yJ8LwG";
        r6.add(r7);
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 24
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D25277746")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T extends com.facebook.ads.redexgen.X.E5<T>> android.util.Pair<com.facebook.ads.redexgen.X.E9, java.lang.Integer> A0A(int r19, com.facebook.ads.redexgen.X.EC r20, int[][][] r21, com.facebook.ads.redexgen.X.E4<T> r22, java.util.Comparator<java.util.List<T>> r23) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass92.A0A(int, com.facebook.ads.redexgen.X.EC, int[][][], com.facebook.ads.redexgen.X.E4, java.util.Comparator):android.util.Pair");
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A08[5].length() == 27) {
                throw new RuntimeException();
            }
            A08[4] = "58VoVy";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 10);
            i4++;
        }
    }

    public static void A0M() {
        A07 = new byte[]{91, 92, -112, Byte.MAX_VALUE, -124, -118, 59, 126, -125, 124, -119, -119, Byte.MIN_VALUE, -121, 59, 126, -118, -112, -119, -113, 59, 126, -118, -119, -114, -113, -115, 124, -124, -119, -113, -114, 59, 126, 124, -119, -119, -118, -113, 59, 125, Byte.MIN_VALUE, 59, 124, -117, -117, -121, -124, Byte.MIN_VALUE, Byte.MAX_VALUE, 59, -110, -124, -113, -125, -118, -112, -113, 59, -115, Byte.MIN_VALUE, -127, Byte.MIN_VALUE, -115, Byte.MIN_VALUE, -119, 126, Byte.MIN_VALUE, 59, -113, -118, 59, 94, -118, -119, -113, Byte.MIN_VALUE, -109, -113, 73, 59, 93, -112, -124, -121, Byte.MAX_VALUE, 59, -113, -125, Byte.MIN_VALUE, 59, -113, -115, 124, 126, -122, 59, -114, Byte.MIN_VALUE, -121, Byte.MIN_VALUE, 126, -113, -118, -115, 59, -124, -119, -114, -113, 124, -119, 126, Byte.MIN_VALUE, 59, -110, -124, -113, -125, 59, -118, -119, Byte.MIN_VALUE, 59, -118, -127, 59, -113, -125, Byte.MIN_VALUE, 59, -119, -118, -119, 72, Byte.MAX_VALUE, Byte.MIN_VALUE, -117, -115, Byte.MIN_VALUE, 126, 124, -113, Byte.MIN_VALUE, Byte.MAX_VALUE, 59, 126, -118, -119, -114, -113, -115, -112, 126, -113, -118, -115, -114, 59, -113, -125, 124, -113, 59, -113, 124, -122, Byte.MIN_VALUE, 59, 124, 59, 94, -118, -119, -113, Byte.MIN_VALUE, -109, -113, 59, 124, -115, -126, -112, -120, Byte.MIN_VALUE, -119, -113, 73, -103, -70, -69, -74, -54, -63, -55, -87, -57, -74, -72, -64, -88, -70, -63, -70, -72, -55, -60, -57, -57, -37, -54, -49, -43, -107, -57, -55, -103, -83, -63, -80, -75, -69, 123, -83, -81, Byte.MIN_VALUE, -49, -29, -46, -41, -35, -99, -45, -49, -47, -95, -70, -50, -67, -62, -56, -120, -66, -70, -68, -116, -122, -61, -56, -68, -54, -61, -71, -119, 124, 119, 120, -126, 66, 116, -119, 67, 68, -98, -111, -116, -115, -105, 87, -119, -98, -117, -33, -46, -51, -50, -40, -104, -51, -40, -43, -53, -30, -106, -33, -46, -36, -46, -40, -41, -92, -105, -110, -109, -99, 93, -106, -109, -92, -111, -11, -24, -29, -28, -18, -82, -9, -84, -11, -19, -29, -83, -18, -19, -79, -83, -11, -17, -72};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 6
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static void A0N(C1898mA c1898mA, C2020oA c2020oA, Map<Integer, C2022oC> map) {
        C2022oC c2022oC;
        for (int i = 0; i < c1898mA.A01; i++) {
            C2022oC c2022oC2 = c2020oA.A0G.get(c1898mA.A05(i));
            if (c2022oC2 != null && ((c2022oC = map.get(Integer.valueOf(c2022oC2.A01()))) == null || (c2022oC.A01.isEmpty() && !c2022oC2.A01.isEmpty()))) {
                map.put(Integer.valueOf(c2022oC2.A01()), c2022oC2);
            }
        }
    }

    static {
        A0M();
        A09 = AbstractC2040oV.A04(new Comparator() { // from class: com.facebook.ads.redexgen.X.Dx
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AnonymousClass92.A05((Integer) obj, (Integer) obj2);
            }
        });
        A0A = AbstractC2040oV.A04(new Comparator() { // from class: com.facebook.ads.redexgen.X.Dy
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AnonymousClass92.A06((Integer) obj, (Integer) obj2);
            }
        });
    }

    @Deprecated
    public AnonymousClass92() {
        this(AnonymousClass93.A0J, new C1893m5());
    }

    @MetaExoPlayerCustomization(type = {"NEW_CONSTRUCTOR"}, value = "Backward Compatible Constructor")
    public AnonymousClass92(EA ea) {
        this(AnonymousClass93.A0J, ea);
    }

    @Deprecated
    public AnonymousClass92(C2020oA c2020oA, EA ea) {
        this(c2020oA, ea, null);
    }

    public AnonymousClass92(C2020oA c2020oA, EA ea, Context context) {
        this.A05 = new Object();
        this.A03 = context != null ? context.getApplicationContext() : null;
        this.A04 = ea;
        if (c2020oA instanceof AnonymousClass93) {
            this.A01 = (AnonymousClass93) c2020oA;
        } else {
            AnonymousClass93 defaultParameters = context == null ? AnonymousClass93.A0J : AnonymousClass93.A02(context);
            this.A01 = defaultParameters.A0P().A0u(c2020oA).A0p();
        }
        this.A00 = C2067oy.A07;
        this.A06 = context != null && AbstractC03624a.A18(context);
        if (!this.A06 && context != null && AbstractC03624a.A02 >= 32) {
            this.A02 = E3.A00(context);
        }
        if (this.A01.A08 && context == null) {
            AnonymousClass44.A07(A0J(TsExtractor.TS_PACKET_SIZE, 20, 75), A0J(1, 187, 17));
        }
    }

    public static int A00(int i, int i2) {
        if (i != 0 && i == i2) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i & i2);
    }

    public static int A02(C2061or c2061or, String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = c2061or.A0V;
            String[] strArr = A08;
            if (strArr[6].length() != strArr[3].length()) {
                A08[7] = "utaRfuDCbQDIc6IM3a2tNPgwwhECnGgZ";
                if (str.equals(str2)) {
                    if (A08[4].length() != 6) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A08;
                    strArr2[6] = "bdPum8qTTDlHeCQDHcvgSGFt";
                    strArr2[3] = "zx28NE7Z14W3AzzAuoWnzSjL1M2eUdTs";
                    return 4;
                }
            }
            throw new RuntimeException();
        }
        String A0K = A0K(str);
        String A0K2 = A0K(c2061or.A0V);
        if (A0K2 == null || A0K == null) {
            return (z && A0K2 == null) ? 1 : 0;
        } else if (A0K2.startsWith(A0K) || A0K.startsWith(A0K2)) {
            return 3;
        } else {
            String A0J = A0J(0, 1, 36);
            String str3 = AbstractC03624a.A1P(A0K2, A0J)[0];
            String formatMainLanguage = AbstractC03624a.A1P(A0K, A0J)[0];
            String[] strArr3 = A08;
            String str4 = strArr3[6];
            String formatLanguage = strArr3[3];
            if (str4.length() != formatLanguage.length()) {
                A08[4] = "rXSrCW";
                if (!str3.equals(formatMainLanguage)) {
                    return 0;
                }
                return 2;
            }
            throw new RuntimeException();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:8:0x000e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A03(com.facebook.ads.redexgen.X.C2027oH r8, int r9, int r10, boolean r11) {
        /*
            r0 = 2147483647(0x7fffffff, float:NaN)
            if (r9 == r0) goto L7
            if (r10 != r0) goto L8
        L7:
            return r0
        L8:
            r5 = 2147483647(0x7fffffff, float:NaN)
            r4 = 0
        Lc:
            int r0 = r8.A01
            if (r4 >= r0) goto L44
            com.facebook.ads.redexgen.X.or r7 = r8.A08(r4)
            int r0 = r7.A0L
            if (r0 <= 0) goto L41
            int r0 = r7.A0A
            if (r0 <= 0) goto L41
            int r1 = r7.A0L
            int r0 = r7.A0A
            android.graphics.Point r6 = A09(r11, r9, r10, r1, r0)
            int r3 = r7.A0L
            int r0 = r7.A0A
            int r3 = r3 * r0
            int r1 = r7.A0L
            int r0 = r6.x
            float r0 = (float) r0
            r2 = 1065017672(0x3f7ae148, float:0.98)
            float r0 = r0 * r2
            int r0 = (int) r0
            if (r1 < r0) goto L41
            int r1 = r7.A0A
            int r0 = r6.y
            float r0 = (float) r0
            float r0 = r0 * r2
            int r0 = (int) r0
            if (r1 < r0) goto L41
            if (r3 >= r5) goto L41
            r5 = r3
        L41:
            int r4 = r4 + 1
            goto Lc
        L44:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass92.A03(com.facebook.ads.redexgen.X.oH, int, int, boolean):int");
    }

    public static /* synthetic */ int A05(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            int intValue = num.intValue();
            int intValue2 = num2.intValue();
            if (A08[4].length() != 6) {
                throw new RuntimeException();
            }
            A08[1] = "gB7bm57sTKDjvfC8pNahT9wGVNX6TDKL";
            return intValue - intValue2;
        }
    }

    public static /* synthetic */ int A06(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A07(String str) {
        char c;
        if (str == null) {
            return 0;
        }
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals(A0J(272, 18, 95))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662735862:
                String[] strArr = A08;
                if (strArr[6].length() != strArr[3].length()) {
                    A08[1] = "cKYBOGEqW486lDdcpu93NQ9TicEen6vk";
                    if (str.equals(A0J(ITPNativePlayerMessageCallback.INFO_LONG1_DRM_FATAL_ERROR, 10, 9))) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case -1662541442:
                if (str.equals(A0J(290, 10, 36))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (str.equals(A0J(TPReportParams.LIVE_STEP_PLAY, 9, 30))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (str.equals(A0J(300, 19, 117))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 5;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 2;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    @MetaExoPlayerCustomization("Made public in D13395849")
    public static Point A09(boolean z, int tempViewportWidth, int i, int i2, int i3) {
        if (z) {
            if ((i2 > i3) != (tempViewportWidth > i)) {
                tempViewportWidth = i;
                i = tempViewportWidth;
            }
        }
        if (i2 * i >= i3 * tempViewportWidth) {
            return new Point(tempViewportWidth, AbstractC03624a.A05(tempViewportWidth * i3, i2));
        }
        return new Point(AbstractC03624a.A05(i * i2, i3), i);
    }

    private final Pair<E9, Integer> A0B(EC ec, int[][][] iArr, final AnonymousClass93 anonymousClass93, final String str) throws C9Y {
        return A0A(3, ec, iArr, new E4() { // from class: com.facebook.ads.redexgen.X.m0
            @Override // com.facebook.ads.redexgen.X.E4
            public final List A57(int i, C2027oH c2027oH, int[] iArr2) {
                AbstractC0517Am A02;
                A02 = C1875ln.A02(i, c2027oH, AnonymousClass93.this, iArr2, str);
                return A02;
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.Dw
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C1875ln.A01((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<E9, Integer> A0C(EC ec, int[][][] iArr, int[] iArr2, final AnonymousClass93 anonymousClass93) throws C9Y {
        final boolean z = false;
        int i = 0;
        while (true) {
            if (i < ec.A02()) {
                if (2 == ec.A03(i) && ec.A07(i).A01 > 0) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return A0A(1, ec, iArr, new E4() { // from class: com.facebook.ads.redexgen.X.m1
            @Override // com.facebook.ads.redexgen.X.E4
            public final List A57(int i2, C2027oH c2027oH, int[] iArr3) {
                return AnonymousClass92.this.A0e(anonymousClass93, z, i2, c2027oH, iArr3);
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.Dv
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C1887lz.A02((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<E9, Integer> A0D(EC ec, int[][][] iArr, final int[] iArr2, final AnonymousClass93 anonymousClass93, final String str) throws C9Y {
        return A0A(2, ec, iArr, new E4() { // from class: com.facebook.ads.redexgen.X.m3
            @Override // com.facebook.ads.redexgen.X.E4
            public final List A57(int i, C2027oH c2027oH, int[] iArr3) {
                AbstractC0517Am A06;
                A06 = C1872lk.A06(i, c2027oH, AnonymousClass93.this, iArr3, str, iArr2[i]);
                return A06;
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.Du
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C1872lk.A05((List) obj, (List) obj2);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007d, code lost:
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.facebook.ads.redexgen.X.E9 A0E(int r13, com.facebook.ads.redexgen.X.C1898mA r14, int[][] r15, com.facebook.ads.redexgen.X.AnonymousClass93 r16) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            r12 = this;
            r7 = 0
            r11 = 0
            r6 = 0
            r5 = 0
        L4:
            int r0 = r14.A01
            if (r5 >= r0) goto L8c
            com.facebook.ads.redexgen.X.oH r4 = r14.A05(r5)
            r10 = r15[r5]
            r3 = 0
        Lf:
            int r8 = r4.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            r0 = 7
            r1 = r1[r0]
            r0 = 4
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto L86
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "eXe48tlcaaFOVphj3tBJsJZ33XViaUIe"
            r0 = 7
            r2[r0] = r1
            if (r3 >= r8) goto L7d
            r8 = r10[r3]
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            r0 = 7
            r1 = r1[r0]
            r0 = 4
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto L80
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "FFBXZuvHsKfXoft1igGzNsuMgLJqlaBK"
            r0 = 7
            r2[r0] = r1
            r0 = r16
            boolean r0 = r0.A0B
            boolean r0 = A0S(r8, r0)
            if (r0 == 0) goto L7a
            com.facebook.ads.redexgen.X.or r1 = r4.A08(r3)
            com.facebook.ads.redexgen.X.E0 r8 = new com.facebook.ads.redexgen.X.E0
            r0 = r10[r3]
            r8.<init>(r1, r0)
            if (r6 == 0) goto L77
            int r9 = r8.compareTo(r6)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            r0 = 0
            r1 = r2[r0]
            r0 = 2
            r2 = r2[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L86
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "us6BKPnONaHSk6j2pgBHNNPTLKUclzqr"
            r0 = 1
            r2[r0] = r1
            if (r9 <= 0) goto L7a
        L77:
            r7 = r4
            r11 = r3
            r6 = r8
        L7a:
            int r3 = r3 + 1
            goto Lf
        L7d:
            int r5 = r5 + 1
            goto L4
        L80:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L86:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L8c:
            if (r7 != 0) goto L90
            r1 = 0
        L8f:
            return r1
        L90:
            int[] r0 = new int[]{r11}
            com.facebook.ads.redexgen.X.E9 r1 = new com.facebook.ads.redexgen.X.E9
            r1.<init>(r7, r0)
            goto L8f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass92.A0E(int, com.facebook.ads.redexgen.X.mA, int[][], com.facebook.ads.redexgen.X.93):com.facebook.ads.redexgen.X.E9");
    }

    public static String A0K(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, A0J(250, 3, 75))) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L() {
        boolean z;
        synchronized (this.A05) {
            z = this.A01.A08 && !this.A06 && AbstractC03624a.A02 >= 32 && this.A02 != null && this.A02.A06();
        }
        if (z) {
            A01();
        }
    }

    public static void A0P(EC ec, C2020oA c2020oA, E9[] e9Arr) {
        E9 e9;
        int A02 = ec.A02();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < A02; i++) {
            A0N(ec.A07(i), c2020oA, hashMap);
        }
        A0N(ec.A06(), c2020oA, hashMap);
        for (int i2 = 0; i2 < A02; i2++) {
            int rendererCount = ec.A03(i2);
            C2022oC c2022oC = (C2022oC) hashMap.get(Integer.valueOf(rendererCount));
            if (c2022oC != null) {
                boolean isEmpty = c2022oC.A01.isEmpty();
                if (A08[7].charAt(4) == 'r') {
                    throw new RuntimeException();
                }
                A08[4] = "YbaSeo";
                if (!isEmpty && ec.A07(i2).A04(c2022oC.A00) != -1) {
                    e9 = new E9(c2022oC.A00, AD.A0C(c2022oC.A01));
                } else {
                    e9 = null;
                }
                e9Arr[i2] = e9;
            }
        }
    }

    public static void A0Q(EC ec, AnonymousClass93 anonymousClass93, E9[] e9Arr) {
        E9 e9;
        int A02 = ec.A02();
        for (int i = 0; i < A02; i++) {
            C1898mA A072 = ec.A07(i);
            if (anonymousClass93.A0S(i, A072)) {
                C1876lo A0Q = anonymousClass93.A0Q(i, A072);
                String[] strArr = A08;
                String str = strArr[6];
                String str2 = strArr[3];
                int rendererIndex = str.length();
                int rendererCount = str2.length();
                if (rendererIndex == rendererCount) {
                    throw new RuntimeException();
                }
                A08[5] = "K8f1XF422sl3cXXm";
                if (A0Q != null) {
                    int length = A0Q.A03.length;
                    String[] strArr2 = A08;
                    String str3 = strArr2[6];
                    String str4 = strArr2[3];
                    int rendererIndex2 = str3.length();
                    int rendererCount2 = str4.length();
                    if (rendererIndex2 == rendererCount2) {
                        throw new RuntimeException();
                    }
                    A08[4] = "KnBpd5";
                    if (length != 0) {
                        int rendererCount3 = A0Q.A00;
                        C2027oH A05 = A072.A05(rendererCount3);
                        int[] iArr = A0Q.A03;
                        int rendererIndex3 = A0Q.A02;
                        e9 = new E9(A05, iArr, rendererIndex3);
                        e9Arr[i] = e9;
                    }
                }
                e9 = null;
                e9Arr[i] = e9;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
        if (r4 != 1) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
        if (r4 != 2) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r3 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (A0W(r12[r7], r11.A07(r7), r3) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
        if (r4 != 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        if (r9 == (-1)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
        if (r8 == (-1)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
        if (r4 != 1) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0085, code lost:
        r9 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0087, code lost:
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0088, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0R(com.facebook.ads.redexgen.X.EC r11, int[][][] r12, com.facebook.ads.redexgen.X.C7G[] r13, com.facebook.ads.redexgen.X.InterfaceC1871lj[] r14) {
        /*
            r9 = -1
            r8 = -1
            r10 = 1
            r7 = 0
        L4:
            int r3 = r11.A02()
            r6 = -1
            r5 = 1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 6
            if (r1 == r0) goto L1c
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "NZY9D9dgjYLNZ0XYpF4W2GrX5uVEwVhV"
            r0 = 1
            r2[r0] = r1
            if (r7 >= r3) goto L5e
            int r4 = r11.A03(r7)
            r3 = r14[r7]
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            r0 = 0
            r1 = r2[r0]
            r0 = 2
            r2 = r2[r0]
            r0 = 9
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L76
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "nPMicF"
            r0 = 4
            r2[r0] = r1
            if (r4 == r5) goto L4b
        L48:
            r0 = 2
            if (r4 != r0) goto L88
        L4b:
            if (r3 == 0) goto L88
            r1 = r12[r7]
            com.facebook.ads.redexgen.X.mA r0 = r11.A07(r7)
            boolean r0 = A0W(r1, r0, r3)
            if (r0 == 0) goto L88
            if (r4 != r5) goto L72
            if (r9 == r6) goto L85
            r10 = 0
        L5e:
            if (r9 == r6) goto L70
            if (r8 == r6) goto L70
            r0 = 1
        L63:
            r10 = r10 & r0
            if (r10 == 0) goto L6f
            com.facebook.ads.redexgen.X.7G r0 = new com.facebook.ads.redexgen.X.7G
            r0.<init>(r5)
            r13[r9] = r0
            r13[r8] = r0
        L6f:
            return
        L70:
            r0 = 0
            goto L63
        L72:
            if (r8 == r6) goto L87
            r10 = 0
            goto L5e
        L76:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass92.A08
            java.lang.String r1 = "5F5ko3NIDU1YMXmZZUDVXdSE"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "1c60xx4jFCOb1nSxKeVAoj10cRAS07b7"
            r0 = 3
            r2[r0] = r1
            if (r4 == r5) goto L4b
            goto L48
        L85:
            r9 = r7
            goto L88
        L87:
            r8 = r7
        L88:
            int r7 = r7 + 1
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass92.A0R(com.facebook.ads.redexgen.X.EC, int[][][], com.facebook.ads.redexgen.X.7G[], com.facebook.ads.redexgen.X.lj[]):void");
    }

    @MetaExoPlayerCustomization("Made public for customization on DashManifestHelper")
    public static boolean A0S(int i, boolean z) {
        int A03 = AnonymousClass76.A03(i);
        return A03 == 4 || (z && A03 == 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0T(C2061or c2061or) {
        boolean z;
        synchronized (this.A05) {
            z = !this.A01.A08 || this.A06 || c2061or.A06 <= 2 || (A0U(c2061or) && (AbstractC03624a.A02 < 32 || this.A02 == null || !this.A02.A06())) || (AbstractC03624a.A02 >= 32 && this.A02 != null && this.A02.A06() && this.A02.A04() && this.A02.A05() && this.A02.A07(this.A00, c2061or));
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean A0U(C2061or c2061or) {
        char c;
        if (c2061or.A0W == null) {
            return false;
        }
        String str = c2061or.A0W;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(A0J(236, 14, 79))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals(A0J(208, 9, 92))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (str.equals(A0J(217, 9, 66))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals(A0J(226, 10, 100))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public static boolean A0W(int[][] iArr, C1898mA c1898mA, InterfaceC1871lj interfaceC1871lj) {
        if (interfaceC1871lj == null) {
            return false;
        }
        int A04 = c1898mA.A04(interfaceC1871lj.A9D());
        for (int i = 0; i < interfaceC1871lj.length(); i++) {
            int trackGroupIndex = AnonymousClass76.A05(iArr[A04][interfaceC1871lj.A89(i)]);
            if (trackGroupIndex != 32) {
                return false;
            }
        }
        return true;
    }

    private final E9[] A0X(EC ec, int[][][] iArr, int[] iArr2, AnonymousClass93 anonymousClass93) throws C9Y {
        String str;
        int A02 = ec.A02();
        E9[] e9Arr = new E9[A02];
        Pair<E9, Integer> A0C = A0C(ec, iArr, iArr2, anonymousClass93);
        if (A0C != null) {
            Object obj = A0C.second;
            String[] strArr = A08;
            String str2 = strArr[0];
            String str3 = strArr[2];
            int charAt = str2.charAt(9);
            int rendererCount = str3.charAt(9);
            if (charAt == rendererCount) {
                throw new RuntimeException();
            }
            A08[7] = "yBKbxgl1qoYBYNtasAVV61g1RQWhRN9O";
            e9Arr[((Integer) obj).intValue()] = (E9) A0C.first;
        }
        if (A0C == null) {
            str = null;
        } else {
            C2027oH c2027oH = ((E9) A0C.first).A01;
            int rendererCount2 = ((E9) A0C.first).A02[0];
            str = c2027oH.A08(rendererCount2).A0V;
        }
        Pair<E9, Integer> A0D = A0D(ec, iArr, iArr2, anonymousClass93, str);
        if (A0D != null) {
            e9Arr[((Integer) A0D.second).intValue()] = (E9) A0D.first;
        }
        Pair<E9, Integer> A0B = A0B(ec, iArr, anonymousClass93, str);
        if (A0B != null) {
            e9Arr[((Integer) A0B.second).intValue()] = (E9) A0B.first;
        }
        for (int i = 0; i < A02; i++) {
            int i2 = ec.A03(i);
            if (i2 != 2 && i2 != 1) {
                String[] strArr2 = A08;
                String str4 = strArr2[0];
                String str5 = strArr2[2];
                int charAt2 = str4.charAt(9);
                int rendererCount3 = str5.charAt(9);
                if (charAt2 == rendererCount3) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A08;
                strArr3[6] = "1xsmyE1OdjkvrsbXr4cEFZBV";
                strArr3[3] = "D4xPicyrc2caIP01Cw6NBhV2pRXBVsmG";
                if (i2 != 3) {
                    e9Arr[i] = A0E(i2, ec.A07(i), iArr[i], anonymousClass93);
                }
            }
        }
        return e9Arr;
    }

    @Override // com.facebook.ads.redexgen.X.EK
    public final boolean A0Y() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1870li
    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "final removed in D35162315")
    public final Pair<C7G[], InterfaceC1871lj[]> A0d(EC ec, int[][][] iArr, int[] iArr2, C1908mL c1908mL, Timeline timeline) throws C9Y {
        AnonymousClass93 anonymousClass93;
        synchronized (this.A05) {
            try {
                anonymousClass93 = this.A01;
                if (anonymousClass93.A08 && AbstractC03624a.A02 >= 32 && this.A02 != null) {
                    this.A02.A03(this, (Looper) C3M.A02(Looper.myLooper()));
                }
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw th;
            }
        }
        int A02 = ec.A02();
        E9[] A0X = A0X(ec, iArr, iArr2, anonymousClass93);
        A0P(ec, anonymousClass93, A0X);
        A0Q(ec, anonymousClass93, A0X);
        for (int rendererCount = 0; rendererCount < A02; rendererCount++) {
            int A03 = ec.A03(rendererCount);
            if (anonymousClass93.A0R(rendererCount) || anonymousClass93.A0H.contains(Integer.valueOf(A03))) {
                A0X[rendererCount] = null;
            }
        }
        InterfaceC1871lj[] A5T = this.A04.A5T(A0X, A00(), c1908mL, timeline);
        C7G[] c7gArr = new C7G[A02];
        for (int i = 0; i < A02; i++) {
            c7gArr[i] = !(anonymousClass93.A0R(i) || anonymousClass93.A0H.contains(Integer.valueOf(ec.A03(i)))) && (ec.A03(i) == -2 || A5T[i] != null) ? C7G.A01 : null;
        }
        if (anonymousClass93.A0D) {
            A0R(ec, iArr, c7gArr, A5T);
        }
        return Pair.create(c7gArr, A5T);
    }

    public final /* synthetic */ AbstractC0517Am A0e(AnonymousClass93 anonymousClass93, boolean z, int i, C2027oH c2027oH, int[] iArr) {
        return C1887lz.A03(i, c2027oH, anonymousClass93, iArr, z, new InterfaceC1727jB() { // from class: com.facebook.ads.redexgen.X.m2
            @Override // com.facebook.ads.redexgen.X.InterfaceC1727jB
            public final boolean A44(Object obj) {
                boolean A0T;
                A0T = AnonymousClass92.this.A0T((C2061or) obj);
                return A0T;
            }
        });
    }
}
