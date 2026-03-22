package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.PlaybackException;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.work.WorkInfo;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import com.tencent.thumbplayer.tcmedia.core.common.TPPixelFormat;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Inflater;
import kotlin.io.encoding.Base64;
import kotlin.text.Typography;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: com.facebook.ads.redexgen.X.nT  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1978nT implements InterfaceC0594Dn {
    public static byte[] A01;
    public final /* synthetic */ C1977nS A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{118, 67, 67, 82, 90, 71, 67, 82, 83, Ascii.ETB, 67, 88, Ascii.ETB, 84, 69, 82, 86, 67, 82, Ascii.ETB, 83, 82, 84, 88, 83, 82, 69, Ascii.ETB, 81, 88, 69, Ascii.ETB, 66, 89, 68, 66, 71, 71, 88, 69, 67, 82, 83, Ascii.ETB, 81, 88, 69, 90, 86, 67, Ascii.FS, Ascii.CR, Ascii.CR, 17, Ascii.DC4, Ascii.RS, Ascii.FS, 9, Ascii.DC4, Ascii.DC2, 19, 82, Ascii.RS, Ascii.CAN, Ascii.FS, 80, 75, 77, 69, 121, 104, 104, 116, 113, 123, 121, 108, 113, 119, 118, 55, 123, 125, 121, 53, 47, 40, 32, 107, 122, 122, 102, 99, 105, 107, 126, 99, 101, 100, 37, 110, 124, 104, 121, Byte.MAX_VALUE, 104, 121, 69, 84, 84, 72, 77, 71, 69, 80, 77, 75, 74, Ascii.VT, 84, 67, 87, 5, Ascii.DC4, Ascii.DC4, 8, Ascii.CR, 7, 5, Ascii.DLE, Ascii.CR, Ascii.VT, 10, 75, Ascii.DLE, Ascii.DLE, 9, 8, 79, Ascii.FS, 9, 8, 0, 17, 17, Ascii.CR, 8, 2, 0, Ascii.NAK, 8, Ascii.SO, Ascii.SI, 78, Ascii.EM, 76, Ascii.FF, 17, 85, 76, 2, 4, 0, 76, 87, 81, 89, 53, 36, 36, 56, Base64.padSymbol, 55, 53, 32, Base64.padSymbol, 59, 58, 123, 44, 121, 57, 36, 96, 121, 34, 32, 32, 50, 35, 35, 63, 58, 48, 50, 39, 58, 60, Base64.padSymbol, 124, 43, 126, 34, 38, 58, 48, 56, 39, 58, 62, 54, 126, 39, 43, 96, 52, Ascii.FF, Ascii.GS, Ascii.GS, 1, 4, Ascii.SO, Ascii.FF, Ascii.EM, 4, 2, 3, 66, Ascii.NAK, SignedBytes.MAX_POWER_OF_TWO, Ascii.RS, Ascii.CAN, Ascii.SI, Ascii.US, 4, Ascii.GS, 68, 85, 72, 68, Ascii.US, 70, 68, 68, 83, 66, 95, 83, 8, 95, 10, 84, 84, 70};
    }

    public C1978nT(C1977nS c1977nS) {
        this.A00 = c1977nS;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0594Dn
    public final InterfaceC1800kN A5C(C2061or c2061or) {
        char c;
        String str = c2061or.A0W;
        switch (str.hashCode()) {
            case -1351681404:
                if (str.equals(A00(88, 19, 24))) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1248334819:
                if (str.equals(A00(107, 15, 54))) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1026075066:
                if (str.equals(A00(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 21, 70))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1004728940:
                if (str.equals(A00(236, 8, 34))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 691401887:
                if (str.equals(A00(TsExtractor.TS_PACKET_SIZE, 28, 65))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 822864842:
                if (str.equals(A00(TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 10, 53))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 930165504:
                if (str.equals(A00(TPOptionalID.OPTION_ID_BEFORE_LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS, 25, 115))) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1566015601:
                if (str.equals(A00(50, 19, 111))) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1566016562:
                if (str.equals(A00(69, 19, 10))) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1668750253:
                if (str.equals(A00(216, 20, 127))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1693976202:
                if (str.equals(A00(122, 20, 118))) {
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
                return new AbstractC04507k() { // from class: com.facebook.ads.redexgen.X.0k
                    public static byte[] A02;
                    public static String[] A03 = {"epLQ4LbruRQu4TauEDrO5bv5Gt", "lRHUrkH9gFGX2N51jXHSI4WiLesC2sz", "FQaGWX09aBSonO1KXWblQ89ZNSDo33Hs", "Tkmuz5Wj47OzYTdqGDI6w0S24YPshGEJ", "sgOZPElMCLLZtQnBcWUjhEzDIZNKx3Aa", "fl5M4MkFrWZTay9Eb0GxyqH", "d522uHqhkgB6wqoRNygeE3zqn3vb1GZ9", "ktGThckFXvstcJxcyByVYeW6HtIWaGJ1"};
                    public final C4J A00;
                    public final C0757Jv A01;

                    public static String A01(int i, int i2, int i3) {
                        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 88);
                        }
                        return new String(copyOfRange);
                    }

                    public static void A02() {
                        A02 = new byte[]{123, Ascii.SUB, 73, 78, 67, 86, 95, Ascii.SUB, 88, 86, 85, 89, 81, Ascii.SUB, 77, 91, 73, Ascii.SUB, 92, 85, 79, 84, 94, Ascii.SUB, 91, 92, 78, 95, 72, Ascii.SUB, 78, 82, 95, Ascii.SUB, 92, 83, 72, 73, 78, Ascii.SUB, 89, 79, 95, Ascii.DC4, 108, 109, 118, 103, 88, 95, 82, 71, 78, 53, 7, 0, Ascii.DC4, Ascii.SYN, Ascii.SYN, 38, 7, 1, Ascii.CR, 6, 7, Ascii.DLE};
                    }

                    static {
                        A02();
                    }

                    {
                        A01(53, 13, 58);
                        this.A00 = new C4J();
                        this.A01 = new C0757Jv();
                    }

                    public static int A00(C4J c4j) {
                        int currentInputPosition = -1;
                        int i = 0;
                        while (currentInputPosition == -1) {
                            i = c4j.A09();
                            String A0T = c4j.A0T();
                            if (A0T == null) {
                                currentInputPosition = 0;
                            } else if (A01(48, 5, 83).equals(A0T)) {
                                currentInputPosition = 2;
                            } else if (A0T.startsWith(A01(44, 4, 122))) {
                                currentInputPosition = 1;
                            } else {
                                currentInputPosition = 3;
                            }
                        }
                        c4j.A0f(i);
                        return currentInputPosition;
                    }

                    public static void A03(C4J c4j) {
                        do {
                        } while (!TextUtils.isEmpty(c4j.A0T()));
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    public final J7 A0g(byte[] bArr, int i, boolean z) throws C1799kM {
                        K3 A0A;
                        this.A00.A0j(bArr, i);
                        ArrayList arrayList = new ArrayList();
                        try {
                            KC.A04(this.A00);
                            do {
                            } while (!TextUtils.isEmpty(this.A00.A0T()));
                            ArrayList arrayList2 = new ArrayList();
                            while (true) {
                                int A00 = A00(this.A00);
                                if (A00 == 0) {
                                    return new C1780k3(arrayList2);
                                }
                                String[] strArr = A03;
                                if (strArr[3].charAt(29) != strArr[7].charAt(29)) {
                                    throw new RuntimeException();
                                }
                                String[] strArr2 = A03;
                                strArr2[5] = "xiLYwX29jkzhCedrUoNIffc";
                                strArr2[0] = "YvTJvYd1hKFZiQGGAeLzXV3lAN";
                                if (A00 == 1) {
                                    A03(this.A00);
                                } else if (A00 == 2) {
                                    if (arrayList2.isEmpty()) {
                                        this.A00.A0T();
                                        arrayList.addAll(this.A01.A0F(this.A00));
                                    } else {
                                        throw new C1799kM(A01(0, 44, 98));
                                    }
                                } else if (A00 == 3 && (A0A = KB.A0A(this.A00, arrayList)) != null) {
                                    arrayList2.add(A0A);
                                }
                            }
                        } catch (C03182i e) {
                            throw new C1799kM(e);
                        }
                    }
                };
            case 1:
                return new C02750p(c2061or.A0X);
            case 2:
                return new AbstractC04507k() { // from class: com.facebook.ads.redexgen.X.0l
                    public static byte[] A02;
                    public final C4J A00;
                    public final K2 A01;

                    static {
                        A02();
                    }

                    public static String A01(int i, int i2, int i3) {
                        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 125);
                        }
                        return new String(copyOfRange);
                    }

                    public static void A02() {
                        A02 = new byte[]{Ascii.SYN, 59, 48, 60, 58, Base64.padSymbol, 57, 50, 65, 50, -19, Ascii.SUB, Base64.padSymbol, 1, 36, 50, 47, 67, 65, 65, -19, 33, 60, Base64.padSymbol, -19, Ascii.EM, 50, 67, 50, 57, -19, 47, 60, 69, -19, 53, 50, 46, 49, 50, 63, -19, 51, 60, 66, 59, 49, -5, 47, 84, 73, 85, 83, 86, 82, 75, 90, 75, 6, 92, 90, 90, 6, 73, 91, 75, 6, 72, 85, 94, 6, 78, 75, 71, 74, 75, 88, 6, 76, 85, 91, 84, 74, Ascii.DC4, 62, 97, 37, 72, 86, 83, 103, 101, 101, 53, 86, 84, 96, 85, 86, 99};
                    }

                    {
                        A01(84, 16, 116);
                        this.A00 = new C4J();
                        this.A01 = new K2();
                    }

                    public static C2012o2 A00(C4J c4j, int i) throws C1799kM {
                        C3C c3c = null;
                        CharSequence charSequence = null;
                        while (i > 0) {
                            if (i >= 8) {
                                int A0C = c4j.A0C();
                                int boxType = c4j.A0C();
                                int boxSize = A0C - 8;
                                String A0r = AbstractC03624a.A0r(c4j.A0l(), c4j.A09(), boxSize);
                                c4j.A0g(boxSize);
                                i = (i - 8) - boxSize;
                                if (boxType == 1937011815) {
                                    c3c = KB.A08(A0r);
                                } else if (boxType == 1885436268) {
                                    charSequence = KB.A07(null, A0r.trim(), Collections.emptyList());
                                }
                            } else {
                                throw new C1799kM(A01(48, 36, 105));
                            }
                        }
                        if (charSequence == null) {
                            charSequence = A01(0, 0, 70);
                        }
                        if (c3c != null) {
                            C3C cueBuilder = c3c.A0G(charSequence);
                            return cueBuilder.A0H();
                        }
                        return KB.A09(charSequence);
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    public final J7 A0g(byte[] bArr, int i, boolean z) throws C1799kM {
                        this.A00.A0j(bArr, i);
                        ArrayList arrayList = new ArrayList();
                        while (this.A00.A07() > 0) {
                            if (this.A00.A07() >= 8) {
                                int boxType = this.A00.A0C();
                                int boxSize = this.A00.A0C();
                                if (boxSize == 1987343459) {
                                    arrayList.add(A00(this.A00, boxType - 8));
                                } else {
                                    this.A00.A0g(boxType - 8);
                                }
                            } else {
                                throw new C1799kM(A01(0, 48, 80));
                            }
                        }
                        return new C1781k4(arrayList);
                    }
                };
            case 3:
                return new AbstractC04507k() { // from class: com.facebook.ads.redexgen.X.0n
                    public static byte[] A01;
                    public static String[] A02 = {"p1JjjwHZ", "QiEjWLFXcVg7o", "nhuwGOrxAOZ3j55eqRpahgaz0GwfX6tj", "6yXpXZapadp8VRb316vvjAm5hV4yaSxg", "TGmXy7X22d03bAdpvyZyh6X1I", "ARR0m23eYWSlS3UtdvlKiKeM", "Lwdw5zAjTw10lXQrei1yTZcIsGO5NNLU", "PxBJlerCHj8MDVjvQLeWSQf3c"};
                    public static final Pattern A03;
                    public static final Pattern A04;
                    public static final C0743Jh A05;
                    public static final C0744Ji A06;
                    public static final Pattern A07;
                    public static final Pattern A08;
                    public static final Pattern A09;
                    public static final Pattern A0A;
                    public static final Pattern A0B;
                    public final XmlPullParserFactory A00;

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code restructure failed: missing block: B:38:0x0119, code lost:
                        if (r3.equals(A0A(1679, 1, 82)) != false) goto L26;
                     */
                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public static long A01(java.lang.String r10, com.facebook.ads.redexgen.X.C0744Ji r11) throws com.facebook.ads.redexgen.X.C1799kM {
                        /*
                            Method dump skipped, instructions count: 428
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02730n.A01(java.lang.String, com.facebook.ads.redexgen.X.Ji):long");
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    public static C0743Jh A03(XmlPullParser xmlPullParser, C0743Jh c0743Jh) throws C1799kM {
                        String attributeValue = xmlPullParser.getAttributeValue(A0A(1472, 35, 92), A0A(1285, 14, 65));
                        if (attributeValue == null) {
                            return c0743Jh;
                        }
                        Matcher matcher = A07.matcher(attributeValue);
                        boolean matches = matcher.matches();
                        String A0A2 = A0A(166, 36, 70);
                        String A0A3 = A0A(892, 11, 16);
                        if (!matches) {
                            AnonymousClass44.A07(A0A3, A0A2 + attributeValue);
                            return c0743Jh;
                        }
                        try {
                            int parseInt = Integer.parseInt((String) C3M.A01(matcher.group(1)));
                            int parseInt2 = Integer.parseInt((String) C3M.A01(matcher.group(2)));
                            if (parseInt == 0 || parseInt2 == 0) {
                                throw new C1799kM(A0A(557, 24, 126) + parseInt + A0A(0, 1, 42) + parseInt2);
                            }
                            return new C0743Jh(parseInt, parseInt2);
                        } catch (NumberFormatException unused) {
                            AnonymousClass44.A07(A0A3, A0A2 + attributeValue);
                            return c0743Jh;
                        }
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException: Index 26 out of bounds for length 25
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
                    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
                    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
                    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
                     */
                    public static C0746Jk A06(XmlPullParser xmlPullParser, C0746Jk c0746Jk, Map<String, C0747Jl> map, C0744Ji c0744Ji) throws C1799kM {
                        char c2;
                        long j = -9223372036854775807L;
                        long j2 = -9223372036854775807L;
                        long j3 = -9223372036854775807L;
                        String A0A2 = A0A(0, 0, 87);
                        String str2 = null;
                        String[] strArr = null;
                        int attributeCount = xmlPullParser.getAttributeCount();
                        C0753Jr A092 = A09(xmlPullParser, null);
                        for (int i = 0; i < attributeCount; i++) {
                            String attributeName = xmlPullParser.getAttributeName(i);
                            String attributeValue = xmlPullParser.getAttributeValue(i);
                            switch (attributeName.hashCode()) {
                                case -934795532:
                                    if (attributeName.equals(A0A(1613, 6, 33))) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 99841:
                                    if (attributeName.equals(A0A(1347, 3, 53))) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 100571:
                                    if (attributeName.equals(A0A(1352, 3, 17))) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 93616297:
                                    if (attributeName.equals(A0A(1270, 5, 60))) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 109780401:
                                    if (attributeName.equals(A0A(1655, 5, 93))) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1292595405:
                                    if (A02[0].length() != 7) {
                                        A02[0] = "FcYwA1owpw";
                                        if (attributeName.equals(A0A(1232, 15, 51))) {
                                            c2 = 5;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    } else {
                                        throw new RuntimeException();
                                    }
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            switch (c2) {
                                case 0:
                                    j2 = A01(attributeValue, c0744Ji);
                                    break;
                                case 1:
                                    j3 = A01(attributeValue, c0744Ji);
                                    break;
                                case 2:
                                    j = A01(attributeValue, c0744Ji);
                                    break;
                                case 3:
                                    String[] A0G = A0G(attributeValue);
                                    if (A0G.length > 0) {
                                        strArr = A0G;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 4:
                                    if (map.containsKey(attributeValue)) {
                                        A0A2 = attributeValue;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 5:
                                    if (attributeValue.startsWith(A0A(1, 1, 51))) {
                                        str2 = attributeValue.substring(1);
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                        }
                        if (c0746Jk != null && c0746Jk.A02 != -9223372036854775807L) {
                            if (j2 != -9223372036854775807L) {
                                long j4 = c0746Jk.A02;
                                if (A02[3].charAt(8) != 'a') {
                                    j2 += j4;
                                } else {
                                    String[] strArr2 = A02;
                                    strArr2[6] = "4egwN988QRVxw0yAxczVmSNgNtgmaxGX";
                                    strArr2[2] = "SadwrkDoEbwTlMV1MTCuskhR2RkUu0E1";
                                    j2 += j4;
                                }
                            }
                            if (j3 != -9223372036854775807L) {
                                long j5 = c0746Jk.A02;
                                String[] strArr3 = A02;
                                if (strArr3[1].length() == strArr3[5].length()) {
                                    throw new RuntimeException();
                                }
                                A02[3] = "SZxfmWq4amNcL9TaQQOLLAMwfZNolhcd";
                                j3 += j5;
                            }
                        }
                        if (j3 == -9223372036854775807L) {
                            if (j != -9223372036854775807L) {
                                j3 = j2 + j;
                            } else if (c0746Jk != null && c0746Jk.A01 != -9223372036854775807L) {
                                j3 = c0746Jk.A01;
                            }
                        }
                        return C0746Jk.A02(xmlPullParser.getName(), j2, j3, A092, strArr, A0A2, str2, c0746Jk);
                    }

                    public static String A0A(int i, int i2, int i3) {
                        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                            byte b = copyOfRange[i4];
                            if (A02[0].length() == 7) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A02;
                            strArr[1] = "MzedSJZDJL3LD";
                            strArr[5] = "g6loelR4939QZaycQmxedlYL";
                            copyOfRange[i4] = (byte) ((b - i3) - 113);
                        }
                        return new String(copyOfRange);
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException: Index 12 out of bounds for length 12
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
                    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
                    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
                    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
                     */
                    public static Map<String, C0753Jr> A0B(XmlPullParser xmlPullParser, Map<String, C0753Jr> map, C0743Jh c0743Jh, C0745Jj c0745Jj, Map<String, C0747Jl> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
                        do {
                            xmlPullParser.next();
                            String A0A2 = A0A(1655, 5, 93);
                            if (AbstractC03684g.A04(xmlPullParser, A0A2)) {
                                String A00 = AbstractC03684g.A00(xmlPullParser, A0A2);
                                C0753Jr A092 = A09(xmlPullParser, new C0753Jr());
                                if (A00 != null) {
                                    String[] A0G = A0G(A00);
                                    if (A02[3].charAt(8) != 'a') {
                                        throw new RuntimeException();
                                    }
                                    String[] strArr = A02;
                                    strArr[6] = "oxowjvWuzCcWkzEkDRByU8LkLZUydqr3";
                                    strArr[2] = "XAdwn62c6rSvSVMr71C9Wpdxl0LeAUIU";
                                    for (String str2 : A0G) {
                                        A092.A0O(map.get(str2));
                                    }
                                }
                                String A0X = A092.A0X();
                                if (A0X != null) {
                                    map.put(A0X, A092);
                                }
                            } else if (AbstractC03684g.A04(xmlPullParser, A0A(1613, 6, 33))) {
                                C0747Jl A072 = A07(xmlPullParser, c0743Jh, c0745Jj);
                                if (A072 != null) {
                                    map2.put(A072.A09, A072);
                                }
                            } else {
                                boolean A042 = AbstractC03684g.A04(xmlPullParser, A0A(1553, 8, 69));
                                String[] strArr2 = A02;
                                if (strArr2[1].length() == strArr2[5].length()) {
                                    throw new RuntimeException();
                                }
                                String[] strArr3 = A02;
                                strArr3[6] = "B6Mw4qhmB6vQw7zev9YlYKUDY0kxCfVe";
                                strArr3[2] = "G12wwLtLBhQxBioY68m1H9JFDs55K6Az";
                                if (A042) {
                                    A0E(xmlPullParser, map3);
                                }
                            }
                        } while (!AbstractC03684g.A03(xmlPullParser, A0A(1468, 4, 96)));
                        return map;
                    }

                    public static void A0C() {
                        byte[] bArr = {-69, -57, 6, -27, -20, -36, Ascii.VT, 55, Base64.padSymbol, 52, 44, 54, -17, 60, -24, 43, 58, 45, 41, 60, 45, -24, 32, 53, 52, Ascii.CAN, Base64.padSymbol, 52, 52, Ascii.CAN, 41, 58, 59, 45, 58, Ascii.SO, 41, 43, 60, 55, 58, 65, -24, 49, 54, 59, 60, 41, 54, 43, 45, Ascii.FS, 55, 63, 66, 59, 58, -10, 70, 55, 72, 73, 63, 68, Base64.padSymbol, -10, 56, 55, 57, 65, Base64.padSymbol, 72, 69, 75, 68, 58, -10, 76, 55, 66, 75, 59, Ascii.DLE, -10, -73, -46, -38, -35, -42, -43, -111, -31, -46, -29, -28, -38, -33, -40, -111, -44, -32, -35, -32, -29, -111, -25, -46, -35, -26, -42, -85, -111, Ascii.DLE, 43, 51, 54, 47, 46, -22, 58, 43, 60, Base64.padSymbol, 51, 56, 49, -22, 48, 57, 56, 62, Ascii.GS, 51, 68, 47, -22, SignedBytes.MAX_POWER_OF_TWO, 43, 54, 63, 47, 4, -22, 0, Ascii.ESC, 35, 38, Ascii.US, Ascii.RS, -38, 46, 41, -38, 42, Ascii.ESC, 44, 45, Ascii.US, -38, 45, 34, Ascii.US, Ascii.ESC, 44, -12, -38, 0, Ascii.RS, 37, 38, 41, 32, 37, Ascii.RS, -41, 36, Ascii.CAN, 35, Ascii.GS, 38, 41, 36, Ascii.FS, Ascii.ESC, -41, Ascii.SUB, Ascii.FS, 35, 35, -41, 41, Ascii.FS, 42, 38, 35, 44, 43, 32, 38, 37, -15, -41, Ascii.GS, 59, 66, 67, 70, Base64.padSymbol, 66, 59, -12, 65, 53, SignedBytes.MAX_POWER_OF_TWO, 58, 67, 70, 65, 57, 56, -12, 72, 72, 71, -12, 57, 76, 72, 57, 66, 72, Ascii.SO, -12, 52, 82, 89, 90, 93, 84, 89, 82, Ascii.VT, 89, 90, 89, Ascii.CAN, 91, 84, 99, 80, 87, Ascii.VT, 95, 95, 94, Ascii.VT, 80, 99, 95, 80, 89, 95, 37, Ascii.VT, 1, Ascii.US, 38, 39, 42, 33, 38, Ascii.US, -40, 42, Ascii.GS, Ascii.US, 33, 39, 38, -40, 47, 33, 44, 32, -40, 37, Ascii.EM, 36, Ascii.RS, 39, 42, 37, Ascii.GS, Ascii.FS, -40, Ascii.GS, 48, 44, Ascii.GS, 38, 44, -14, -40, -41, -11, -4, -3, 0, -9, -4, -11, -82, 0, -13, -11, -9, -3, -4, -82, 5, -9, 2, -10, -82, -5, -17, -6, -12, -3, 0, -5, -13, -14, -82, -3, 0, -9, -11, -9, -4, -56, -82, -15, Ascii.SI, Ascii.SYN, Ascii.ETB, Ascii.SUB, 17, Ascii.SYN, Ascii.SI, -56, Ascii.SUB, Ascii.CR, Ascii.SI, 17, Ascii.ETB, Ascii.SYN, -56, Ascii.US, 17, Ascii.FS, Ascii.DLE, -56, Ascii.NAK, 17, Ascii.ESC, Ascii.ESC, 17, Ascii.SYN, Ascii.SI, -56, Ascii.FS, Ascii.FS, Ascii.ESC, -30, Ascii.CR, 32, Ascii.FS, Ascii.CR, Ascii.SYN, Ascii.FS, -30, -56, 40, 70, 77, 78, 81, 72, 77, 70, -1, 81, 68, 70, 72, 78, 77, -1, 86, 72, 83, 71, -1, 84, 77, 82, 84, 79, 79, 78, 81, 83, 68, 67, -1, 68, 87, 83, 68, 77, 83, Ascii.EM, -1, -9, Ascii.NAK, Ascii.FS, Ascii.GS, 32, Ascii.ETB, Ascii.FS, Ascii.NAK, -50, 32, 19, Ascii.NAK, Ascii.ETB, Ascii.GS, Ascii.FS, -50, 37, Ascii.ETB, 34, Ascii.SYN, -50, 35, Ascii.FS, 33, 35, Ascii.RS, Ascii.RS, Ascii.GS, 32, 34, 19, Ascii.DC2, -50, Ascii.GS, 32, Ascii.ETB, Ascii.NAK, Ascii.ETB, Ascii.FS, -24, -50, -20, 10, 17, Ascii.DC2, Ascii.NAK, Ascii.FF, 17, 10, -61, Ascii.NAK, 8, 10, Ascii.FF, Ascii.DC2, 17, -61, Ascii.SUB, Ascii.FF, Ascii.ETB, Ascii.VT, Ascii.DC2, Ascii.CAN, Ascii.ETB, -61, 4, 17, -61, 8, Ascii.ESC, Ascii.ETB, 8, 17, Ascii.ETB, -57, -27, -20, -19, -16, -25, -20, -27, -98, -16, -29, -27, -25, -19, -20, -98, -11, -25, -14, -26, -19, -13, -14, -98, -33, -20, -98, -19, -16, -25, -27, -25, -20, 44, 74, 81, 82, 85, 76, 81, 74, 3, 88, 81, 86, 88, 83, 83, 82, 85, 87, 72, 71, 3, 87, 68, 74, Ascii.GS, 3, 56, 93, 101, 80, 91, 88, 83, Ascii.SI, 82, 84, 91, 91, Ascii.SI, 97, 84, 98, 94, 91, 100, 99, 88, 94, 93, Ascii.SI, -46, -9, -1, -22, -11, -14, -19, -87, -18, 1, -7, -5, -18, -4, -4, -14, -8, -9, -87, -17, -8, -5, -87, -17, -8, -9, -3, -36, -14, 3, -18, -61, -87, -80, 6, 43, 51, Ascii.RS, 41, 38, 33, -35, 43, 50, 42, Ascii.US, 34, 47, -35, 44, 35, -35, 34, 43, 49, 47, 38, 34, 48, -35, 35, 44, 47, -35, 35, 44, 43, 49, Ascii.DLE, 38, 55, 34, -9, -35, -16, Ascii.NAK, Ascii.GS, 8, 19, Ascii.DLE, Ascii.VT, -57, Ascii.FS, Ascii.NAK, Ascii.DLE, Ascii.ESC, -57, Ascii.CR, Ascii.SYN, Ascii.EM, -57, Ascii.CR, Ascii.SYN, Ascii.NAK, Ascii.ESC, -6, Ascii.DLE, 33, Ascii.FF, -31, -57, -50, 2, 39, 47, Ascii.SUB, 37, 34, Ascii.GS, -39, 47, Ascii.SUB, 37, 46, Ascii.RS, -39, Ascii.US, 40, 43, -39, 44, 33, Ascii.RS, Ascii.SUB, 43, -13, -39, 34, 54, 65, 59, 68, 71, 66, 58, 57, -11, 73, 62, 66, 58, -11, 58, 77, 69, 71, 58, 72, 72, 62, 68, 67, Ascii.SI, -11, 39, 79, 70, 78, 67, 74, 70, 63, -6, 80, 59, 70, 79, 63, 77, -6, 67, 72, -6, SignedBytes.MAX_POWER_OF_TWO, 73, 72, 78, 45, 67, 84, 63, -6, 59, 78, 78, 76, 67, 60, 79, 78, 63, 8, -6, 42, 67, Base64.padSymbol, 69, 67, 72, 65, -6, 78, 66, 63, -6, 77, 63, Base64.padSymbol, 73, 72, 62, -6, 80, 59, 70, 79, 63, -6, SignedBytes.MAX_POWER_OF_TWO, 73, 76, -6, 80, 63, 76, 78, 67, Base64.padSymbol, 59, 70, -6, SignedBytes.MAX_POWER_OF_TWO, 73, 72, 78, -6, 77, 67, 84, 63, -6, 59, 72, 62, -6, 67, 65, 72, 73, 76, 67, 72, 65, -6, 78, 66, 63, -6, SignedBytes.MAX_POWER_OF_TWO, 67, 76, 77, 78, 8, -58, -25, -104, -52, -52, -59, -60, -104, -21, -19, -38, -20, -31, -20, -28, -35, -21, -104, -34, -25, -19, -26, -36, -31, 3, -2, -2, 0, -13, 1, 1, -9, -4, -11, -82, -2, -17, 0, 1, -13, 0, -82, -13, 0, 0, -3, 0, -43, -11, -18, -19, -59, -26, -28, -16, -27, -26, -13, -10, Ascii.SI, 2, 3, Ascii.CR, 6, -63, Ascii.NAK, Ascii.DLE, -63, 5, 6, 4, Ascii.DLE, 5, 6, -63, Ascii.DC4, Ascii.DLE, Ascii.SYN, 19, 4, 6, -25, 0, -9, 10, 2, -9, -11, 6, -9, -10, -78, -9, 4, 4, 1, 4, -78, 9, -6, -9, 0, -78, 4, -9, -13, -10, -5, 0, -7, -78, -5, 0, 2, 7, 6, -64, 9, 32, -40, -42, -96, -96, -45, -88, -91, -79, -43, -94, -90, -95, -73, -45, -88, -91, -79, -43, -93, -95, -96, -24, -16, -12, -35, -27, -12, -99, -95, -100, -16, -70, -19, -65, -67, -17, 
                        -47, -18, -10, -67, -18, -64, -47, -18, -10, -68, -47, -69, -73, -74, -47, -101, -50, -93, -96, -84, -48, -98, -101, -78, -83, -49, -95, -50, -93, -96, -84, -48, -98, -100, -78, -100, -101, -37, -17, -32, -17, -26, -17, -32, -26, -17, -39, -17, -25, -100, -105, 17, -37, Ascii.SO, -29, -32, -20, Ascii.DLE, Ascii.SO, -29, -32, -20, Ascii.DLE, -34, -36, -19, -37, Ascii.SO, -29, -32, -20, Ascii.DLE, Ascii.SO, -29, -32, -20, Ascii.DLE, -36, -19, -37, Ascii.SO, -29, -32, -20, Ascii.DLE, Ascii.SO, -29, -32, -20, Ascii.DLE, -36, -37, -14, -19, -37, Ascii.SI, -31, Ascii.SO, -29, -32, -20, Ascii.DLE, -34, -36, 47, -19, -37, Ascii.SO, -29, -32, -20, Ascii.DLE, Ascii.SO, -29, -32, -20, Ascii.DLE, -36, -37, -14, -19, Ascii.SI, -31, -37, Ascii.SO, -29, -32, -20, Ascii.DLE, -34, -36, -36, -14, -36, -14, -41, 54, 0, 52, 60, 3, 1, -8, 0, 52, 60, 3, 1, -4, -49, -103, -51, -43, -100, -51, -97, -80, -51, -43, -101, -80, -102, -106, -111, -103, -51, -43, -100, -51, -97, -80, -51, -43, -101, -80, -102, -106, -107, Ascii.DC2, -36, Ascii.DLE, Ascii.CAN, -33, Ascii.DLE, -30, -13, Ascii.DLE, Ascii.CAN, -34, -13, -35, 36, 44, -44, -36, Ascii.DLE, Ascii.CAN, -33, Ascii.DLE, -30, -13, Ascii.DLE, Ascii.CAN, -34, -13, -35, 36, 44, -40, -9, -4, 10, -5, 8, Ascii.FS, 39, 39, 58, 57, 59, 67, 63, 74, 71, 77, 70, 60, Ascii.ESC, 71, 68, 71, 74, 6, 5, 7, Ascii.SI, Ascii.VT, Ascii.SYN, 19, Ascii.EM, Ascii.DC2, 8, -19, 17, 5, Ascii.VT, 9, 76, 75, 93, 79, Ascii.SI, Ascii.SO, 32, Ascii.DC2, -16, Ascii.FS, Ascii.ESC, 33, Ascii.SO, Ascii.SYN, Ascii.ESC, Ascii.DC2, Ascii.US, 54, 57, 58, 67, 70, 57, Ascii.SI, Ascii.DC2, Ascii.DC4, Ascii.SYN, Ascii.ESC, -2, Ascii.VT, 0, Ascii.NAK, Ascii.EM, 38, 35, Ascii.ESC, 52, 68, Ascii.NAK, Ascii.ETB, Ascii.RS, Ascii.RS, 4, Ascii.ETB, 37, 33, Ascii.RS, 39, 38, Ascii.ESC, 33, 32, -26, -24, -15, -9, -24, -11, 45, 57, 54, 57, 60, 79, 91, 90, 96, 77, 85, 90, 81, 94, -32, -35, -16, -35, -24, -23, -16, -19, -15, -19, -8, -23, -10, 68, 73, 83, 80, 76, 65, 89, 33, 76, 73, 71, 78, Base64.padSymbol, 66, 79, 10, Ascii.ESC, Ascii.CAN, 34, 42, -25, -16, -26, 3, Ascii.SYN, Ascii.DC2, 3, Ascii.FF, Ascii.DC2, -33, -19, -10, -11, -5, -51, -24, -12, -16, -13, 0, -28, -19, -20, -14, -47, -25, -8, -29, 54, 63, 62, 68, 35, 68, 73, 60, 53, 4, Ascii.CR, Ascii.FF, Ascii.DC2, -11, 3, 7, 5, 6, Ascii.DC2, 80, 92, 75, 87, 79, 60, 75, 94, 79, -15, -3, -20, -8, -16, -35, -20, -1, -16, -40, 0, -9, -1, -12, -5, -9, -12, -16, -3, -20, -8, -25, -13, -21, -40, -25, -6, -21, -45, -5, -14, -6, -17, -10, -14, -17, -21, -8, -90, -22, -11, -21, -7, -12, -83, -6, -90, -18, -25, -4, -21, -90, -72, -90, -10, -25, -8, -6, -7, 1, 57, 54, 50, 53, 53, 65, 65, Base64.padSymbol, 7, -4, -4, 68, 68, 68, -5, 68, 0, -5, 60, 63, 52, -4, 59, SignedBytes.MAX_POWER_OF_TWO, -4, 65, 65, 58, 57, -16, Base64.padSymbol, 46, 63, 46, 58, 50, 65, 50, 63, 52, 47, 3, 7, -5, 1, -1, -35, -30, -38, -29, -26, -31, -43, -24, -35, -29, -30, 0, Ascii.VT, -8, 3, 0, -6, 50, 39, 63, 53, 59, 58, 87, 80, 81, 95, 4, 1, 6, -3, Ascii.FF, 0, 10, 7, Ascii.CR, -1, 0, 66, 35, Ascii.ESC, 42, Ascii.ETB, Ascii.SUB, Ascii.ETB, 42, Ascii.ETB, 91, 97, 40, 48, 39, 47, 36, Ascii.CR, 42, 50, -4, 39, 36, 34, 41, 76, 77, 74, 71, 76, 67, 82, 70, 80, 77, 83, 69, 70, 60, Base64.padSymbol, 60, 51, Ascii.EM, Ascii.SUB, 32, Ascii.EM, Ascii.SI, Ascii.DLE, Ascii.GS, Ascii.ETB, Ascii.DC4, Ascii.EM, Ascii.DLE, 33, 36, Ascii.ESC, Ascii.EM, Ascii.ESC, 32, -31, 80, 88, 4, -9, -7, -5, 1, 0, -3, -12, -14, -13, -1, 88, 91, 72, 95, 75, 78, 59, 82, 41, 72, 76, 66, 77, 66, 72, 71, Ascii.DLE, 37, Ascii.SUB, Ascii.ETB, 19, 36, 34, Ascii.US, Ascii.DLE, Ascii.GS, 32, 33, Ascii.SO, Ascii.US, 33, 65, 66, 71, 58, 51, 71, 72, 77, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 66, 59, 74, 76, 57, Ascii.GS, 73, 56, 68, 60, 41, 56, 75, 60, 55, Ascii.ESC, 9, 53, 35, 45, 51, -3, -21, -5, -11, 42, Ascii.ESC, 46, 42, 60, 45, SignedBytes.MAX_POWER_OF_TWO, 60, 9, 52, 49, 47, 54, 60, 45, SignedBytes.MAX_POWER_OF_TWO, 60, Ascii.VT, 55, 53, 42, 49, 54, 45, -6, -21, -2, -6, -55, -11, -12, -6, -25, -17, -12, -21, -8, 67, 52, 71, 67, 19, 52, 50, 62, 65, 48, 67, 56, 62, Base64.padSymbol, Ascii.SYN, 7, Ascii.SUB, Ascii.SYN, -25, Ascii.SI, Ascii.DC2, 10, 3, Ascii.NAK, Ascii.VT, Ascii.NAK, 80, 69, 63, 71, 46, Base64.padSymbol, 80, 65, Ascii.GS, Ascii.GS, 47, 40, Ascii.RS, Ascii.US, 44, 38, 35, 40, Ascii.US, -8, -13, -22, -11, -22, -17, -24, -50, -16, -27, -26};
                        String[] strArr = A02;
                        if (strArr[6].charAt(3) != strArr[2].charAt(3)) {
                            throw new RuntimeException();
                        }
                        A02[3] = "YYEb81Zja86Dd7gFpf2yHyw2w0ZKb0ns";
                        A01 = bArr;
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    public final J7 A0g(byte[] bArr, int i, boolean z) throws C1799kM {
                        String A0A2 = A0A(0, 0, 87);
                        try {
                            XmlPullParser newPullParser = this.A00.newPullParser();
                            HashMap hashMap = new HashMap();
                            HashMap hashMap2 = new HashMap();
                            HashMap hashMap3 = new HashMap();
                            hashMap2.put(A0A2, new C0747Jl(A0A2));
                            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
                            C1783k6 c1783k6 = null;
                            ArrayDeque arrayDeque = new ArrayDeque();
                            int i2 = 0;
                            C0744Ji c0744Ji = A06;
                            C0743Jh c0743Jh = A05;
                            C0745Jj c0745Jj = null;
                            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                                C0746Jk c0746Jk = (C0746Jk) arrayDeque.peek();
                                if (i2 == 0) {
                                    String name = newPullParser.getName();
                                    String A0A3 = A0A(1761, 2, 56);
                                    if (eventType == 2) {
                                        if (A0A3.equals(name)) {
                                            c0744Ji = A04(newPullParser);
                                            c0743Jh = A03(newPullParser, A05);
                                            c0745Jj = A05(newPullParser);
                                        }
                                        boolean A0F = A0F(name);
                                        String A0A4 = A0A(892, 11, 16);
                                        if (!A0F) {
                                            AnonymousClass44.A06(A0A4, A0A(531, 26, 114) + newPullParser.getName());
                                            i2++;
                                        } else if (A0A(1468, 4, 96).equals(name)) {
                                            A0B(newPullParser, hashMap, c0743Jh, c0745Jj, hashMap2, hashMap3);
                                        } else {
                                            try {
                                                C0746Jk A062 = A06(newPullParser, c0746Jk, hashMap2, c0744Ji);
                                                arrayDeque.push(A062);
                                                if (c0746Jk != null) {
                                                    c0746Jk.A0F(A062);
                                                }
                                            } catch (C1799kM e) {
                                                AnonymousClass44.A0A(A0A4, A0A(868, 24, 29), e);
                                                i2++;
                                            }
                                        }
                                    } else if (eventType == 4) {
                                        ((C0746Jk) C3M.A01(c0746Jk)).A0F(C0746Jk.A01(newPullParser.getText()));
                                    } else if (eventType == 3) {
                                        if (newPullParser.getName().equals(A0A3)) {
                                            c1783k6 = new C1783k6((C0746Jk) C3M.A01((C0746Jk) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                                        }
                                        arrayDeque.pop();
                                    }
                                } else if (A02[0].length() == 7) {
                                    throw new RuntimeException();
                                } else {
                                    A02[3] = "q6wSX38Wa3tvhMiP87hlFBAs7B3bq4ae";
                                    if (eventType == 2) {
                                        i2++;
                                    } else if (eventType == 3) {
                                        i2--;
                                    }
                                }
                                newPullParser.next();
                            }
                            if (c1783k6 != null) {
                                return c1783k6;
                            }
                            throw new C1799kM(A0A(845, 23, 7));
                        } catch (IOException e2) {
                            throw new IllegalStateException(A0A(926, 36, 33), e2);
                        } catch (XmlPullParserException e3) {
                            throw new C1799kM(A0A(TypedValues.Custom.TYPE_STRING, 23, 48), e3);
                        }
                    }

                    static {
                        A0C();
                        A08 = Pattern.compile(A0A(1051, 85, 66));
                        A0A = Pattern.compile(A0A(1014, 37, 2));
                        A09 = Pattern.compile(A0A(965, 29, 7));
                        A04 = Pattern.compile(A0A(994, 20, 33));
                        A03 = Pattern.compile(A0A(1149, 29, 0));
                        A0B = Pattern.compile(A0A(1178, 31, 67));
                        A07 = Pattern.compile(A0A(1136, 13, 103));
                        A06 = new C0744Ji(30.0f, 1, 1);
                        A05 = new C0743Jh(32, 15);
                    }

                    {
                        A0A(892, 11, 16);
                        try {
                            this.A00 = XmlPullParserFactory.newInstance();
                            this.A00.setNamespaceAware(true);
                        } catch (XmlPullParserException e) {
                            throw new RuntimeException(A0A(6, 45, 87), e);
                        }
                    }

                    public static float A00(String str2) {
                        Matcher matcher = A04.matcher(str2);
                        boolean matches = matcher.matches();
                        String A0A2 = A0A(892, 11, 16);
                        if (!matches) {
                            AnonymousClass44.A07(A0A2, A0A(683, 25, 72) + str2);
                            return Float.MAX_VALUE;
                        }
                        try {
                            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) C3M.A01(matcher.group(1)))));
                        } catch (NumberFormatException e) {
                            AnonymousClass44.A0A(A0A2, A0A(143, 23, 73) + str2, e);
                            return Float.MAX_VALUE;
                        }
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    public static Layout.Alignment A02(String str2) {
                        char c2;
                        String A012 = AbstractC1691iY.A01(str2);
                        switch (A012.hashCode()) {
                            case -1364013995:
                                if (A012.equals(A0A(1299, 6, 18))) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 100571:
                                if (A012.equals(A0A(1352, 3, 17))) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3317767:
                                if (A012.equals(A0A(1537, 4, 122))) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 108511772:
                                if (A012.equals(A0A(1619, 5, 26))) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 109757538:
                                if (A012.equals(A0A(1650, 5, 60))) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                            case 1:
                                return Layout.Alignment.ALIGN_NORMAL;
                            case 2:
                            case 3:
                                Layout.Alignment alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                if (A02[3].charAt(8) != 'a') {
                                    throw new RuntimeException();
                                }
                                A02[0] = "QuoyGMZU77HTmr";
                                return alignment;
                            case 4:
                                return Layout.Alignment.ALIGN_CENTER;
                            default:
                                return null;
                        }
                    }

                    public static C0744Ji A04(XmlPullParser xmlPullParser) throws C1799kM {
                        int tickRate = 30;
                        String A0A2 = A0A(1399, 9, 121);
                        String A0A3 = A0A(1472, 35, 92);
                        String attributeValue = xmlPullParser.getAttributeValue(A0A3, A0A2);
                        if (attributeValue != null) {
                            tickRate = Integer.parseInt(attributeValue);
                        }
                        float numerator = 1.0f;
                        String attributeValue2 = xmlPullParser.getAttributeValue(A0A3, A0A(1408, 19, 26));
                        if (attributeValue2 != null) {
                            String[] A1O = AbstractC03624a.A1O(attributeValue2, A0A(0, 1, 42));
                            if (A1O.length == 2) {
                                int frameRate = Integer.parseInt(A1O[0]);
                                float numerator2 = frameRate;
                                int frameRate2 = Integer.parseInt(A1O[1]);
                                numerator = numerator2 / frameRate2;
                            } else {
                                String frameRateString = A0A(1427, 40, 21);
                                throw new C1799kM(frameRateString);
                            }
                        }
                        int subFrameRate = A06.A01;
                        String attributeValue3 = xmlPullParser.getAttributeValue(A0A3, A0A(1667, 12, 102));
                        if (attributeValue3 != null) {
                            subFrameRate = Integer.parseInt(attributeValue3);
                        }
                        int i = A06.A02;
                        String A0A4 = A0A(1753, 8, 107);
                        String[] strArr = A02;
                        String frameRateString2 = strArr[1];
                        String str2 = strArr[5];
                        int length = frameRateString2.length();
                        int frameRate3 = str2.length();
                        if (length != frameRate3) {
                            String[] strArr2 = A02;
                            strArr2[6] = "ZUswaBax6tLaE1IC4JCUj1Icv8MP2XMH";
                            strArr2[2] = "PhpwRqbX9uhXuGLmIXMh7Q7Ymyg4xhXC";
                            String attributeValue4 = xmlPullParser.getAttributeValue(A0A3, A0A4);
                            if (attributeValue4 != null) {
                                i = Integer.parseInt(attributeValue4);
                            }
                            return new C0744Ji(tickRate * numerator, subFrameRate, i);
                        }
                        throw new RuntimeException();
                    }

                    public static C0745Jj A05(XmlPullParser xmlPullParser) {
                        String A00 = AbstractC03684g.A00(xmlPullParser, A0A(1355, 6, 45));
                        if (A00 == null) {
                            return null;
                        }
                        Matcher matcher = A0B.matcher(A00);
                        boolean matches = matcher.matches();
                        String A0A2 = A0A(892, 11, 16);
                        if (!matches) {
                            StringBuilder sb = new StringBuilder();
                            String ttsExtent = A0A(233, 31, 122);
                            AnonymousClass44.A07(A0A2, sb.append(ttsExtent).append(A00).toString());
                            return null;
                        }
                        try {
                            String ttsExtent2 = matcher.group(1);
                            int parseInt = Integer.parseInt((String) C3M.A01(ttsExtent2));
                            String ttsExtent3 = matcher.group(2);
                            return new C0745Jj(parseInt, Integer.parseInt((String) C3M.A01(ttsExtent3)));
                        } catch (NumberFormatException unused) {
                            StringBuilder sb2 = new StringBuilder();
                            String ttsExtent4 = A0A(202, 31, 99);
                            AnonymousClass44.A07(A0A2, sb2.append(ttsExtent4).append(A00).toString());
                            return null;
                        }
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code restructure failed: missing block: B:54:0x020a, code lost:
                        if (r5.equals(A0A(1686, 4, 24)) != false) goto L50;
                     */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
                    /* JADX WARN: Type inference failed for: r3v2 */
                    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.CharSequence, java.lang.String] */
                    /* JADX WARN: Type inference failed for: r5v2 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public static com.facebook.ads.redexgen.X.C0747Jl A07(org.xmlpull.v1.XmlPullParser r23, com.facebook.ads.redexgen.X.C0743Jh r24, com.facebook.ads.redexgen.X.C0745Jj r25) {
                        /*
                            Method dump skipped, instructions count: 786
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02730n.A07(org.xmlpull.v1.XmlPullParser, com.facebook.ads.redexgen.X.Jh, com.facebook.ads.redexgen.X.Jj):com.facebook.ads.redexgen.X.Jl");
                    }

                    public static C0753Jr A08(C0753Jr c0753Jr) {
                        return c0753Jr == null ? new C0753Jr() : c0753Jr;
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code restructure failed: missing block: B:164:0x0506, code lost:
                        if (r13.equals(A0A(1624, 4, 117)) != false) goto L201;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:165:0x0508, code lost:
                        r13 = '\n';
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:167:0x0523, code lost:
                        if (r13.equals(A0A(1624, 4, 117)) != false) goto L201;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:175:0x0555, code lost:
                        if (r13.equals(r14) != false) goto L211;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:176:0x0557, code lost:
                        r13 = 5;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:178:0x0565, code lost:
                        if (r13.equals(r14) != false) goto L211;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:50:0x0156, code lost:
                        if (r6.equals(r8) != false) goto L40;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:53:0x0169, code lost:
                        if (r6.equals(r8) != false) goto L40;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:82:0x0224, code lost:
                        if (r5.equals(A0A(1247, 4, 121)) != false) goto L106;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:83:0x0226, code lost:
                        r16 = 1;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:85:0x0231, code lost:
                        if (r5.equals(A0A(1247, 4, 121)) != false) goto L106;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:91:0x0255, code lost:
                        if (r5.equals(A0A(1323, 9, 19)) != false) goto L85;
                     */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public static com.facebook.ads.redexgen.X.C0753Jr A09(org.xmlpull.v1.XmlPullParser r15, com.facebook.ads.redexgen.X.C0753Jr r16) {
                        /*
                            Method dump skipped, instructions count: 1666
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02730n.A09(org.xmlpull.v1.XmlPullParser, com.facebook.ads.redexgen.X.Jr):com.facebook.ads.redexgen.X.Jr");
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    public static void A0D(String str2, C0753Jr c0753Jr) throws C1799kM {
                        Matcher matcher;
                        char c2;
                        String[] A1O = AbstractC03624a.A1O(str2, A0A(962, 3, 60));
                        if (A1O.length == 1) {
                            matcher = A09.matcher(str2);
                        } else if (A1O.length == 2) {
                            matcher = A09.matcher(A1O[1]);
                            AnonymousClass44.A07(A0A(892, 11, 16), A0A(735, 110, 105));
                        } else {
                            throw new C1799kM(A0A(615, 40, 76) + A1O.length + A0A(5, 1, 61));
                        }
                        boolean matches = matcher.matches();
                        String A0A2 = A0A(3, 2, 77);
                        if (matches) {
                            String str3 = (String) C3M.A01(matcher.group(3));
                            switch (str3.hashCode()) {
                                case 37:
                                    if (str3.equals(A0A(2, 1, 112))) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 3240:
                                    if (str3.equals(A0A(1350, 2, 76))) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 3592:
                                    if (str3.equals(A0A(1611, 2, 111))) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            switch (c2) {
                                case 0:
                                    c0753Jr.A0I(1);
                                    break;
                                case 1:
                                    c0753Jr.A0I(2);
                                    break;
                                case 2:
                                    c0753Jr.A0I(3);
                                    break;
                                default:
                                    throw new C1799kM(A0A(655, 28, 54) + str3 + A0A2);
                            }
                            c0753Jr.A0E(Float.parseFloat((String) C3M.A01(matcher.group(1))));
                            return;
                        }
                        throw new C1799kM(A0A(581, 34, 24) + str2 + A0A2);
                    }

                    public static void A0E(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
                        String encodedBitmapData;
                        do {
                            xmlPullParser.next();
                            if (AbstractC03684g.A04(xmlPullParser, A0A(1509, 5, 41)) && (encodedBitmapData = AbstractC03684g.A00(xmlPullParser, A0A(1507, 2, 90))) != null) {
                                String id = xmlPullParser.nextText();
                                map.put(encodedBitmapData, id);
                            }
                        } while (!AbstractC03684g.A03(xmlPullParser, A0A(1553, 8, 69)));
                    }

                    public static boolean A0F(String str2) {
                        if (!str2.equals(A0A(1761, 2, 56)) && !str2.equals(A0A(1468, 4, 96)) && !str2.equals(A0A(1275, 4, 43)) && !str2.equals(A0A(1344, 3, 104))) {
                            if (A02[3].charAt(8) == 'a') {
                                String[] strArr = A02;
                                strArr[6] = "5SOwrViEjml2jzAC0QTdKKqpMqKJiIIU";
                                strArr[2] = "utbwyOpqs8b3qaaxxsItXWquxXfcomKh";
                                if (!str2.equals(A0A(1610, 1, 0)) && !str2.equals(A0A(1646, 4, 62)) && !str2.equals(A0A(1283, 2, 97)) && !str2.equals(A0A(1655, 5, 93)) && !str2.equals(A0A(1660, 7, 99)) && !str2.equals(A0A(1531, 6, 85)) && !str2.equals(A0A(1613, 6, 33))) {
                                    if (A02[0].length() != 7) {
                                        String[] strArr2 = A02;
                                        strArr2[4] = "XYEsrL24jboJLM6xnETRDfm0d";
                                        strArr2[7] = "LekapK6bz2qvUkLFlJCVYN0VS";
                                        if (!str2.equals(A0A(1553, 8, 69)) && !str2.equals(A0A(1509, 5, 41)) && !str2.equals(A0A(1319, 4, 11)) && !str2.equals(A0A(1514, 11, 3))) {
                                            return false;
                                        }
                                    }
                                }
                            }
                            throw new RuntimeException();
                        }
                        return true;
                    }

                    public static String[] A0G(String str2) {
                        String trim = str2.trim();
                        return trim.isEmpty() ? new String[0] : AbstractC03624a.A1O(trim, A0A(962, 3, 60));
                    }
                };
            case 4:
                return new AbstractC04507k() { // from class: com.facebook.ads.redexgen.X.0o
                    public static byte[] A02;
                    public static String[] A03 = {"V1ZZWdHDdvp1vpeLHdy", "beDgvqL", "qPeUfXz8O47jIG0mRxxGLFbgYUjiO6tn", "0K37", "zACOzYjEJA3uY03LtXi99GuZvxjyA3vu", "", "yqoUvvveMQQADX2xw", "YF66NynmqVwoWtjOGJ4L1x6BuFt5Rq6F"};
                    public static final Pattern A04;
                    public static final Pattern A05;
                    public final StringBuilder A00;
                    public final ArrayList<String> A01;

                    public static String A03(int i, int i2, int i3) {
                        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 94);
                        }
                        return new String(copyOfRange);
                    }

                    public static void A06() {
                        A02 = new byte[]{76, Ascii.DC2, 2, 78, 108, 84, 86, 79, 79, 86, 81, 88, Ascii.US, 86, 81, 73, 94, 83, 86, 91, Ascii.US, 86, 81, 91, 90, 71, 5, Ascii.US, 75, 115, 113, 104, 104, 113, 118, Byte.MAX_VALUE, 56, 113, 118, 110, 121, 116, 113, 124, 56, 108, 113, 117, 113, 118, Byte.MAX_VALUE, 34, 56, 123, 93, 74, 90, 65, 88, 108, 77, 75, 71, 76, 77, 90, 80, 107, 96, 125, 117, 96, 102, 113, 96, 97, 37, 96, 107, 97, 60, 19, 74, 72, 72, 95, 90, 72, 60, 4, 75, 73, 90, 73, 95, 72, 60, 4, 75, 73, 90, 72, 60, 4, 75, 73, 72, 95, 90, 76, 72, 60, 4, 75, 73, 73, 95, 73, 60, 19, 74, 77, 77, 94, 60, 19, 74, 72, 72, 95, 90, 72, 60, 4, 75, 73, 90, 73, 95, 72, 60, 4, 75, 73, 90, 72, 60, 4, 75, 73, 72, 95, 90, 76, 72, 60, 4, 75, 73, 73, 95, 73, 60, 19, 74, 9, 46, 9, 9, 123, Byte.MAX_VALUE, 106, 9, 40, Ascii.SUB, Base64.padSymbol, Ascii.SUB, Ascii.SUB, 39, 40, Ascii.GS, 119, 107, Byte.MAX_VALUE, Ascii.ESC, Ascii.SUB, 59, Ascii.VT, 44, 17, Ascii.RS, 65, Ascii.CR, 19, 52, 9, 6, 90, Ascii.NAK, Ascii.US, 56, 5, 10, 87, Ascii.EM, 74, 109, 80, 95, 5, 76, 125, 90, 103, 104, 51, 123, 117, 82, 111, 96, 56, 115, 38, 1, 60, 51, 106, 32, Byte.MAX_VALUE, 88, 101, 106, 60, 121, 59, Ascii.FS, 33, 46, 121, Base64.padSymbol};
                    }

                    static {
                        A06();
                        A05 = Pattern.compile(A03(80, 85, 62));
                        A04 = Pattern.compile(A03(165, 9, 11));
                    }

                    {
                        A03(53, 13, 118);
                        this.A00 = new StringBuilder();
                        this.A01 = new ArrayList<>();
                    }

                    public static float A00(int i) {
                        switch (i) {
                            case 0:
                                return 0.08f;
                            case 1:
                                return 0.5f;
                            case 2:
                                return 0.92f;
                            default:
                                throw new IllegalArgumentException();
                        }
                    }

                    public static long A01(Matcher matcher, int i) {
                        long timestampMs;
                        String hours = matcher.group(i + 1);
                        if (hours != null) {
                            timestampMs = Long.parseLong(hours) * 60 * 60 * 1000;
                        } else {
                            timestampMs = 0;
                        }
                        long timestampMs2 = timestampMs + (Long.parseLong((String) C3M.A01(matcher.group(i + 2))) * 60 * 1000) + (Long.parseLong((String) C3M.A01(matcher.group(i + 3))) * 1000);
                        String hours2 = matcher.group(i + 4);
                        if (hours2 != null) {
                            long parseLong = Long.parseLong(hours2);
                            if (A03[6].length() == 8) {
                                throw new RuntimeException();
                            }
                            A03[0] = "CtNVef4YfaKqE1U7uEo";
                            timestampMs2 += parseLong;
                        }
                        return 1000 * timestampMs2;
                    }

                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f3, code lost:
                        if (r7 != false) goto L37;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f5, code lost:
                        r0 = '\b';
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ff, code lost:
                        if (r7 != false) goto L37;
                     */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    private com.facebook.ads.redexgen.X.C2012o2 A02(android.text.Spanned r17, java.lang.String r18) {
                        /*
                            Method dump skipped, instructions count: 504
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02740o.A02(android.text.Spanned, java.lang.String):com.facebook.ads.redexgen.X.o2");
                    }

                    private String A04(String str2, ArrayList<String> arrayList) {
                        String trim = str2.trim();
                        int i = 0;
                        StringBuilder sb = new StringBuilder(trim);
                        Matcher matcher = A04.matcher(trim);
                        while (matcher.find()) {
                            String group = matcher.group();
                            arrayList.add(group);
                            int tagLength = matcher.start() - i;
                            int start = group.length();
                            sb.replace(tagLength, tagLength + start, A03(0, 0, 37));
                            i += start;
                        }
                        return sb.toString();
                    }

                    private Charset A05(C4J c4j) {
                        Charset charset = c4j.A0Z();
                        return charset != null ? charset : AbstractC1693ia.A06;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:43:0x0174, code lost:
                        return new com.facebook.ads.redexgen.X.C1784k7((com.facebook.ads.redexgen.X.C2012o2[]) r4.toArray(new com.facebook.ads.redexgen.X.C2012o2[0]), r3.A05());
                     */
                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final com.facebook.ads.redexgen.X.J7 A0g(byte[] r15, int r16, boolean r17) {
                        /*
                            Method dump skipped, instructions count: 373
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02740o.A0g(byte[], int, boolean):com.facebook.ads.redexgen.X.J7");
                    }
                };
            case 5:
                final List<byte[]> list = c2061or.A0X;
                return new AbstractC04507k(list) { // from class: com.facebook.ads.redexgen.X.0m
                    public static byte[] A07;
                    public static String[] A08 = {"1x7tMScy3OwIpxpoM6szN", "Vc9HgGpBlB6xOFpUGzWjKY6X9B2Kx", "Pa2y8LS5d14E5c2iioTa3o6alel444yu", "nvl8EzHImhNd4skDgpAF61hzJTcSqLGr", "i0VKuTBNrkqino8Xl71fJI1fPr2JZBLb", "b0kCsBlNmzlDPYQHWIClkO446cJaLVwv", "T6LNoF", "e0xJgOhUsx7"};
                    public final float A00;
                    public final int A01;
                    public final int A02;
                    public final int A03;
                    public final C4J A04;
                    public final String A05;
                    public final boolean A06;

                    public static String A00(int i, int i2, int i3) {
                        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
                        int i4 = 0;
                        while (true) {
                            int length = copyOfRange.length;
                            String[] strArr = A08;
                            if (strArr[5].charAt(1) != strArr[4].charAt(1)) {
                                throw new RuntimeException();
                            }
                            A08[7] = "yGrIv6QCmXhG";
                            if (i4 >= length) {
                                return new String(copyOfRange);
                            }
                            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 85);
                            i4++;
                        }
                    }

                    public static void A02() {
                        A07 = new byte[]{-36, -45, -15, -16, -45, Ascii.CAN, 33, Ascii.ETB, -45, -37, -21, -30, 54, 49, -30, 37, 55, 39, Ascii.SYN, 39, 58, 54, -16, 46, 39, 48, 41, 54, 42, -22, -21, -30, -22, -51, -46, 19, 49, 56, 57, 60, 51, 56, 49, -22, Base64.padSymbol, 62, 67, 54, -22, 65, 51, 62, 50, -22, Base64.padSymbol, 62, 43, 60, 62, -22, -14, -48, -30, -17, -26, -29, Ascii.DC4, 50, 53, 46, 35, 33, 52, 41, 46, 39, -32, 51, 52, 57, 44, -32, 37, 46, 36, -32, -24, Ascii.EM, Base64.padSymbol, -8, 44, 9, 42, 40, 52, 41, 42, 55, -48, -23, -32, -13, -21, -32, -34, -17, -32, -33, -101, -18, -16, -35, -17, -28, -17, -25, -32, -101, -31, -22, -19, -24, -36, -17, -87, Ascii.SI, -3, 10, Ascii.SI, -55, Ascii.SI, 1, Ascii.SO, 5, 2, -31, -45, -32, -41, -44};
                    }

                    static {
                        A02();
                    }

                    {
                        super(A00(87, 11, 112));
                        this.A04 = new C4J();
                        int size = list.size();
                        String A00 = A00(125, 10, 71);
                        if (size == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
                            byte[] bArr = list.get(0);
                            this.A03 = bArr[24];
                            this.A02 = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
                            this.A05 = A00(61, 5, 40).equals(AbstractC03624a.A0r(bArr, 43, bArr.length - 43)) ? A00(135, 5, 25) : A00;
                            this.A01 = bArr[25] * Ascii.DC4;
                            this.A06 = (bArr[0] & 32) != 0;
                            if (this.A06) {
                                int requestedVerticalPlacement = ((bArr[10] & 255) << 8) | (bArr[11] & 255);
                                this.A00 = AbstractC03624a.A00(requestedVerticalPlacement / this.A01, 0.0f, 0.95f);
                                return;
                            }
                            this.A00 = 0.85f;
                            return;
                        }
                        this.A03 = 0;
                        this.A02 = -1;
                        this.A05 = A00;
                        this.A06 = false;
                        this.A00 = 0.85f;
                        this.A01 = -1;
                    }

                    public static String A01(C4J c4j) throws C1799kM {
                        A07(c4j.A07() >= 2);
                        int bomSize = c4j.A0M();
                        if (bomSize == 0) {
                            return A00(0, 0, 4);
                        }
                        int A09 = c4j.A09();
                        Charset A0Z = c4j.A0Z();
                        int textLength = c4j.A09();
                        int bomSize2 = bomSize - (textLength - A09);
                        if (A0Z == null) {
                            A0Z = AbstractC1693ia.A06;
                        }
                        return c4j.A0X(bomSize2, A0Z);
                    }

                    public static void A03(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
                        if (i != i2) {
                            int colorArgb = i5 | 33;
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(((i & 255) << 24) | (i >>> 8)), i3, i4, colorArgb);
                        }
                    }

                    public static void A04(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
                        if (i != i2) {
                            int i6 = i5 | 33;
                            int i7 = i & 1;
                            String[] strArr = A08;
                            String str2 = strArr[5];
                            String str3 = strArr[4];
                            int charAt = str2.charAt(1);
                            int flags = str3.charAt(1);
                            if (charAt != flags) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A08;
                            strArr2[0] = "CK5gR0nAI76s8EUE0bHGc";
                            strArr2[6] = "a3HU5o";
                            boolean z = i7 != 0;
                            int flags2 = i & 2;
                            boolean z2 = flags2 != 0;
                            if (z) {
                                if (z2) {
                                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                                } else {
                                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                                }
                            } else if (z2) {
                                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
                            }
                            int flags3 = i & 4;
                            boolean z3 = flags3 != 0;
                            if (z3) {
                                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
                            }
                            if (!z3 && !z && !z2) {
                                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
                            }
                        }
                    }

                    public static void A05(SpannableStringBuilder spannableStringBuilder, String str2, int i, int i2) {
                        if (str2 != A00(125, 10, 71)) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(str2), i, i2, 16711713);
                        }
                    }

                    private void A06(C4J c4j, SpannableStringBuilder spannableStringBuilder) throws C1799kM {
                        A07(c4j.A07() >= 12);
                        int fontFace = c4j.A0M();
                        int A0M = c4j.A0M();
                        c4j.A0g(2);
                        int A0I = c4j.A0I();
                        c4j.A0g(1);
                        int A0C = c4j.A0C();
                        int length = spannableStringBuilder.length();
                        String A00 = A00(33, 2, 79);
                        String A002 = A00(87, 11, 112);
                        if (A0M > length) {
                            StringBuilder append = new StringBuilder().append(A00(66, 21, 107)).append(A0M).append(A00(10, 23, 109));
                            int start = spannableStringBuilder.length();
                            AnonymousClass44.A07(A002, append.append(start).append(A00).toString());
                            A0M = spannableStringBuilder.length();
                        }
                        if (fontFace < A0M) {
                            A04(spannableStringBuilder, A0I, this.A03, fontFace, A0M, 0);
                            A03(spannableStringBuilder, A0C, this.A02, fontFace, A0M, 0);
                            return;
                        }
                        AnonymousClass44.A07(A002, A00(35, 26, 117) + fontFace + A00(0, 10, 94) + A0M + A00);
                    }

                    public static void A07(boolean z) throws C1799kM {
                        if (z) {
                            return;
                        }
                        throw new C1799kM(A00(98, 27, 38));
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cf, code lost:
                        if (r7.A07() >= 2) goto L33;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d1, code lost:
                        A07(r9);
                        r7 = com.facebook.ads.redexgen.X.AbstractC03624a.A00(r17.A04.A0M() / r17.A01, 0.0f, 0.95f);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ff, code lost:
                        if (r7.A07() >= 2) goto L33;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:33:0x0102, code lost:
                        r9 = false;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:26:0x00cb  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x00ef  */
                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final com.facebook.ads.redexgen.X.J7 A0g(byte[] r18, int r19, boolean r20) throws com.facebook.ads.redexgen.X.C1799kM {
                        /*
                            Method dump skipped, instructions count: 304
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02720m.A0g(byte[], int, boolean):com.facebook.ads.redexgen.X.J7");
                    }
                };
            case 6:
            case 7:
                return new C02810v(c2061or.A0W, c2061or.A03, -9223372036854775807L);
            case '\b':
                final int i = c2061or.A03;
                return new AbstractC04477h(i, null) { // from class: com.facebook.ads.redexgen.X.0u
                    public static byte[] A0B;
                    public static String[] A0C = {"StgEnyZrIiHukKZI2mjNBpxMfWWHoY2N", "pPiD", "4nUZoZtFS8Fi7y", "soUNpDdTYgeZzoXYzwhXpymROnExsdJX", "jQfRXI2O9AZyEok5vhLK2LNFq5CUiSFO", "NRbI1hfkyM6vnftXJILRzJXuHgspnZLF", "iSpRtaxsShIsoCeM", ExifInterface.LATITUDE_SOUTH};
                    public int A00;
                    public JD A02;
                    public JE A03;
                    public List<C2012o2> A04;
                    public List<C2012o2> A05;
                    public final int A06;
                    public final boolean A09;
                    public final JD[] A0A;
                    public final C4J A08 = new C4J();
                    public final C4I A07 = new C4I();
                    public int A01 = -1;

                    public static String A00(int i2, int i3, int i4) {
                        byte[] copyOfRange = Arrays.copyOfRange(A0B, i2, i2 + i3);
                        int i5 = 0;
                        while (true) {
                            int length = copyOfRange.length;
                            String[] strArr = A0C;
                            if (strArr[2].length() == strArr[7].length()) {
                                throw new RuntimeException();
                            }
                            A0C[1] = "zpnW";
                            if (i5 >= length) {
                                return new String(copyOfRange);
                            }
                            copyOfRange[i5] = (byte) ((copyOfRange[i5] - i4) - 124);
                            i5++;
                        }
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    private void A03() {
                        this.A02.A0C(this.A07.A04(4), this.A07.A04(2), this.A07.A04(2), this.A07.A0H(), this.A07.A0H(), this.A07.A04(3), this.A07.A04(3));
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    private void A04() {
                        int A012 = JD.A01(this.A07.A04(2), this.A07.A04(2), this.A07.A04(2), this.A07.A04(2));
                        int A013 = JD.A01(this.A07.A04(2), this.A07.A04(2), this.A07.A04(2), this.A07.A04(2));
                        this.A07.A09(2);
                        this.A02.A0B(A012, A013, JD.A00(this.A07.A04(2), this.A07.A04(2), this.A07.A04(2)));
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    private void A06() {
                        int A012 = JD.A01(this.A07.A04(2), this.A07.A04(2), this.A07.A04(2), this.A07.A04(2));
                        int A04 = this.A07.A04(2);
                        int A00 = JD.A00(this.A07.A04(2), this.A07.A04(2), this.A07.A04(2));
                        if (this.A07.A0H()) {
                            A04 |= 4;
                        }
                        boolean A0H = this.A07.A0H();
                        int A042 = this.A07.A04(2);
                        int A043 = this.A07.A04(2);
                        int A044 = this.A07.A04(2);
                        this.A07.A09(8);
                        this.A02.A0D(A012, A00, A0H, A04, A042, A043, A044);
                    }

                    public static void A09() {
                        A0B = new byte[]{3, Ascii.VT, 86, 72, 84, 88, 72, 81, 70, 72, 3, 81, 88, 80, 69, 72, 85, 3, Ascii.SYN, 89, 107, 104, 104, 91, 100, 106, 51, -5, -14, 73, 58, 55, SignedBytes.MAX_POWER_OF_TWO, -14, 52, 62, 65, 53, Base64.padSymbol, 37, 59, 76, 55, -14, 59, 69, -14, 2, 32, 50, 4, -8, 58, 77, 76, -8, 59, 77, 74, 74, Base64.padSymbol, 70, 76, -8, 65, 70, 60, Base64.padSymbol, 80, -8, 65, 75, -8, 8, 42, 38, -4, -11, -3, 9, 42, 40, 52, 41, 42, 55, 19, 69, 66, 66, 53, 62, 68, 60, 73, -16, 69, 62, 67, 69, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 63, 66, 68, 53, 52, -16, 19, Ascii.US, Ascii.GS, Ascii.GS, 17, Ascii.RS, Ascii.DC4, 47, Ascii.NAK, 40, 36, 1, -16, 19, 63, Base64.padSymbol, Base64.padSymbol, 49, 62, 52, 10, -16, -42, 8, 5, 5, -8, 1, 7, -1, Ascii.FF, -77, 8, 1, 6, 8, 3, 3, 2, 5, 7, -8, -9, -77, -42, -30, -32, -32, -44, -31, -41, -14, -29, -60, -55, -77, -42, 2, 0, 0, -12, 1, -9, -51, -77, -52, -4, -2, -53, -21, -40, -23, -21, -13, -19, -4, -88, -19, -10, -20, -19, -20, -88, -8, -6, -19, -11, -23, -4, -3, -6, -19, -12, 1, -61, -88, -5, -15, 2, -19, -88, -15, -5, -88, Ascii.SYN, 63, 52, SignedBytes.MAX_POWER_OF_TWO, 70, 63, 69, 54, 67, 54, 53, -15, Ascii.NAK, 37, 39, Ascii.DC4, Ascii.DC4, 48, 33, Ascii.DC2, Ascii.DC4, Ascii.FS, Ascii.SYN, 37, 48, Ascii.NAK, Ascii.DC2, 37, Ascii.DC2, -15, 51, 54, 55, SignedBytes.MAX_POWER_OF_TWO, 67, 54, -15, Ascii.NAK, 37, 39, Ascii.DC4, Ascii.DC4, 48, 33, Ascii.DC2, Ascii.DC4, Ascii.FS, Ascii.SYN, 37, 48, 36, 37, Ascii.DC2, 35, 37, 8, 45, 53, 32, 43, 40, 35, -33, 2, -17, -33, 34, 46, 44, 44, 32, 45, 35, -7, -33, 49, 86, 94, 73, 84, 81, 76, 8, 43, Ascii.EM, 8, 75, 87, 85, 85, 73, 86, 76, 34, 8, -7, Ascii.RS, 38, 17, Ascii.FS, Ascii.EM, Ascii.DC4, -48, -9, -30, -48, 19, Ascii.CAN, 17, 34, 17, 19, 36, Ascii.NAK, 34, -22, -48, -55, -18, -10, -31, -20, -23, -28, -96, -57, -77, -96, -29, -24, -31, -14, -31, -29, -12, -27, -14, -70, -96, -53, -16, -8, -29, -18, -21, -26, -94, -28, -29, -11, -25, -94, -27, -15, -17, -17, -29, -16, -26, -68, -94, -28, 9, 17, -4, 7, 4, -1, -69, 0, 19, Ascii.SI, 0, 9, -1, 0, -1, -69, -2, 10, 8, 8, -4, 9, -1, -43, -69, -7, Ascii.RS, 38, 17, Ascii.FS, Ascii.EM, Ascii.DC4, -48, Ascii.NAK, 40, 36, Ascii.NAK, Ascii.RS, Ascii.DC4, Ascii.NAK, Ascii.DC4, -48, 35, Ascii.NAK, 34, 38, Ascii.EM, 19, Ascii.NAK, -48, Ascii.RS, 37, Ascii.GS, Ascii.DC2, Ascii.NAK, 34, -22, -48, 42, 60, 72, 76, 60, 69, 58, 60, -9, 69, 76, 68, 57, 60, 73, -9, 59, SignedBytes.MAX_POWER_OF_TWO, 74, 58, 70, 69, 75, SignedBytes.MAX_POWER_OF_TWO, 69, 76, SignedBytes.MAX_POWER_OF_TWO, 75, 80, 5, -9, 71, 73, 60, 77, SignedBytes.MAX_POWER_OF_TWO, 70, 76, 74, Ascii.DC4, 66, 52, 65, 69, 56, 50, 52, Ascii.GS, 68, 60, 49, 52, 65, -17, 56, 66, -17, Base64.padSymbol, 62, Base64.padSymbol, -4, 73, 52, 65, 62, -17, -9};
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException
                     */
                    private void A0E(int i2) {
                        JD jd = this.A0A[i2];
                        this.A07.A09(2);
                        boolean A0H = this.A07.A0H();
                        boolean A0H2 = this.A07.A0H();
                        boolean A0H3 = this.A07.A0H();
                        int A04 = this.A07.A04(3);
                        boolean A0H4 = this.A07.A0H();
                        int A042 = this.A07.A04(7);
                        int A043 = this.A07.A04(8);
                        int A044 = this.A07.A04(4);
                        int A045 = this.A07.A04(4);
                        this.A07.A09(2);
                        int A046 = this.A07.A04(6);
                        this.A07.A09(2);
                        jd.A0F(A0H, A0H2, A0H3, A04, A0H4, A042, A043, A045, A046, A044, this.A07.A04(3), this.A07.A04(3));
                    }

                    static {
                        A09();
                    }

                    {
                        boolean z = true;
                        this.A06 = i == -1 ? 1 : i;
                        this.A09 = (initializationData == null || !C3U.A06(initializationData)) ? false : false;
                        this.A0A = new JD[8];
                        for (int i2 = 0; i2 < 8; i2++) {
                            this.A0A[i2] = new JD();
                        }
                        this.A02 = this.A0A[0];
                    }

                    /* JADX WARN: Incorrect condition in loop: B:4:0x0014 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    private java.util.List<com.facebook.ads.redexgen.X.C2012o2> A01() {
                        /*
                            r6 = this;
                            java.util.ArrayList r3 = new java.util.ArrayList
                            r3.<init>()
                            r4 = 0
                        L6:
                            r5 = 8
                            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C02800u.A0C
                            r0 = 3
                            r1 = r1[r0]
                            r0 = 1
                            char r1 = r1.charAt(r0)
                            r0 = 111(0x6f, float:1.56E-43)
                            if (r1 == r0) goto L1c
                            java.lang.RuntimeException r0 = new java.lang.RuntimeException
                            r0.<init>()
                            throw r0
                        L1c:
                            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C02800u.A0C
                            java.lang.String r1 = "prFtgZEgycD"
                            r0 = 6
                            r2[r0] = r1
                            if (r4 >= r5) goto L49
                            com.facebook.ads.redexgen.X.JD[] r0 = r6.A0A
                            r0 = r0[r4]
                            boolean r0 = r0.A0H()
                            if (r0 != 0) goto L46
                            com.facebook.ads.redexgen.X.JD[] r0 = r6.A0A
                            r0 = r0[r4]
                            boolean r0 = r0.A0I()
                            if (r0 == 0) goto L46
                            com.facebook.ads.redexgen.X.JD[] r0 = r6.A0A
                            r0 = r0[r4]
                            com.facebook.ads.redexgen.X.JC r0 = r0.A05()
                            if (r0 == 0) goto L46
                            r3.add(r0)
                        L46:
                            int r4 = r4 + 1
                            goto L6
                        L49:
                            java.util.Comparator r0 = com.facebook.ads.redexgen.X.JC.A01()
                            java.util.Collections.sort(r3, r0)
                            int r0 = r3.size()
                            java.util.ArrayList r2 = new java.util.ArrayList
                            r2.<init>(r0)
                            r1 = 0
                        L5a:
                            int r0 = r3.size()
                            if (r1 >= r0) goto L6e
                            java.lang.Object r0 = r3.get(r1)
                            com.facebook.ads.redexgen.X.JC r0 = (com.facebook.ads.redexgen.X.JC) r0
                            com.facebook.ads.redexgen.X.o2 r0 = r0.A01
                            r2.add(r0)
                            int r1 = r1 + 1
                            goto L5a
                        L6e:
                            java.util.List r0 = java.util.Collections.unmodifiableList(r2)
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02800u.A01():java.util.List");
                    }

                    private void A02() {
                        if (this.A03 == null) {
                            return;
                        }
                        A07();
                        this.A03 = null;
                    }

                    private void A05() {
                        this.A07.A09(4);
                        int A04 = this.A07.A04(4);
                        this.A07.A09(2);
                        int column = this.A07.A04(6);
                        this.A02.A0A(A04, column);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:22:0x0119, code lost:
                        throw new java.lang.RuntimeException();
                     */
                    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"currentDtvCcPacket"})
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    private void A07() {
                        /*
                            Method dump skipped, instructions count: 545
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02800u.A07():void");
                    }

                    private void A08() {
                        for (int i2 = 0; i2 < 8; i2++) {
                            this.A0A[i2].A08();
                        }
                    }

                    private void A0A(int i2) {
                        switch (i2) {
                            case 0:
                            case 14:
                                return;
                            case 3:
                                this.A04 = A01();
                                return;
                            case 8:
                                this.A02.A06();
                                return;
                            case 12:
                                A08();
                                return;
                            case 13:
                                JD jd = this.A02;
                                if (A0C[1].length() == 4) {
                                    A0C[4] = "FGYJlLquXUr7pMFj0Rb0j1D1hbYlwPR1";
                                    jd.A09('\n');
                                    return;
                                }
                                break;
                            default:
                                String A00 = A00(73, 13, 73);
                                if (i2 >= 17 && i2 <= 23) {
                                    AnonymousClass44.A07(A00, A00(86, 44, 84) + i2);
                                    this.A07.A09(8);
                                    return;
                                } else if (A0C[1].length() == 4) {
                                    A0C[0] = "tIivKyJ4yVQrhz6naHsNX4hATBwVD1SZ";
                                    if (i2 >= 24 && i2 <= 31) {
                                        AnonymousClass44.A07(A00, A00(130, 43, 23) + i2);
                                        this.A07.A09(16);
                                        return;
                                    }
                                    AnonymousClass44.A07(A00, A00(267, 20, 67) + i2);
                                    return;
                                }
                                break;
                        }
                        throw new RuntimeException();
                    }

                    private void A0B(int i2) {
                        JD jd;
                        switch (i2) {
                            case 128:
                            case 129:
                            case 130:
                            case 131:
                            case 132:
                            case 133:
                            case 134:
                            case 135:
                                int i3 = i2 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                                int window = this.A00;
                                if (window == i3) {
                                    return;
                                }
                                this.A00 = i3;
                                this.A02 = this.A0A[i3];
                                return;
                            case 136:
                                for (int i4 = 1; i4 <= 8; i4++) {
                                    boolean A0H = this.A07.A0H();
                                    if (A0C[4].charAt(20) != 'R') {
                                        A0C[4] = "wmiXxVCO1pDCphTe66oY7BPOwyAFxX93";
                                        if (!A0H) {
                                        }
                                        int i5 = 8 - i4;
                                        this.A0A[i5].A07();
                                    } else {
                                        A0C[3] = "RojSNoyJye4svFAgcf8I6qfTjBFYUXnP";
                                        if (!A0H) {
                                        }
                                        int i52 = 8 - i4;
                                        this.A0A[i52].A07();
                                    }
                                }
                                return;
                            case 137:
                                for (int i6 = 1; i6 <= 8; i6++) {
                                    if (this.A07.A0H()) {
                                        int i7 = 8 - i6;
                                        this.A0A[i7].A0E(true);
                                    }
                                }
                                return;
                            case 138:
                                for (int i8 = 1; i8 <= 8; i8++) {
                                    if (this.A07.A0H()) {
                                        int i9 = 8 - i8;
                                        this.A0A[i9].A0E(false);
                                    }
                                }
                                return;
                            case 139:
                                for (int i10 = 1; i10 <= 8; i10++) {
                                    if (this.A07.A0H()) {
                                        int i11 = 8 - i10;
                                        this.A0A[i11].A0E(!jd.A0I());
                                    }
                                }
                                return;
                            case TPOptionalID.OPTION_ID_BEFORE_OBJECT_JITTER_BUFFER_CONFIG /* 140 */:
                                for (int i12 = 1; i12 <= 8; i12++) {
                                    if (this.A07.A0H()) {
                                        int i13 = 8 - i12;
                                        this.A0A[i13].A08();
                                    }
                                }
                                return;
                            case TPOptionalID.OPTION_ID_BEFORE_QUEUE_INT_SPECIAL_SEI_TYPES_CALLBACK /* 141 */:
                                C4I c4i = this.A07;
                                if (A0C[3].charAt(1) == 'o') {
                                    A0C[5] = "LOcI8geri01bbfSL3Un4ebrkDtb9fUkR";
                                    c4i.A09(8);
                                    return;
                                }
                                break;
                            case TPOptionalID.OPTION_ID_BEFORE_LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS /* 142 */:
                                return;
                            case 143:
                                A08();
                                return;
                            case 144:
                                boolean A0G = this.A02.A0G();
                                if (A0C[5].charAt(13) == 'f') {
                                    A0C[6] = "3SE5mdYm5uC9wCg4PrUGVOVOhS7UyufG";
                                    if (!A0G) {
                                        this.A07.A09(16);
                                        return;
                                    } else {
                                        A03();
                                        return;
                                    }
                                }
                                break;
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT /* 145 */:
                                if (!this.A02.A0G()) {
                                    this.A07.A09(24);
                                    return;
                                } else {
                                    A04();
                                    return;
                                }
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                                if (!this.A02.A0G()) {
                                    this.A07.A09(16);
                                    return;
                                } else {
                                    A05();
                                    return;
                                }
                            case 147:
                            case 148:
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_HLS_AV_SEPARATE_TIMESTAMP_CALCULATOR_FIX_LOGIC /* 149 */:
                            case 150:
                            default:
                                AnonymousClass44.A07(A00(73, 13, 73), A00(MBSupportMuteAdType.INTERSTITIAL_VIDEO, 20, 108) + i2);
                                return;
                            case 151:
                                if (!this.A02.A0G()) {
                                    this.A07.A09(32);
                                    return;
                                } else {
                                    A06();
                                    return;
                                }
                            case 152:
                            case ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS /* 153 */:
                            case 154:
                            case ModuleDescriptor.MODULE_VERSION /* 155 */:
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_FFMPEG_LIVE_HLS_FIRST_SEGMENT_DISCONTINUITY_FIX /* 156 */:
                            case 157:
                            case 158:
                            case 159:
                                int i14 = i2 - 152;
                                A0E(i14);
                                int window2 = this.A00;
                                if (window2 == i14) {
                                    return;
                                }
                                this.A00 = i14;
                                this.A02 = this.A0A[i14];
                                return;
                        }
                        throw new RuntimeException();
                    }

                    private void A0C(int i2) {
                        if (i2 <= 7) {
                            return;
                        }
                        if (i2 <= 15) {
                            this.A07.A09(8);
                        } else if (i2 <= 23) {
                            this.A07.A09(16);
                        } else if (i2 > 31) {
                        } else {
                            this.A07.A09(24);
                        }
                    }

                    private void A0D(int i2) {
                        if (i2 <= 135) {
                            this.A07.A09(32);
                        } else if (i2 <= 143) {
                            this.A07.A09(40);
                        } else if (i2 > 159) {
                        } else {
                            this.A07.A09(2);
                            int length = this.A07.A04(6);
                            this.A07.A09(length * 8);
                        }
                    }

                    private void A0F(int i2) {
                        if (i2 == 127) {
                            this.A02.A09((char) 9835);
                        } else {
                            this.A02.A09((char) (i2 & 255));
                        }
                    }

                    private void A0G(int i2) {
                        this.A02.A09((char) (i2 & 255));
                    }

                    private void A0H(int i2) {
                        switch (i2) {
                            case 32:
                                this.A02.A09(' ');
                                return;
                            case 33:
                                this.A02.A09(Typography.nbsp);
                                return;
                            case 37:
                                this.A02.A09(Typography.ellipsis);
                                return;
                            case 42:
                                this.A02.A09((char) 352);
                                return;
                            case 44:
                                this.A02.A09((char) 338);
                                return;
                            case 48:
                                this.A02.A09((char) 9608);
                                return;
                            case 49:
                                this.A02.A09(Typography.leftSingleQuote);
                                return;
                            case 50:
                                JD jd = this.A02;
                                if (A0C[6].length() != 3) {
                                    A0C[1] = "dnPp";
                                    jd.A09(Typography.rightSingleQuote);
                                    return;
                                }
                                throw new RuntimeException();
                            case 51:
                                this.A02.A09(Typography.leftDoubleQuote);
                                return;
                            case 52:
                                this.A02.A09(Typography.rightDoubleQuote);
                                return;
                            case 53:
                                this.A02.A09(Typography.bullet);
                                return;
                            case 57:
                                this.A02.A09(Typography.tm);
                                return;
                            case 58:
                                this.A02.A09((char) 353);
                                return;
                            case 60:
                                this.A02.A09((char) 339);
                                return;
                            case 61:
                                JD jd2 = this.A02;
                                if (A0C[0].charAt(19) == 'N') {
                                    A0C[6] = "g2xlw";
                                    jd2.A09((char) 8480);
                                    return;
                                }
                                break;
                            case 63:
                                this.A02.A09((char) 376);
                                return;
                            case 118:
                                this.A02.A09((char) 8539);
                                return;
                            case 119:
                                this.A02.A09((char) 8540);
                                return;
                            case 120:
                                this.A02.A09((char) 8541);
                                return;
                            case 121:
                                this.A02.A09((char) 8542);
                                return;
                            case 122:
                                JD jd3 = this.A02;
                                if (A0C[0].charAt(19) == 'N') {
                                    String[] strArr = A0C;
                                    strArr[2] = "AONnD2CR0STnJG";
                                    strArr[7] = "K";
                                    jd3.A09((char) 9474);
                                    return;
                                }
                                break;
                            case 123:
                                this.A02.A09((char) 9488);
                                return;
                            case 124:
                                this.A02.A09((char) 9492);
                                return;
                            case 125:
                                this.A02.A09((char) 9472);
                                return;
                            case 126:
                                this.A02.A09((char) 9496);
                                return;
                            case 127:
                                this.A02.A09((char) 9484);
                                return;
                            default:
                                AnonymousClass44.A07(A00(73, 13, 73), A00(307, 22, 52) + i2);
                                return;
                        }
                        throw new RuntimeException();
                    }

                    private void A0I(int i2) {
                        if (i2 == 160) {
                            this.A02.A09((char) 13252);
                            return;
                        }
                        AnonymousClass44.A07(A00(73, 13, 73), A00(329, 22, 4) + i2);
                        this.A02.A09('_');
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final /* bridge */ /* synthetic */ C04497j A0W() throws C1799kM {
                        return super.A5j();
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final /* bridge */ /* synthetic */ AbstractC04487i A0X() throws C1799kM {
                        return super.A5l();
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final C1795kI A0Z() {
                        this.A05 = this.A04;
                        return new C1795kI((List) C3M.A01(this.A04));
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final /* bridge */ /* synthetic */ void A0a(C04497j c04497j) throws C1799kM {
                        super.AGZ(c04497j);
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final void A0b(C04497j c04497j) {
                        ByteBuffer byteBuffer = (ByteBuffer) C3M.A01(c04497j.A02);
                        this.A08.A0j(byteBuffer.array(), byteBuffer.limit());
                        while (true) {
                            C4J c4j = this.A08;
                            if (A0C[3].charAt(1) != 'o') {
                                throw new RuntimeException();
                            }
                            A0C[5] = "2zTM8NXP9KhrrfnQUZAXf9x7h4oPwvMb";
                            if (c4j.A07() >= 3) {
                                C4J c4j2 = this.A08;
                                if (A0C[6].length() == 3) {
                                    throw new RuntimeException();
                                }
                                A0C[5] = "a4C0oLfpRPdUSfve8yJk6dKzwRXOoh8W";
                                int A0I = c4j2.A0I() & 7;
                                int i2 = A0I & 3;
                                boolean z = (A0I & 4) == 4;
                                byte A0I2 = (byte) this.A08.A0I();
                                byte A0I3 = (byte) this.A08.A0I();
                                if (i2 == 2 || i2 == 3) {
                                    if (z) {
                                        String A00 = A00(73, 13, 73);
                                        if (i2 == 3) {
                                            A02();
                                            int i3 = (A0I2 & 192) >> 6;
                                            int ccType = this.A01;
                                            if (ccType != -1 && i3 != (this.A01 + 1) % 4) {
                                                A08();
                                                AnonymousClass44.A07(A00, A00(432, 40, 91) + this.A01 + A00(18, 9, 122) + i3);
                                            }
                                            this.A01 = i3;
                                            int i4 = A0I2 & 63;
                                            if (i4 == 0) {
                                                i4 = 64;
                                            }
                                            this.A03 = new JE(i3, i4);
                                            byte[] inputBufferData = this.A03.A03;
                                            JE je = this.A03;
                                            int i5 = je.A00;
                                            je.A00 = i5 + 1;
                                            inputBufferData[i5] = A0I3;
                                        } else {
                                            C3M.A07(i2 == 2);
                                            if (this.A03 == null) {
                                                AnonymousClass44.A05(A00, A00(212, 55, 85));
                                            } else {
                                                byte[] inputBufferData2 = this.A03.A03;
                                                String[] strArr = A0C;
                                                if (strArr[2].length() == strArr[7].length()) {
                                                    throw new RuntimeException();
                                                }
                                                A0C[4] = "YjvVjm4QPcLmngCUKURICEhYITyNXaIl";
                                                JE je2 = this.A03;
                                                int i6 = je2.A00;
                                                je2.A00 = i6 + 1;
                                                inputBufferData2[i6] = A0I2;
                                                byte[] inputBufferData3 = this.A03.A03;
                                                JE je3 = this.A03;
                                                int i7 = je3.A00;
                                                je3.A00 = i7 + 1;
                                                inputBufferData3[i7] = A0I3;
                                            }
                                        }
                                        if (this.A03.A00 == (this.A03.A01 * 2) - 1) {
                                            A02();
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            } else {
                                return;
                            }
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h
                    public final boolean A0d() {
                        return this.A04 != this.A05;
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h, com.facebook.ads.redexgen.X.C5O
                    public final /* bridge */ /* synthetic */ void AGr() {
                        super.AGr();
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h, com.facebook.ads.redexgen.X.InterfaceC1800kN
                    public final /* bridge */ /* synthetic */ void AIx(long j) {
                        super.AIx(j);
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04477h, com.facebook.ads.redexgen.X.C5O
                    public final void flush() {
                        super.flush();
                        this.A04 = null;
                        this.A05 = null;
                        this.A00 = 0;
                        this.A02 = this.A0A[this.A00];
                        A08();
                        this.A03 = null;
                    }
                };
            case '\t':
                final List<byte[]> list2 = c2061or.A0X;
                return new AbstractC04507k(list2) { // from class: com.facebook.ads.redexgen.X.0r
                    public static byte[] A01;
                    public final JQ A00;

                    static {
                        A01();
                    }

                    /* JADX WARN: Failed to parse debug info
                    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
                    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
                    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
                    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
                    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
                     */
                    {
                        super(A00(0, 10, 35));
                        C4J c4j = new C4J(list2.get(0));
                        this.A00 = new JQ(c4j.A0M(), c4j.A0M());
                    }

                    public static String A00(int i2, int i3, int i4) {
                        byte[] copyOfRange = Arrays.copyOfRange(A01, i2, i2 + i3);
                        for (int i5 = 0; i5 < copyOfRange.length; i5++) {
                            copyOfRange[i5] = (byte) ((copyOfRange[i5] - i4) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
                        }
                        return new String(copyOfRange);
                    }

                    public static void A01() {
                        A01 = new byte[]{-47, 3, -17, -47, -14, -16, -4, -15, -14, -1};
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    public final J7 A0g(byte[] bArr, int i2, boolean z) {
                        if (z) {
                            this.A00.A0J();
                        }
                        return new C1787kA(this.A00.A0I(bArr, i2));
                    }
                };
            case '\n':
                return new AbstractC04507k() { // from class: com.facebook.ads.redexgen.X.0q
                    public static byte[] A04;
                    public static String[] A05 = {"76NlL2uX7lwdFYW1QMx5a8yy6e1HTIfb", "PPHM0li7JhLOVOPCGl5v88MgokGKQYEj", "LiwvhCZeMt7eMvNF2Pj8LYB8xSxq2ldh", "dFyDCM0ueCIxVfSox0aflDZ7gvAI841l", "LzKPlW0IyQE1s7YXIJw5EfFPQg4N9HTr", "CSOqnRNK1RYkqInl5L0si0E", "7S3a0phqj2SDINZS1RTIUWP", "6mBJEewaGVYJqmHVNKA"};
                    public Inflater A00;
                    public final C4J A01;
                    public final C4J A02;
                    public final JT A03;

                    public static String A01(int i2, int i3, int i4) {
                        byte[] copyOfRange = Arrays.copyOfRange(A04, i2, i2 + i3);
                        int i5 = 0;
                        while (true) {
                            int length = copyOfRange.length;
                            if (A05[2].charAt(24) != 'x') {
                                throw new RuntimeException();
                            }
                            String[] strArr = A05;
                            strArr[6] = "onjCODWUldEJohp5LCZVLSR";
                            strArr[5] = "Jw3HdCuNfu1JKaBA98S5ZsK";
                            if (i5 >= length) {
                                return new String(copyOfRange);
                            }
                            copyOfRange[i5] = (byte) ((copyOfRange[i5] - i4) - 74);
                            i5++;
                        }
                    }

                    public static void A02() {
                        A04 = new byte[]{-79, -56, -44, -91, -58, -60, -48, -59, -58, -45};
                    }

                    static {
                        A02();
                    }

                    {
                        A01(0, 10, 23);
                        this.A01 = new C4J();
                        this.A02 = new C4J();
                        this.A03 = new JT();
                    }

                    public static C2012o2 A00(C4J c4j, JT jt) {
                        int limit = c4j.A0A();
                        int nextSectionPosition = c4j.A0I();
                        int sectionLength = c4j.A0M();
                        int sectionType = c4j.A09() + sectionLength;
                        if (sectionType > limit) {
                            c4j.A0f(limit);
                            return null;
                        }
                        C2012o2 c2012o2 = null;
                        switch (nextSectionPosition) {
                            case 20:
                                jt.A02(c4j, sectionLength);
                                break;
                            case 21:
                                jt.A00(c4j, sectionLength);
                                break;
                            case 22:
                                jt.A01(c4j, sectionLength);
                                break;
                            case 128:
                                c2012o2 = jt.A06();
                                jt.A07();
                                break;
                        }
                        c4j.A0f(sectionType);
                        return c2012o2;
                    }

                    private void A03(C4J c4j) {
                        if (c4j.A07() > 0 && c4j.A0B() == 120) {
                            if (this.A00 == null) {
                                this.A00 = new Inflater();
                            }
                            C4J c4j2 = this.A02;
                            Inflater inflater = this.A00;
                            if (A05[3].charAt(5) != 'M') {
                                throw new RuntimeException();
                            }
                            A05[2] = "qzpsP6hj6GdiA1o5yIc6icGGxX8HbfHZ";
                            if (AbstractC03624a.A1D(c4j, c4j2, inflater)) {
                                c4j.A0j(this.A02.A0l(), this.A02.A0A());
                            }
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.AbstractC04507k
                    public final J7 A0g(byte[] bArr, int i2, boolean z) throws C1799kM {
                        this.A01.A0j(bArr, i2);
                        A03(this.A01);
                        this.A03.A07();
                        ArrayList arrayList = new ArrayList();
                        while (true) {
                            int A07 = this.A01.A07();
                            if (A05[7].length() != 19) {
                                throw new RuntimeException();
                            }
                            A05[7] = "qQU5NmoFNSXVl5etyHU";
                            if (A07 >= 3) {
                                C2012o2 A00 = A00(this.A01, this.A03);
                                if (A00 != null) {
                                    arrayList.add(A00);
                                }
                            } else {
                                return new C1786k9(Collections.unmodifiableList(arrayList));
                            }
                        }
                    }
                };
            default:
                throw new IllegalArgumentException(A00(0, 50, 37));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0594Dn
    public final boolean AJc(C2061or c2061or) {
        String str = c2061or.A0W;
        String mimeType = A00(236, 8, 34);
        if (!mimeType.equals(str)) {
            String mimeType2 = A00(TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 10, 53);
            if (!mimeType2.equals(str)) {
                String mimeType3 = A00(122, 20, 118);
                if (!mimeType3.equals(str)) {
                    String mimeType4 = A00(TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 21, 70);
                    if (!mimeType4.equals(str)) {
                        String mimeType5 = A00(216, 20, 127);
                        if (!mimeType5.equals(str)) {
                            String mimeType6 = A00(TsExtractor.TS_PACKET_SIZE, 28, 65);
                            if (!mimeType6.equals(str)) {
                                String mimeType7 = A00(50, 19, 111);
                                if (!mimeType7.equals(str)) {
                                    String mimeType8 = A00(TPOptionalID.OPTION_ID_BEFORE_LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS, 25, 115);
                                    if (!mimeType8.equals(str)) {
                                        String mimeType9 = A00(69, 19, 10);
                                        if (!mimeType9.equals(str)) {
                                            String mimeType10 = A00(88, 19, 24);
                                            if (!mimeType10.equals(str)) {
                                                String mimeType11 = A00(107, 15, 54);
                                                if (!mimeType11.equals(str)) {
                                                    return false;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }
}
