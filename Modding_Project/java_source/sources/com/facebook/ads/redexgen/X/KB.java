package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import com.tencent.thumbplayer.tcmedia.core.common.TPPixelFormat;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: assets/audience_network.dex */
public abstract class KB {
    public static byte[] A00;
    public static String[] A01 = {"6VJGxYRVGzkOFylAWqo", "TQDRStRjVTcp84EAqriMHD1W", "Y0YMWliml1c9R0RakThzWHnpZrTCSrBu", "hjS3TiOTsIfHHkhXtOFrFHFAaycKEbQY", "GvjOo5wC83Psjizly91M8Dr7lGNbFkes", "VFbjP0ZwmY6IK0pKGb7V8NSJj5u1SgyV", "T0F9FjreghpLds1JHOV1Zh8xCqpA0ysb", "F9ZBXP7xE9Rr53rKOaE"};
    public static final Pattern A02;
    public static final Map<String, Integer> A03;
    public static final Map<String, Integer> A04;
    public static final Pattern A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static int A06(List<C0761Jz> list, String str, K7 k7) {
        List<K8> A0E = A0E(list, str, k7);
        for (int i = 0; i < A0E.size(); i++) {
            C0761Jz c0761Jz = A0E.get(i).A01;
            if (c0761Jz.A07() != -1) {
                return c0761Jz.A07();
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
        if (r10 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        r0 = r4 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        if (r10 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
        r0 = r4 - 1;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString A07(java.lang.String r11, java.lang.String r12, java.util.List<com.facebook.ads.redexgen.X.C0761Jz> r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A07(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static K3 A0A(C4J c4j, List<C0761Jz> list) {
        String A0T = c4j.A0T();
        if (A0T == null) {
            return null;
        }
        Matcher matcher = A02.matcher(A0T);
        if (matcher.matches()) {
            return A0B(null, matcher, c4j, list);
        }
        String A0T2 = c4j.A0T();
        if (A0T2 == null) {
            return null;
        }
        Matcher matcher2 = A02.matcher(A0T2);
        if (matcher2.matches()) {
            return A0B(A0T.trim(), matcher2, c4j, list);
        }
        return null;
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 6);
        }
        return new String(copyOfRange);
    }

    public static void A0F() {
        A00 = new byte[]{81, 0, 85, 68, 48, 63, 71, 83, 69, 86, 68, 48, 63, 71, 69, 0, 106, 118, 51, Ascii.DC4, Ascii.FF, Ascii.ESC, Ascii.SYN, 19, Ascii.RS, 90, 93, Ascii.FF, Ascii.US, 8, Ascii.SO, 19, Ascii.EM, Ascii.ESC, Ascii.SYN, 93, 90, Ascii.FF, Ascii.ESC, Ascii.SYN, Ascii.SI, Ascii.US, SignedBytes.MAX_POWER_OF_TWO, 90, 63, Ascii.CAN, 0, Ascii.ETB, Ascii.SUB, Ascii.US, Ascii.DC2, 86, Ascii.ETB, Ascii.SUB, Ascii.US, 17, Ascii.CAN, Ascii.ESC, 19, Ascii.CAN, 2, 86, 0, Ascii.ETB, Ascii.SUB, 3, 19, 76, 86, 82, 117, 109, 122, 119, 114, Byte.MAX_VALUE, 59, 122, 117, 120, 115, 116, 105, 59, 109, 122, 119, 110, 126, 33, 59, 46, Ascii.SYN, Ascii.DC4, Ascii.CR, Ascii.CR, Ascii.DC4, 19, Ascii.SUB, 93, Ascii.US, Ascii.FS, Ascii.EM, 93, Ascii.RS, 8, Ascii.CAN, 93, Ascii.SO, Ascii.CAN, 9, 9, Ascii.DC4, 19, Ascii.SUB, 71, 93, 63, 7, 5, Ascii.FS, Ascii.FS, 5, 2, Ascii.VT, 76, Ascii.SI, Ascii.EM, 9, 76, Ascii.ESC, 5, Ascii.CAN, 4, 76, Ascii.SO, Ascii.CR, 8, 76, 4, 9, Ascii.CR, 8, 9, Ascii.RS, 86, 76, 53, Ascii.SO, Ascii.VT, Ascii.SO, Ascii.SI, Ascii.ETB, Ascii.SO, SignedBytes.MAX_POWER_OF_TWO, 3, Ascii.NAK, 5, SignedBytes.MAX_POWER_OF_TWO, 19, 5, Ascii.DC4, Ascii.DC4, 9, Ascii.SO, 7, SignedBytes.MAX_POWER_OF_TWO, 10, 56, 63, 43, 41, 41, Ascii.RS, 40, 56, Ascii.CR, 60, 47, 46, 56, 47, 40, 83, 47, 93, 46, 123, Ascii.CR, 121, 118, Ascii.SO, Ascii.FF, 121, 86, Ascii.SO, 8, 8, Ascii.ESC, 121, 86, Ascii.SO, Ascii.CR, 121, 118, Ascii.SO, Ascii.FF, Ascii.CR, Ascii.VT, Ascii.SI, Ascii.FF, Ascii.SUB, 1, 81, 92, 89, 87, 94, 10, 6, Ascii.ESC, 45, 93, 88, 96, 93, 83, 94, 92, 84, 4, 1, 57, 4, 10, 19, 3, 119, 114, 74, 118, 108, 116, 123, 118, 115, 75, 120, 125, 121, 113, 7, 2, 58, 8, 4, 2, 0, Ascii.VT, 17, 4, 39, 34, Ascii.SUB, 55, 32, 33, SignedBytes.MAX_POWER_OF_TWO, 69, 125, 85, 74, 75, 86, 71, 91, 94, 102, SignedBytes.MAX_POWER_OF_TWO, 92, 85, 85, 86, 78, 6, 8, 5, 7, Ascii.SI, Ascii.SI, 1, Ascii.CAN, 8, 7, 101, 99, 104, 114, 99, 116, 7, Ascii.GS, 5, 10, 117, 126, 116, 65, 82, 0, 3, Ascii.CR, 4, 5, Ascii.CAN, 3, 4, Ascii.CR, 74, Ascii.US, 4, Ascii.EM, Ascii.US, Ascii.SUB, Ascii.SUB, 5, Ascii.CAN, Ascii.RS, Ascii.SI, Ascii.SO, 74, Ascii.SI, 4, Ascii.RS, 3, Ascii.RS, 19, 80, 74, 77, 76, 90, 87, 88, 81, 69, 76, 79, 93, 107, 110, 106, 98, 65, 68, 67, 72, 35, 38, 33, 42, 98, 35, 42, 41, 59, 113, 116, 115, 120, 48, 111, 116, 122, 117, 105, 106, 116, 113, 105, 79, 67, 69, 71, 76, 86, 67, 5, 1, Ascii.FF, Ascii.FF, 4, Ascii.CR, 53, 57, 40, 43, Ascii.GS, 2, Ascii.RS, 4, Ascii.EM, 4, 2, 3, 73, 94, 95, 84, 79, 65, 78, 82, 37, 59, 69, 67, 7, 0, Ascii.ETB, Ascii.FF, 86, 76, 95, SignedBytes.MAX_POWER_OF_TWO, 0, 7, Ascii.DC2, 1, 7, 110, 124, 44, 63, 40, 46, 51, 57, 59, 54, 68, 91, 90, 71, 86, 52, 40, 33, 33, 34, 58};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static void A0H(SpannableStringBuilder spannableStringBuilder, String str, K7 k7, List<K6> list, List<C0761Jz> list2) {
        K7 k72;
        K7 k73;
        K7 k74;
        int i;
        int A06 = A06(list2, str, k7);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, K6.A03());
        int i2 = 0;
        int i3 = k7.A00;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            k72 = ((K6) arrayList.get(i4)).A01;
            if (A0C(415, 2, 49).equals(k72.A01)) {
                K6 k6 = (K6) arrayList.get(i4);
                k73 = k6.A01;
                int A002 = A00(A06(list2, str, k73), A06, 1);
                k74 = k6.A01;
                int i5 = k74.A00 - i2;
                i = k6.A00;
                int i6 = i - i2;
                CharSequence subSequence = spannableStringBuilder.subSequence(i5, i6);
                spannableStringBuilder.delete(i5, i6);
                spannableStringBuilder.setSpan(new C2005nv(subSequence.toString(), A002), i3, i5, 33);
                i2 += subSequence.length();
                i3 = i5;
            }
        }
    }

    static {
        A0F();
        A02 = Pattern.compile(A0C(187, 26, 35));
        A05 = Pattern.compile(A0C(3, 12, 106));
        HashMap hashMap = new HashMap();
        hashMap.put(A0C(440, 5, 53), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put(A0C(349, 4, 1), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put(A0C(300, 4, 98), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put(A0C(405, 3, 61), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put(A0C(445, 6, 75), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put(A0C(380, 7, 36), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put(A0C(289, 4, 107), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put(A0C(284, 5, 98), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultColors = Collections.unmodifiableMap(hashMap);
        A04 = defaultColors;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(A0C(267, 8, 36), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put(A0C(TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 7, 18), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put(A0C(237, 7, 19), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put(A0C(261, 6, 67), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put(A0C(275, 9, 63), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put(A0C(251, 10, 99), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put(A0C(230, 7, 96), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put(A0C(Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, 8, 57), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultBackgroundColors = Collections.unmodifiableMap(hashMap2);
        A03 = defaultBackgroundColors;
    }

    public static int A00(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A01(String str) {
        char c;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A0C(294, 6, 0))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (A01[1].length() != 9) {
                    A01[4] = "zDr3pXiReOD9C2voGl4pNyTssnTsthj2";
                    if (str.equals(A0C(387, 6, 110))) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(TypedValues.CycleType.TYPE_WAVE_PHASE, 5, 117))) {
                    c = 0;
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
                return 0;
            case 1:
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                AnonymousClass44.A07(A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91), A0C(69, 22, 29) + str);
                return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A02(String str) {
        char c;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals(A0C(357, 9, 73))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1364013995:
                if (str.equals(A0C(294, 6, 0))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1276788989:
                if (str.equals(A0C(366, 10, 27))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (str.equals(A0C(387, 6, 110))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(TypedValues.CycleType.TYPE_WAVE_PHASE, 5, 117))) {
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
                return 0;
            case 2:
            case 3:
                return 1;
            case 4:
            case 5:
                return 2;
            default:
                AnonymousClass44.A07(A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91), A0C(69, 22, 29) + str);
                return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A03(String str) {
        char c;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A0C(294, 6, 0))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1074341483:
                if (str.equals(A0C(387, 6, 110))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (str.equals(A0C(345, 4, 47))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (str.equals(A0C(408, 5, 32))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(TypedValues.CycleType.TYPE_WAVE_PHASE, 5, 117))) {
                    c = 0;
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
                return 1;
            case 1:
                return 4;
            case 2:
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            default:
                AnonymousClass44.A07(A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91), A0C(44, 25, 112) + str);
                return 2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A04(String str) {
        char c;
        switch (str.hashCode()) {
            case 3462:
                if (str.equals(A0C(376, 2, 0))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3642:
                if (str.equals(A0C(413, 2, 81))) {
                    c = 0;
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
                return 1;
            case 1:
                return 2;
            default:
                AnonymousClass44.A07(A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91), A0C(18, 26, 124) + str);
                return Integer.MIN_VALUE;
        }
    }

    public static int A05(String str, int i) {
        int indexOf = str.indexOf(62, i);
        if (indexOf == -1) {
            int index = str.length();
            return index;
        }
        int index2 = indexOf + 1;
        return index2;
    }

    public static C3C A08(String str) {
        KA builder = new KA();
        A0L(str, builder);
        return builder.A07();
    }

    public static C2012o2 A09(CharSequence charSequence) {
        KA infoBuilder = new KA();
        infoBuilder.A0A = charSequence;
        return infoBuilder.A07().A0H();
    }

    public static K3 A0B(String str, Matcher matcher, C4J c4j, List<C0761Jz> list) {
        KA ka = new KA();
        try {
            ka.A09 = KC.A01((String) C3M.A01(matcher.group(1)));
            ka.A08 = KC.A01((String) C3M.A01(matcher.group(2)));
            A0L((String) C3M.A01(matcher.group(3)), ka);
            StringBuilder sb = new StringBuilder();
            String A0T = c4j.A0T();
            while (true) {
                boolean isEmpty = TextUtils.isEmpty(A0T);
                if (A01[5].charAt(2) == 'h') {
                    throw new RuntimeException();
                }
                A01[1] = "2AwiW2AhFaTR";
                if (!isEmpty) {
                    if (sb.length() > 0) {
                        sb.append(A0C(0, 1, 93));
                    }
                    sb.append(A0T.trim());
                    A0T = c4j.A0T();
                } else {
                    ka.A0A = A07(str, sb.toString(), list);
                    return ka.A08();
                }
            }
        } catch (NumberFormatException unused) {
            AnonymousClass44.A07(A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91), A0C(117, 30, 106) + matcher.group());
            return null;
        }
    }

    public static String A0D(String str) {
        String trim = str.trim();
        C3M.A07(!trim.isEmpty());
        return AbstractC03624a.A1P(trim, A0C(182, 5, 117))[0];
    }

    public static List<K8> A0E(List<C0761Jz> list, String str, K7 k7) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C0761Jz c0761Jz = list.get(i);
            int i2 = c0761Jz.A09(str, k7.A01, k7.A03, k7.A02);
            if (i2 > 0) {
                arrayList.add(new K8(i2, c0761Jz));
            }
        }
        Collections.sort(arrayList);
        if (A01[3].charAt(21) != 'Z') {
            A01[3] = "10DtqaDx3Mjis7pngfRsmCfeCaw0vB2Q";
            return arrayList;
        }
        throw new RuntimeException();
    }

    public static void A0G(SpannableStringBuilder spannableStringBuilder, C0761Jz c0761Jz, int i, int i2) {
        if (c0761Jz == null) {
            return;
        }
        if (c0761Jz.A08() != -1) {
            C3H.A00(spannableStringBuilder, new StyleSpan(c0761Jz.A08()), i, i2, 33);
        }
        if (c0761Jz.A0S()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        boolean A0T = c0761Jz.A0T();
        if (A01[3].charAt(21) != 'Z') {
            A01[3] = "1YLI45HvZzSZe2yut9V0MUcCwjpGC5gE";
            if (A0T) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
            if (c0761Jz.A0R()) {
                C3H.A00(spannableStringBuilder, new ForegroundColorSpan(c0761Jz.A05()), i, i2, 33);
            }
            if (c0761Jz.A0Q()) {
                C3H.A00(spannableStringBuilder, new BackgroundColorSpan(c0761Jz.A04()), i, i2, 33);
            }
            if (c0761Jz.A0K() != null) {
                C3H.A00(spannableStringBuilder, new TypefaceSpan(c0761Jz.A0K()), i, i2, 33);
            }
            switch (c0761Jz.A06()) {
                case 1:
                    C3H.A00(spannableStringBuilder, new AbsoluteSizeSpan((int) c0761Jz.A03(), true), i, i2, 33);
                    break;
                case 2:
                    C3H.A00(spannableStringBuilder, new RelativeSizeSpan(c0761Jz.A03()), i, i2, 33);
                    break;
                case 3:
                    C3H.A00(spannableStringBuilder, new RelativeSizeSpan(c0761Jz.A03() / 100.0f), i, i2, 33);
                    break;
            }
            if (c0761Jz.A0P()) {
                spannableStringBuilder.setSpan(new C2006nw(), i, i2, 33);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public static void A0I(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String str : set) {
            boolean containsKey = A04.containsKey(str);
            if (A01[1].length() == 9) {
                throw new RuntimeException();
            }
            A01[5] = "YNIn8hUAyZDjSH3JhERqEXsouXgj93JS";
            if (containsKey) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(A04.get(str).intValue()), i, i2, 33);
            } else {
                Map<String, Integer> map = A03;
                String className = A01[3];
                if (className.charAt(21) != 'Z') {
                    A01[3] = "z1JdxX10iLj514Di1TKQv9nGlpU0X7eV";
                    if (map.containsKey(str)) {
                        spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(str).intValue()), i, i2, 33);
                    }
                } else if (map.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(str).intValue()), i, i2, 33);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0J(java.lang.String r4, android.text.SpannableStringBuilder r5) {
        /*
            int r0 = r4.hashCode()
            switch(r0) {
                case 3309: goto L96;
                case 3464: goto Lc7;
                case 96708: goto L6a;
                case 3374865: goto L59;
                default: goto L7;
            }
        L7:
            r0 = -1
        L8:
            switch(r0) {
                case 0: goto L53;
                case 1: goto L4d;
                case 2: goto L47;
                case 3: goto L41;
                default: goto Lb;
            }
        Lb:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 310(0x136, float:4.34E-43)
            r1 = 31
            r0 = 108(0x6c, float:1.51E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r3 = r0.append(r4)
            r2 = 16
            r1 = 2
            r0 = 87
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 91
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.X.AnonymousClass44.A07(r0, r3)
        L40:
            return
        L41:
            r0 = 38
            r5.append(r0)
            goto L40
        L47:
            r0 = 32
            r5.append(r0)
            goto L40
        L4d:
            r0 = 62
            r5.append(r0)
            goto L40
        L53:
            r0 = 60
            r5.append(r0)
            goto L40
        L59:
            r2 = 393(0x189, float:5.51E-43)
            r1 = 4
            r0 = 93
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L8
        L6a:
            r2 = 218(0xda, float:3.05E-43)
            r1 = 3
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r3 = r4.equals(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.KB.A01
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 104(0x68, float:1.46E-43)
            if (r1 == r0) goto Lb5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            java.lang.String r1 = "0e7ADHSVMy4QvuNOaRsoWPMCToECBQOy"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "0jhJvpoe9graGazv1ZIcpM6WWqxYTLD3"
            r0 = 6
            r2[r0] = r1
            if (r3 == 0) goto L7
            r0 = 3
            goto L8
        L96:
            r2 = 307(0x133, float:4.3E-43)
            r1 = 2
            r0 = 32
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r3 = r4.equals(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lbb
        Lb5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lbb:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            java.lang.String r1 = "Z6Yq6aysKH1bmBhKZFPJxCKyS02If"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L7
            r0 = 1
            goto L8
        Lc7:
            r2 = 378(0x17a, float:5.3E-43)
            r1 = 2
            r0 = 27
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0J(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Incorrect condition in loop: B:43:0x00ee */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0K(java.lang.String r8, com.facebook.ads.redexgen.X.K7 r9, java.util.List<com.facebook.ads.redexgen.X.K6> r10, android.text.SpannableStringBuilder r11, java.util.List<com.facebook.ads.redexgen.X.C0761Jz> r12) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0K(java.lang.String, com.facebook.ads.redexgen.X.K7, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    public static void A0L(String str, KA ka) {
        String value = A0C(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 15, 91);
        Matcher matcher = A05.matcher(str);
        while (matcher.find()) {
            Object A012 = C3M.A01(matcher.group(1));
            String[] strArr = A01;
            if (strArr[2].charAt(10) == strArr[6].charAt(10)) {
                throw new RuntimeException();
            }
            A01[3] = "IuLRiWa83LmFflMS6GnqXQo4BkpBDAaM";
            String str2 = (String) A012;
            String str3 = (String) C3M.A01(matcher.group(2));
            try {
                if (A0C(353, 4, 43).equals(str2)) {
                    A0M(str3, ka);
                } else if (A0C(213, 5, 54).equals(str2)) {
                    ka.A06 = A03(str3);
                } else if (A0C(397, 8, 107).equals(str2)) {
                    A0N(str3, ka);
                } else if (A0C(TypedValues.CycleType.TYPE_WAVE_SHAPE, 4, 35).equals(str2)) {
                    ka.A02 = KC.A00(str3);
                } else if (A0C(432, 8, 92).equals(str2)) {
                    ka.A07 = A04(str3);
                } else {
                    AnonymousClass44.A07(value, A0C(147, 20, 102) + str2 + A0C(15, 1, 60) + str3);
                }
            } catch (NumberFormatException unused) {
                AnonymousClass44.A07(value, A0C(91, 26, 123) + matcher.group());
            }
        }
    }

    public static void A0M(String str, KA ka) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            ka.A03 = A01(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith(A0C(2, 1, 118))) {
            ka.A00 = KC.A00(str);
            ka.A04 = 0;
            return;
        }
        int commaIndex2 = Integer.parseInt(str);
        ka.A00 = commaIndex2;
        ka.A04 = 1;
    }

    public static void A0N(String str, KA ka) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            ka.A05 = A02(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        ka.A01 = KC.A00(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007f, code lost:
        if (r7.equals(A0C(431, 1, 12)) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        r0 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r7.equals(A0C(431, 1, 6)) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0O(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0O(java.lang.String):boolean");
    }
}
