package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.mp4.Atom;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.io.encoding.Base64;
@MetaExoPlayerCustomization("Rename the class for A/B Testing")
/* renamed from: com.facebook.ads.redexgen.X.kc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1815kc implements GX {
    public static byte[] A0Z;
    public static String[] A0a = {"vtb", "vbKonC", "9ohrxt3rIVPnhyMUHrYVmyK7bOK5FZ2r", "2NigTWH0ge82u7sbUdSeL8Wtj6iQtHIS", "zZrcpvCeqeJUqHmK3YGTET67EQVL4Dlr", "FEfAuyU", "TXQt6Bb5wsq1E0rpiydPRGzBJonmO6nW", "L3NiJ083BoYvWzKRwautviQbODBNEwGW"};
    public static final InterfaceC0660Gb A0b;
    public static final C2061or A0c;
    public static final byte[] A0d;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    @MetaExoPlayerCustomization("New field")
    public long A0A;
    public long A0B;
    public long A0C;
    public C4J A0D;
    public GY A0E;
    public IY A0F;
    public boolean A0G;
    public boolean A0H;
    public H1[] A0I;
    public H1[] A0J;
    public final int A0K;
    public final SparseArray<IY> A0L;
    public final C4J A0M;
    public final C4J A0N;
    public final C4J A0O;
    public final C4J A0P;
    public final C4J A0Q;
    public final C4R A0R;
    public final H1 A0S;
    public final HO A0T;
    public final C0722Im A0U;
    public final ArrayDeque<C1822kj> A0V;
    public final ArrayDeque<IX> A0W;
    public final List<C2061or> A0X;
    public final byte[] A0Y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A01(IY iy, int i, int i2, C4J c4j, int i3) throws C03182i {
        int i4;
        int i5 = i3;
        c4j.A0f(8);
        int A00 = II.A00(c4j.A0C());
        C0722Im c0722Im = iy.A05.A03;
        C0724Io c0724Io = iy.A09;
        IP ip = (IP) AbstractC03624a.A0f(c0724Io.A06);
        c0724Io.A0C[i] = c4j.A0L();
        c0724Io.A0E[i] = c0724Io.A04;
        if ((A00 & 1) != 0) {
            long[] jArr = c0724Io.A0E;
            jArr[i] = jArr[i] + c4j.A0C();
        }
        boolean z = (A00 & 4) != 0;
        int i6 = ip.A01;
        if (z) {
            i6 = c4j.A0C();
        }
        boolean z2 = (A00 & 256) != 0;
        boolean z3 = (A00 & 512) != 0;
        boolean z4 = (A00 & 1024) != 0;
        boolean z5 = (A00 & 2048) != 0;
        long j = A0a(c0722Im) ? ((long[]) AbstractC03624a.A0f(c0722Im.A09))[0] : 0L;
        int[] iArr = c0724Io.A0B;
        long[] jArr2 = c0724Io.A0D;
        boolean[] zArr = c0724Io.A0G;
        boolean z6 = c0722Im.A03 == 2 && (i2 & 1) != 0;
        int i7 = i5 + c0724Io.A0C[i];
        long j2 = c0722Im.A06;
        long j3 = c0724Io.A05;
        while (i5 < i7) {
            if (z2) {
                i4 = c4j.A0C();
                if (A0a[5].length() == 30) {
                    throw new RuntimeException();
                }
                A0a[0] = "Vvd";
            } else {
                i4 = ip.A00;
            }
            int A002 = A00(i4);
            int A003 = A00(z3 ? c4j.A0C() : ip.A03);
            int A0C = z4 ? c4j.A0C() : (i5 == 0 && z) ? i6 : ip.A01;
            jArr2[i5] = AbstractC03624a.A0U(((z5 ? c4j.A0C() : 0) + j3) - j, 1000000L, j2);
            if (!c0724Io.A09) {
                jArr2[i5] = jArr2[i5] + iy.A05.A02;
            }
            iArr[i5] = A003;
            zArr[i5] = ((A0C >> 16) & 1) == 0 && (!z6 || i5 == 0);
            j3 += A002;
            i5++;
        }
        c0724Io.A05 = j3;
        return i7;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, C1855lT> A05(C4J c4j, long j) throws C03182i {
        long A0R;
        long A0R2;
        c4j.A0f(8);
        int A01 = II.A01(c4j.A0C());
        c4j.A0g(4);
        long A0Q = c4j.A0Q();
        if (A01 == 0) {
            A0R = c4j.A0Q();
            A0R2 = j + c4j.A0Q();
        } else {
            A0R = c4j.A0R();
            A0R2 = j + c4j.A0R();
        }
        long A0U = AbstractC03624a.A0U(A0R, 1000000L, A0Q);
        c4j.A0g(2);
        int A0M = c4j.A0M();
        int[] iArr = new int[A0M];
        long[] jArr = new long[A0M];
        long[] jArr2 = new long[A0M];
        long[] jArr3 = new long[A0M];
        long j2 = A0U;
        for (int i = 0; i < A0M; i++) {
            int A0C = c4j.A0C();
            if ((Integer.MIN_VALUE & A0C) != 0) {
                throw C03182i.A01(A0A(756, 28, 79), null);
            }
            long A0Q2 = c4j.A0Q();
            iArr[i] = Integer.MAX_VALUE & A0C;
            jArr[i] = A0R2;
            jArr3[i] = j2;
            A0R += A0Q2;
            j2 = AbstractC03624a.A0U(A0R, 1000000L, A0Q);
            jArr2[i] = j2 - jArr3[i];
            c4j.A0g(4);
            A0R2 += iArr[i];
        }
        return Pair.create(Long.valueOf(A0U), new C1855lT(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 12 out of bounds for length 11
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static IY A09(C4J c4j, SparseArray<IY> sparseArray, boolean z) {
        c4j.A0f(8);
        int A00 = II.A00(c4j.A0C());
        IY valueAt = z ? sparseArray.valueAt(0) : sparseArray.get(c4j.A0C());
        if (valueAt == null) {
            String[] strArr = A0a;
            if (strArr[4].charAt(20) != strArr[6].charAt(20)) {
                A0a[1] = "jDobgNhtM";
                return null;
            }
            throw new RuntimeException();
        }
        if ((A00 & 1) != 0) {
            long A0R = c4j.A0R();
            valueAt.A09.A04 = A0R;
            valueAt.A09.A03 = A0R;
        }
        IP ip = valueAt.A04;
        valueAt.A09.A06 = new IP((A00 & 2) != 0 ? c4j.A0C() - 1 : ip.A02, (A00 & 8) != 0 ? c4j.A0C() : ip.A00, (A00 & 16) != 0 ? c4j.A0C() : ip.A03, (A00 & 32) != 0 ? c4j.A0C() : ip.A01);
        return valueAt;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0a;
            if (strArr[4].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            A0a[5] = "p0M5dFs6dnHIC4r2oiX9lIp2";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 74);
            i4++;
        }
    }

    public static void A0D() {
        A0Z = new byte[]{8, 65, 91, 8, 76, 65, 78, 78, 77, 90, 77, 70, 92, 8, 78, 90, 71, 69, 8, 78, 90, 73, 79, 69, 77, 70, 92, 8, 91, 73, 69, 88, 68, 77, 8, 75, 71, 93, 70, 92, 109, 36, 62, 109, 42, 63, 40, 44, 57, 40, 63, 109, 57, 37, 44, 35, 109, 43, 63, 44, 42, 32, 40, 35, 57, 109, 62, 44, 32, Base64.padSymbol, 33, 40, 109, 46, 34, 56, 35, 57, 47, Ascii.SUB, 1, 3, 78, Ascii.GS, 7, Ascii.DC4, Ascii.VT, 78, 2, Ascii.VT, Ascii.GS, Ascii.GS, 78, Ascii.SUB, 6, Ascii.SI, 0, 78, 6, Ascii.VT, Ascii.SI, 10, Ascii.VT, Ascii.FS, 78, 2, Ascii.VT, 0, 9, Ascii.SUB, 6, 78, 70, Ascii.ESC, 0, Ascii.GS, Ascii.ESC, Ascii.RS, Ascii.RS, 1, Ascii.FS, Ascii.SUB, Ascii.VT, 10, 71, SignedBytes.MAX_POWER_OF_TWO, 70, 109, 119, 113, 122, 35, 96, 108, 118, 109, 119, 35, 106, 109, 35, 112, 97, 100, 115, 35, 34, 62, 35, 50, 35, 43, 118, 109, 112, 118, 115, 115, 108, 113, 119, 102, 103, 42, 45, Ascii.GS, 54, 44, 42, 33, 120, 59, 55, 45, 54, 44, 120, 49, 54, 120, 43, 63, 40, 60, 120, 121, 101, 120, 105, 120, 112, 45, 54, 43, 45, 40, 40, 55, 42, 44, Base64.padSymbol, 60, 113, 118, 71, 115, 96, 102, 108, 100, 111, 117, 100, 101, 76, 113, 53, 68, 121, 117, 115, 96, 98, 117, 110, 115, Ascii.SO, 32, 41, 40, 53, 46, 41, 32, 103, 41, 34, 32, 38, 51, 46, 49, 34, 103, 40, 33, 33, 52, 34, 51, 103, 51, 40, 103, 52, 38, 42, 55, 43, 34, 103, 35, 38, 51, 38, 105, 118, 81, 73, 94, 83, 86, 91, Ascii.US, 113, 126, 115, Ascii.US, 83, 90, 81, 88, 75, 87, 0, 41, 45, 42, 108, 45, 56, 35, 33, 108, 40, 41, 42, 37, 34, 41, 63, 108, 41, 52, 56, 41, 34, 40, 41, 40, 108, 45, 56, 35, 33, 108, 63, 37, 54, 41, 108, 100, 57, 34, 63, 57, 60, 60, 35, 62, 56, 41, 40, 101, 98, 75, 98, 102, 97, 39, 102, 115, 104, 106, 39, 112, 110, 115, 111, 39, 107, 98, 105, 96, 115, 111, 39, 57, 39, 53, 54, 51, 48, 51, 63, 52, 49, 51, 48, 39, 47, 114, 105, 116, 114, 119, 119, 104, 117, 115, 98, 99, 46, 41, 62, Ascii.ETB, Ascii.ETB, 2, Ascii.DC4, 5, 81, 5, Ascii.RS, 81, Ascii.DC4, Ascii.US, Ascii.DC2, 3, 8, 1, 5, Ascii.CAN, Ascii.RS, Ascii.US, 81, Ascii.NAK, Ascii.DLE, 5, Ascii.DLE, 81, 6, Ascii.DLE, 2, 81, Ascii.US, Ascii.DC4, Ascii.SYN, Ascii.DLE, 5, Ascii.CAN, 7, Ascii.DC4, 95, 120, 81, 81, 68, 82, 67, Ascii.ETB, 67, 88, Ascii.ETB, 82, 89, 83, Ascii.ETB, 88, 81, Ascii.ETB, 90, 83, 86, 67, Ascii.ETB, SignedBytes.MAX_POWER_OF_TWO, 86, 68, Ascii.ETB, 89, 82, 80, 86, 67, 94, 65, 82, Ascii.EM, Ascii.ESC, 34, 49, 38, 38, Base64.padSymbol, 48, Base64.padSymbol, 58, 51, 116, 0, 38, 53, 55, 63, 17, 58, 55, 38, 45, 36, 32, Base64.padSymbol, 59, 58, Ascii.SYN, 59, 44, 116, 36, 53, 38, 53, 57, 49, 32, 49, 38, 39, 116, Base64.padSymbol, 39, 116, 33, 58, 39, 33, 36, 36, 59, 38, 32, 49, 48, 122, 35, 17, Ascii.EM, 10, 80, 3, 17, Ascii.GS, 0, Ascii.FS, Ascii.NAK, 80, 19, Ascii.US, 5, Ascii.RS, 4, 80, 70, 112, 123, 118, 53, 102, 116, 120, 101, 121, 112, 53, 118, 122, 96, 123, 97, 53, 5, Base64.padSymbol, 63, 38, 38, 51, 50, 118, 38, 37, 37, 62, 118, 55, 34, 57, 59, 118, 126, 48, 55, 63, 58, 51, 50, 118, 34, 57, 118, 51, 46, 34, 36, 55, 53, 34, 118, 35, 35, 63, 50, Byte.MAX_VALUE, 78, 118, 116, 109, 109, 116, 115, 122, Base64.padSymbol, 124, 105, 114, 112, Base64.padSymbol, 106, 116, 105, 117, Base64.padSymbol, 113, 120, 115, 122, 105, 117, Base64.padSymbol, 35, Base64.padSymbol, 47, 44, 41, 42, 41, 37, 46, 43, 41, 42, Base64.padSymbol, 53, 104, 115, 110, 104, 109, 109, 114, 111, 105, 120, 121, 52, 51, 1, 57, 59, 34, 34, 59, 60, 53, 114, 39, 60, 33, 39, 34, 34, Base64.padSymbol, 32, 38, 55, 54, 114, 55, 63, 33, 53, 114, 36, 55, 32, 33, 59, Base64.padSymbol, 60, 104, 114, Ascii.ETB, 44, 39, 58, 50, 39, 33, 54, 39, 38, 98, 47, 45, 45, 52, 98, 32, 45, 58, 108, 92, 103, 108, 113, 121, 108, 106, 125, 108, 109, 41, 103, 108, 110, 104, 125, 96, Byte.MAX_VALUE, 108, 41, Byte.MAX_VALUE, 104, 101, 124, 108, 51, 41, 35, Ascii.CAN, 19, Ascii.SO, 6, 19, Ascii.NAK, 2, 19, Ascii.DC2, 86, 5, Ascii.ETB, Ascii.US, Ascii.EM, 86, 19, Ascii.CAN, 2, 4, Ascii.SI, 86, Ascii.NAK, Ascii.EM, 3, Ascii.CAN, 2, 76, 86, 80, 107, 109, 100, 107, 97, 105, 96, 97, 37, 108, 107, 97, 108, 119, 96, 102, 113, 37, 119, 96, 99, 96, 119, 96, 107, 102, 96, 114, 69, 86, 77, 69, 70, 72, 65, 4, 72, 65, 74, 67, 80, 76, 4, SignedBytes.MAX_POWER_OF_TWO, 65, 87, 71, 86, 77, 84, 80, 77, 75, 74, 4, 77, 74, 4, 87, 67, 84, SignedBytes.MAX_POWER_OF_TWO, 4, 66, 75, 81, 74, SignedBytes.MAX_POWER_OF_TWO, 4, Ascii.FF, 81, 74, 87, 81, 84, 84, 75, 86, 80, 65, SignedBytes.MAX_POWER_OF_TWO, Ascii.CR, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 40, Byte.MAX_VALUE, 42, 98, 106, 116, 96, 88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, Ascii.SYN, 65, Ascii.DC4, 84, 73, Ascii.CR, Ascii.DC4, 79, 77, 77, 52, 32, 49, 60, 58, 122, 52, 54, 97, 72, 87, 90, 91, 81, 17, 86, 91, 72, 93, 126, 97, 108, 109, 103, 39, 101, 120, 60};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization("Adding Uri for eMsg")
    private void A0H(C4J c4j, Uri uri) {
        String str;
        String str2;
        long j;
        long A0U;
        long A0Q;
        if (this.A0J.length == 0) {
            return;
        }
        c4j.A0f(8);
        if (A0a[3].charAt(19) != 'e') {
            throw new RuntimeException();
        }
        A0a[1] = "i2btDlVidn";
        int A01 = II.A01(c4j.A0C());
        long j2 = -9223372036854775807L;
        switch (A01) {
            case 0:
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                long A0Q2 = c4j.A0Q();
                j2 = AbstractC03624a.A0U(c4j.A0Q(), 1000000L, A0Q2);
                j = this.A0C != -9223372036854775807L ? this.A0C + j2 : -9223372036854775807L;
                A0U = AbstractC03624a.A0U(c4j.A0Q(), 1000L, A0Q2);
                A0Q = c4j.A0Q();
                break;
            case 1:
                long A0Q3 = c4j.A0Q();
                j = AbstractC03624a.A0U(c4j.A0R(), 1000000L, A0Q3);
                A0U = AbstractC03624a.A0U(c4j.A0Q(), 1000L, A0Q3);
                A0Q = c4j.A0Q();
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                break;
            default:
                AnonymousClass44.A07(A0A(204, 22, 75), A0A(645, 35, 24) + A01);
                return;
        }
        byte[] bArr = new byte[c4j.A07()];
        c4j.A0k(bArr, 0, c4j.A07());
        int i = 0;
        C4J c4j2 = new C4J(this.A0T.A01(new EventMessage(str, str2, A0U, A0Q, bArr)));
        int A07 = c4j2.A07();
        H1[] h1Arr = this.A0J;
        int length = h1Arr.length;
        int i2 = 0;
        while (i2 < length) {
            H1 h1 = h1Arr[i2];
            c4j2.A0f(i);
            h1.AJu(uri);
            h1.AI7(c4j2, A07);
            i2++;
            i = 0;
        }
        if (j == -9223372036854775807L) {
            this.A0W.addLast(new IX(j2, true, A07));
            this.A03 += A07;
        } else if (!this.A0W.isEmpty()) {
            this.A0W.addLast(new IX(j, false, A07));
            this.A03 += A07;
        } else {
            if (this.A0R != null) {
                C4R c4r = this.A0R;
                if (A0a[1].length() != 3) {
                    String[] strArr = A0a;
                    strArr[4] = "dSij3ZZr7drragDO7KaW8OWZIZwByPGb";
                    strArr[6] = "O4MuDOrrUt3KGtyHElmFzP2mmpN9Ut0I";
                    j = c4r.A05(j);
                } else {
                    j = c4r.A05(j);
                }
            }
            if (this.A0A != -9223372036854775807L && !C1662i5.A03(EnumC1659i2.A12)) {
                j = this.A0A;
            }
            H1[] h1Arr2 = this.A0J;
            if (A0a[0].length() != 3) {
                throw new RuntimeException();
            }
            A0a[2] = "lJ55r5gDB38Ao7rNsYIhv4IUy3LH5Ini";
            for (H1 h12 : h1Arr2) {
                h12.AIA(j, 1, A07, 0, null);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static void A0R(C1822kj c1822kj, SparseArray<IY> sparseArray, boolean z, int i, byte[] bArr) throws C03182i {
        IY A09 = A09(((C1821ki) C3M.A01(c1822kj.A07(Atom.TYPE_tfhd))).A00, sparseArray, z);
        if (A09 == null) {
            return;
        }
        C0724Io c0724Io = A09.A09;
        long j = c0724Io.A05;
        boolean z2 = c0724Io.A09;
        A09.A08();
        A09.A06 = true;
        C1821ki A07 = c1822kj.A07(Atom.TYPE_tfdt);
        if (A07 == null || (i & 2) != 0) {
            c0724Io.A05 = j;
            String[] strArr = A0a;
            if (strArr[4].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            A0a[7] = "mrSj0GzHTHwkPK2z0oCyoB4jTU17nK7M";
            c0724Io.A09 = z2;
        } else {
            c0724Io.A05 = A03(A07.A00);
            c0724Io.A09 = true;
        }
        A0S(c1822kj, A09, i);
        C0722Im c0722Im = A09.A05.A03;
        Object A01 = C3M.A01(c0724Io.A06);
        String[] strArr2 = A0a;
        if (strArr2[4].charAt(20) == strArr2[6].charAt(20)) {
            throw new RuntimeException();
        }
        A0a[1] = "vW8YzoDO1k8YQphW8Ysx";
        C0723In A00 = c0722Im.A00(((IP) A01).A02);
        C1821ki A072 = c1822kj.A07(Atom.TYPE_saiz);
        if (A072 != null) {
            A0V((C0723In) C3M.A01(A00), A072.A00, c0724Io);
        }
        C1821ki A073 = c1822kj.A07(Atom.TYPE_saio);
        if (A073 != null) {
            A0I(A073.A00, c0724Io);
        }
        C1821ki A074 = c1822kj.A07(Atom.TYPE_senc);
        if (A074 != null) {
            A0J(A074.A00, c0724Io);
        }
        A0T(c1822kj, A00 != null ? A00.A02 : null, c0724Io);
        int size = c1822kj.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1821ki c1821ki = c1822kj.A02.get(i2);
            if (((II) c1821ki).A00 == 1970628964) {
                A0K(c1821ki.A00, c0724Io, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0T(C1822kj c1822kj, String str, C0724Io c0724Io) throws C03182i {
        C4J c4j = null;
        C4J c4j2 = null;
        for (int i = 0; i < c1822kj.A02.size(); i++) {
            C1821ki c1821ki = c1822kj.A02.get(i);
            C4J c4j3 = c1821ki.A00;
            if (((II) c1821ki).A00 == 1935828848) {
                c4j3.A0f(12);
                if (c4j3.A0C() == 1936025959) {
                    c4j = c4j3;
                }
            } else if (((II) c1821ki).A00 == 1936158820) {
                c4j3.A0f(12);
                if (c4j3.A0C() == 1936025959) {
                    c4j2 = c4j3;
                }
            }
        }
        if (c4j == null || c4j2 == null) {
            return;
        }
        c4j.A0f(8);
        int A01 = II.A01(c4j.A0C());
        c4j.A0g(4);
        if (A01 == 1) {
            c4j.A0g(4);
        }
        if (c4j.A0C() != 1) {
            throw C03182i.A00(A0A(126, 39, 73));
        }
        c4j2.A0f(8);
        int A012 = II.A01(c4j2.A0C());
        c4j2.A0g(4);
        if (A012 == 1) {
            if (c4j2.A0Q() == 0) {
                throw C03182i.A00(A0A(784, 55, 110));
            }
        } else if (A012 >= 2) {
            c4j2.A0g(4);
        }
        if (c4j2.A0Q() != 1) {
            throw C03182i.A00(A0A(165, 39, 18));
        }
        c4j2.A0g(1);
        int A0I = c4j2.A0I();
        int i2 = (A0I & 240) >> 4;
        int i3 = A0I & 15;
        boolean z = c4j2.A0I() == 1;
        if (z) {
            int A0I2 = c4j2.A0I();
            byte[] bArr = new byte[16];
            c4j2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (A0I2 == 0) {
                int A0I3 = c4j2.A0I();
                bArr2 = new byte[A0I3];
                c4j2.A0k(bArr2, 0, A0I3);
            }
            c0724Io.A08 = true;
            c0724Io.A07 = new C0723In(z, str, A0I2, bArr, i2, i3, bArr2);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0V(C0723In c0723In, C4J c4j, C0724Io c0724Io) throws C03182i {
        int i = c0723In.A00;
        c4j.A0f(8);
        if ((II.A00(c4j.A0C()) & 1) == 1) {
            c4j.A0g(8);
        }
        int A0I = c4j.A0I();
        int A0L = c4j.A0L();
        if (A0L > c0724Io.A00) {
            throw C03182i.A01(A0A(514, 18, 58) + A0L + A0A(40, 38, 7) + c0724Io.A00, null);
        }
        int i2 = 0;
        if (A0I == 0) {
            boolean[] zArr = c0724Io.A0F;
            if (A0a[1].length() == 3) {
                throw new RuntimeException();
            }
            A0a[0] = "ACu";
            for (int i3 = 0; i3 < A0L; i3++) {
                int A0I2 = c4j.A0I();
                i2 += A0I2;
                zArr[i3] = A0I2 > i;
            }
        } else {
            i2 = 0 + (A0I * A0L);
            Arrays.fill(c0724Io.A0F, 0, A0L, A0I > i);
        }
        Arrays.fill(c0724Io.A0F, A0L, c0724Io.A00, false);
        if (i2 > 0) {
            c0724Io.A02(i2);
        }
    }

    static {
        A0D();
        A0b = new InterfaceC0660Gb() { // from class: com.facebook.ads.redexgen.X.kd
            @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
            public final GX[] A5F() {
                return C1815kc.A0b();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
            public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
                return AbstractC0659Ga.A01(this, uri, map);
            }
        };
        A0d = new byte[]{-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
        A0c = new C2D().A11(A0A(839, 18, 77)).A14();
    }

    public C1815kc() {
        this(0);
    }

    public C1815kc(int i) {
        this(i, null);
    }

    public C1815kc(int i, C4R c4r) {
        this(i, c4r, null, Collections.emptyList());
    }

    public C1815kc(int i, C4R c4r, C0722Im c0722Im, List<C2061or> list) {
        this(i, c4r, c0722Im, list, null);
    }

    @MetaExoPlayerCustomization("Additional fields for custom behaviors")
    public C1815kc(int i, C4R c4r, C0722Im c0722Im, List<C2061or> list, H1 h1) {
        this.A0A = -9223372036854775807L;
        this.A0K = i;
        this.A0R = c4r;
        this.A0U = c0722Im;
        this.A0X = Collections.unmodifiableList(list);
        this.A0S = h1;
        this.A0T = new HO();
        this.A0M = new C4J(16);
        this.A0P = new C4J(AbstractC0675Gq.A03);
        this.A0O = new C4J(5);
        this.A0N = new C4J();
        this.A0Y = new byte[16];
        this.A0Q = new C4J(this.A0Y);
        this.A0V = new ArrayDeque<>();
        this.A0W = new ArrayDeque<>();
        this.A0L = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        this.A0E = GY.A00;
        this.A0J = new H1[0];
        this.A0I = new H1[0];
    }

    public static int A00(int i) throws C03182i {
        if (i >= 0) {
            return i;
        }
        throw C03182i.A01(A0A(TypedValues.TransitionType.TYPE_DURATION, 27, 67) + i, null);
    }

    public static long A02(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        return II.A01(fullAtom) == 0 ? c4j.A0Q() : c4j.A0R();
    }

    public static long A03(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        int version = II.A01(fullAtom);
        return version == 1 ? c4j.A0R() : c4j.A0Q();
    }

    public static Pair<Integer, IP> A04(C4J c4j) {
        c4j.A0f(12);
        int defaultSampleDescriptionIndex = c4j.A0C();
        int trackId = c4j.A0C();
        int defaultSampleFlags = c4j.A0C();
        int defaultSampleSize = c4j.A0C();
        int defaultSampleDuration = c4j.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new IP(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A06(List<C1821ki> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C1821ki c1821ki = list.get(i);
            int leafChildrenSize = ((II) c1821ki).A00;
            if (leafChildrenSize == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] A0l = c1821ki.A00.A0l();
                UUID A02 = AbstractC0715If.A02(A0l);
                if (A02 == null) {
                    AnonymousClass44.A07(A0A(204, 22, 75), A0A(550, 42, 28));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(A02, A0A(897, 9, 66), A0l));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private IP A07(SparseArray<IP> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (IP) C3M.A01(sparseArray.get(i));
    }

    public static IY A08(SparseArray<IY> sparseArray) {
        boolean z;
        boolean z2;
        IY iy = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            IY valueAt = sparseArray.valueAt(i);
            z = valueAt.A06;
            if (z || valueAt.A01 != valueAt.A05.A01) {
                z2 = valueAt.A06;
                if (A0a[7].charAt(28) == 'N') {
                    throw new RuntimeException();
                }
                A0a[2] = "bWFL5LbHycaN2QeAwKakifUxbxentXmn";
                if (!z2 || valueAt.A02 != valueAt.A09.A01) {
                    long nextSampleOffset = valueAt.A05();
                    if (nextSampleOffset < j) {
                        iy = valueAt;
                        j = nextSampleOffset;
                    }
                }
            }
        }
        return iy;
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x0054 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0C() {
        /*
            r7 = this;
            r5 = 100
            r0 = 2
            com.facebook.ads.redexgen.X.H1[] r0 = new com.facebook.ads.redexgen.X.H1[r0]
            r7.A0J = r0
            r6 = 0
            com.facebook.ads.redexgen.X.H1 r0 = r7.A0S
            if (r0 == 0) goto L15
            com.facebook.ads.redexgen.X.H1[] r2 = r7.A0J
            int r1 = r6 + 1
            com.facebook.ads.redexgen.X.H1 r0 = r7.A0S
            r2[r6] = r0
            r6 = r1
        L15:
            int r0 = r7.A0K
            r0 = r0 & 4
            if (r0 == 0) goto L2c
            com.facebook.ads.redexgen.X.H1[] r4 = r7.A0J
            int r3 = r6 + 1
            com.facebook.ads.redexgen.X.GY r2 = r7.A0E
            int r1 = r5 + 1
            r0 = 5
            com.facebook.ads.redexgen.X.H1 r0 = r2.AJh(r5, r0)
            r4[r6] = r0
            r6 = r3
            r5 = r1
        L2c:
            com.facebook.ads.redexgen.X.H1[] r0 = r7.A0J
            java.lang.Object[] r0 = com.facebook.ads.redexgen.X.AbstractC03624a.A1I(r0, r6)
            com.facebook.ads.redexgen.X.H1[] r0 = (com.facebook.ads.redexgen.X.H1[]) r0
            r7.A0J = r0
            com.facebook.ads.redexgen.X.H1[] r4 = r7.A0J
            int r3 = r4.length
            r2 = 0
        L3a:
            if (r2 >= r3) goto L46
            r1 = r4[r2]
            com.facebook.ads.redexgen.X.or r0 = com.facebook.ads.redexgen.X.C1815kc.A0c
            r1.A6W(r0)
            int r2 = r2 + 1
            goto L3a
        L46:
            java.util.List<com.facebook.ads.redexgen.X.or> r0 = r7.A0X
            int r0 = r0.size()
            com.facebook.ads.redexgen.X.H1[] r0 = new com.facebook.ads.redexgen.X.H1[r0]
            r7.A0I = r0
            r3 = 0
        L51:
            com.facebook.ads.redexgen.X.H1[] r0 = r7.A0I
            int r0 = r0.length
            if (r3 >= r0) goto L72
            com.facebook.ads.redexgen.X.GY r1 = r7.A0E
            int r2 = r5 + 1
            r0 = 3
            com.facebook.ads.redexgen.X.H1 r1 = r1.AJh(r5, r0)
            java.util.List<com.facebook.ads.redexgen.X.or> r0 = r7.A0X
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.or r0 = (com.facebook.ads.redexgen.X.C2061or) r0
            r1.A6W(r0)
            com.facebook.ads.redexgen.X.H1[] r0 = r7.A0I
            r0[r3] = r1
            int r3 = r3 + 1
            r5 = r2
            goto L51
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1815kc.A0C():void");
    }

    private void A0E(long j) {
        while (!this.A0W.isEmpty()) {
            IX removeFirst = this.A0W.removeFirst();
            this.A03 -= removeFirst.A00;
            if (A0a[7].charAt(28) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[4] = "VR2FeNKrGWLUx6XQMfWHox9ZNtks2zuu";
            strArr[6] = "s2y9CEVkGFcMGmJDsuNOnRFQ2pMNKAx2";
            long j2 = removeFirst.A01;
            if (removeFirst.A02) {
                j2 += j;
            }
            if (this.A0R != null) {
                j2 = this.A0R.A05(j2);
            }
            for (H1 h1 : this.A0J) {
                h1.AIA(j2, 1, removeFirst.A00, this.A03, null);
            }
        }
    }

    private void A0F(long j) throws C03182i {
        while (!this.A0V.isEmpty() && this.A0V.peek().A00 == j) {
            A0N(this.A0V.pop());
        }
        A0B();
    }

    public static void A0G(C4J c4j, int i, C0724Io c0724Io) throws C03182i {
        c4j.A0f(i + 8);
        int fullAtom = c4j.A0C();
        int flags = II.A00(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z = fullAtom3 != 0;
            int sampleCount = c4j.A0L();
            if (sampleCount == 0) {
                boolean[] zArr = c0724Io.A0F;
                int fullAtom4 = c0724Io.A00;
                Arrays.fill(zArr, 0, fullAtom4, false);
                return;
            }
            int fullAtom5 = c0724Io.A00;
            if (sampleCount == fullAtom5) {
                Arrays.fill(c0724Io.A0F, 0, sampleCount, z);
                int fullAtom6 = c4j.A07();
                c0724Io.A02(fullAtom6);
                c0724Io.A04(c4j);
                return;
            }
            StringBuilder append = new StringBuilder().append(A0A(532, 18, 95)).append(sampleCount).append(A0A(0, 40, 98));
            int fullAtom7 = c0724Io.A00;
            throw C03182i.A01(append.append(fullAtom7).toString(), null);
        }
        throw C03182i.A00(A0A(458, 56, 30));
    }

    public static void A0I(C4J c4j, C0724Io c0724Io) throws C03182i {
        c4j.A0f(8);
        int flags = c4j.A0C();
        int fullAtom = II.A00(flags) & 1;
        if (fullAtom == 1) {
            c4j.A0g(8);
        }
        int A0L = c4j.A0L();
        if (A0L == 1) {
            int entryCount = II.A01(flags);
            c0724Io.A03 += entryCount == 0 ? c4j.A0Q() : c4j.A0R();
            return;
        }
        throw C03182i.A01(A0A(727, 29, 60) + A0L, null);
    }

    public static void A0J(C4J c4j, C0724Io c0724Io) throws C03182i {
        A0G(c4j, 0, c0724Io);
    }

    public static void A0K(C4J c4j, C0724Io c0724Io, byte[] bArr) throws C03182i {
        c4j.A0f(8);
        c4j.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0d)) {
            return;
        }
        A0G(c4j, 16, c0724Io);
    }

    @MetaExoPlayerCustomization("New parameter for getUri()")
    private void A0L(InterfaceC1850lN interfaceC1850lN) throws IOException {
        int i = ((int) this.A07) - this.A00;
        C4J c4j = this.A0D;
        if (c4j != null) {
            interfaceC1850lN.readFully(c4j.A0l(), 8, i);
            A0U(new C1821ki(this.A01, c4j), interfaceC1850lN.A8f(), interfaceC1850lN.A9H());
        } else {
            interfaceC1850lN.AJJ(i);
        }
        A0F(interfaceC1850lN.A8f());
    }

    private void A0M(InterfaceC1850lN interfaceC1850lN) throws IOException {
        IY iy = null;
        long j = Long.MAX_VALUE;
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            IY nextTrackBundle = this.A0L.valueAt(i);
            C0724Io c0724Io = nextTrackBundle.A09;
            if (c0724Io.A0A && c0724Io.A03 < j) {
                j = c0724Io.A03;
                iy = this.A0L.valueAt(i);
            }
        }
        if (iy == null) {
            this.A02 = 3;
            return;
        }
        int A8f = (int) (j - interfaceC1850lN.A8f());
        if (A8f >= 0) {
            interfaceC1850lN.AJJ(A8f);
            iy.A09.A05(interfaceC1850lN);
            return;
        }
        throw C03182i.A01(A0A(RendererCapabilities.DECODER_SUPPORT_MASK, 39, 59), null);
    }

    private void A0N(C1822kj c1822kj) throws C03182i {
        if (((II) c1822kj).A00 == 1836019574) {
            A0P(c1822kj);
        } else if (((II) c1822kj).A00 == 1836019558) {
            A0O(c1822kj);
        } else if (this.A0V.isEmpty()) {
        } else {
            C1822kj peek = this.A0V.peek();
            if (A0a[1].length() == 3) {
                throw new RuntimeException();
            }
            A0a[5] = "pjYwVuiFyV8fJrHeJXv5AlOqs";
            peek.A08(c1822kj);
        }
    }

    private void A0O(C1822kj c1822kj) throws C03182i {
        A0Q(c1822kj, this.A0L, this.A0U != null, this.A0K, this.A0Y);
        DrmInitData A06 = A06(c1822kj.A02);
        if (A06 != null) {
            int i = this.A0L.size();
            for (int trackCount = 0; trackCount < i; trackCount++) {
                this.A0L.valueAt(trackCount).A0B(A06);
            }
        }
        long j = this.A0B;
        if (A0a[5].length() != 30) {
            String[] strArr = A0a;
            strArr[4] = "qdUBZHhFhQeTbxiPtlDH0srS7WoJbCtx";
            strArr[6] = "eg1L367OGrFS41anHFQFHM93YBMqVnGW";
            if (j != -9223372036854775807L) {
                int size = this.A0L.size();
                for (int i2 = 0; i2 < size; i2++) {
                    IY valueAt = this.A0L.valueAt(i2);
                    long j2 = this.A0B;
                    int trackCount2 = A0a[5].length();
                    if (trackCount2 != 30) {
                        A0a[3] = "ExaTttTG7QLu5ZnLvMbeVx0ab4jt6cU8";
                        valueAt.A0A(j2);
                    }
                }
                this.A0B = -9223372036854775807L;
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0P(C1822kj c1822kj) throws C03182i {
        C3M.A0A(this.A0U == null, A0A(680, 20, 8));
        DrmInitData A06 = A06(c1822kj.A02);
        C1822kj c1822kj2 = (C1822kj) C3M.A01(c1822kj.A06(Atom.TYPE_mvex));
        SparseArray<IP> sparseArray = new SparseArray<>();
        long j = -9223372036854775807L;
        int size = c1822kj2.A02.size();
        for (int i = 0; i < size; i++) {
            C1821ki c1821ki = c1822kj2.A02.get(i);
            if (((II) c1821ki).A00 == 1953654136) {
                Pair<Integer, IP> A04 = A04(c1821ki.A00);
                Object obj = A04.first;
                if (A0a[7].charAt(28) == 'N') {
                    throw new RuntimeException();
                }
                A0a[2] = "1hJqa9Igz9YM2Xn7uSuVVZMPlDpSi7YR";
                sparseArray.put(((Integer) obj).intValue(), (IP) A04.second);
            } else if (((II) c1821ki).A00 == 1835362404) {
                j = A02(c1821ki.A00);
            }
        }
        List<C0725Ip> A0O = IO.A0O(c1822kj, new C0667Gi(), j, A06, (this.A0K & 16) != 0, false, new InterfaceC1706ip() { // from class: com.facebook.ads.redexgen.X.ke
            @Override // com.facebook.ads.redexgen.X.InterfaceC1706ip
            public final Object A43(Object obj2) {
                return C1815kc.this.A0c((C0722Im) obj2);
            }
        });
        int size2 = A0O.size();
        if (this.A0L.size() == 0) {
            for (int i2 = 0; i2 < size2; i2++) {
                C0725Ip c0725Ip = A0O.get(i2);
                C0722Im c0722Im = c0725Ip.A03;
                this.A0L.put(c0722Im.A00, new IY(this.A0E.AJh(i2, c0722Im.A03), c0725Ip, A07(sparseArray, c0722Im.A00)));
                this.A08 = Math.max(this.A08, c0722Im.A04);
            }
            this.A0E.A6G();
            return;
        }
        C3M.A08(this.A0L.size() == size2);
        for (int i3 = 0; i3 < size2; i3++) {
            C0725Ip c0725Ip2 = A0O.get(i3);
            C0722Im c0722Im2 = c0725Ip2.A03;
            this.A0L.get(c0722Im2.A00).A0C(c0725Ip2, A07(sparseArray, c0722Im2.A00));
        }
    }

    public static void A0Q(C1822kj c1822kj, SparseArray<IY> sparseArray, boolean z, int i, byte[] bArr) throws C03182i {
        int size = c1822kj.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1822kj child = c1822kj.A01.get(i2);
            int i3 = ((II) child).A00;
            if (i3 == 1953653094) {
                A0R(child, sparseArray, z, i, bArr);
            }
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0017 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0S(com.facebook.ads.redexgen.X.C1822kj r8, com.facebook.ads.redexgen.X.IY r9, int r10) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            r4 = 0
            r3 = 0
            java.util.List<com.facebook.ads.redexgen.X.ki> r8 = r8.A02
            int r7 = r8.size()
            r5 = 0
        L9:
            r6 = 1953658222(0x7472756e, float:7.683823E31)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1815kc.A0a
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 30
            if (r1 == r0) goto L67
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1815kc.A0a
            java.lang.String r1 = "g5KWW"
            r0 = 1
            r2[r0] = r1
            if (r5 >= r7) goto L3f
            java.lang.Object r1 = r8.get(r5)
            com.facebook.ads.redexgen.X.ki r1 = (com.facebook.ads.redexgen.X.C1821ki) r1
            int r0 = r1.A00
            if (r0 != r6) goto L3c
            com.facebook.ads.redexgen.X.4J r1 = r1.A00
            r0 = 12
            r1.A0f(r0)
            int r0 = r1.A0L()
            if (r0 <= 0) goto L3c
            int r3 = r3 + r0
            int r4 = r4 + 1
        L3c:
            int r5 = r5 + 1
            goto L9
        L3f:
            r0 = 0
            r9.A02 = r0
            r9.A00 = r0
            r9.A01 = r0
            com.facebook.ads.redexgen.X.Io r0 = r9.A09
            r0.A03(r4, r3)
            r5 = 0
            r0 = 0
            r4 = 0
        L4e:
            if (r4 >= r7) goto L66
            java.lang.Object r3 = r8.get(r4)
            com.facebook.ads.redexgen.X.ki r3 = (com.facebook.ads.redexgen.X.C1821ki) r3
            int r1 = r3.A00
            if (r1 != r6) goto L63
            int r2 = r5 + 1
            com.facebook.ads.redexgen.X.4J r1 = r3.A00
            int r0 = A01(r9, r5, r10, r1, r0)
            r5 = r2
        L63:
            int r4 = r4 + 1
            goto L4e
        L66:
            return
        L67:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1815kc.A0S(com.facebook.ads.redexgen.X.kj, com.facebook.ads.redexgen.X.IY, int):void");
    }

    @MetaExoPlayerCustomization("Adding Uri for eMsg")
    private void A0U(C1821ki c1821ki, long j, Uri uri) throws C03182i {
        if (!this.A0V.isEmpty()) {
            this.A0V.peek().A09(c1821ki);
        } else if (((II) c1821ki).A00 == 1936286840) {
            Pair<Long, C1855lT> A05 = A05(c1821ki.A00, j);
            Long l = (Long) A05.first;
            if (A0a[2].charAt(14) == 'D') {
                throw new RuntimeException();
            }
            A0a[2] = "KqHjYmkkmLRftUSzBx7x8q1P7pbSwwaZ";
            this.A0C = l.longValue();
            this.A0E.AIN((InterfaceC0681Gw) A05.second);
            this.A0G = true;
        } else if (((II) c1821ki).A00 != 1701671783 || uri == null) {
        } else {
            A0H(c1821ki.A00, uri);
        }
    }

    public static boolean A0W(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
        if (r4 != 1937013298) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
        if (r4 == 1937007471) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
        if (r4 == 1668232756) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
        if (r4 == 1937011571) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
        if (r4 == 1952867444) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
        if (r4 == 1952868452) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        if (r4 == 1953196132) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
        if (r4 == 1953654136) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
        if (r4 == 1953658222) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
        if (r4 == 1886614376) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0090, code lost:
        if (r4 == 1935763834) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0095, code lost:
        if (r4 == 1935763823) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009a, code lost:
        if (r4 == 1936027235) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009f, code lost:
        if (r4 == 1970628964) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a4, code lost:
        if (r4 == 1935828848) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a9, code lost:
        if (r4 == 1936158820) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ae, code lost:
        if (r4 == 1701606260) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b3, code lost:
        if (r4 == 1835362404) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b8, code lost:
        if (r4 != 1701671783) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00bc, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c5, code lost:
        if (r4 != 1937013298) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0X(int r4) {
        /*
            r0 = 1751411826(0x68646c72, float:4.3148E24)
            if (r4 == r0) goto Lba
            r0 = 1835296868(0x6d646864, float:4.418049E27)
            if (r4 == r0) goto Lba
            r0 = 1836476516(0x6d766864, float:4.7662196E27)
            if (r4 == r0) goto Lba
            r0 = 1936286840(0x73696478, float:1.8491255E31)
            if (r4 == r0) goto Lba
            r0 = 1937011556(0x73747364, float:1.9367383E31)
            if (r4 == r0) goto Lba
            r0 = 1937011827(0x73747473, float:1.9367711E31)
            if (r4 == r0) goto Lba
            r0 = 1668576371(0x63747473, float:4.5093966E21)
            if (r4 == r0) goto Lba
            r0 = 1937011555(0x73747363, float:1.9367382E31)
            if (r4 == r0) goto Lba
            r3 = 1937011578(0x7374737a, float:1.936741E31)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1815kc.A0a
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 3
            if (r1 == r0) goto Lc8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1815kc.A0a
            java.lang.String r1 = "BwdOpTtZC6qkHbBW6vzemIV3sewTUKel"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "oE5SsWuxWmjvJDoIWd7OBauEjDNEKBY0"
            r0 = 6
            r2[r0] = r1
            if (r4 == r3) goto Lba
            r3 = 1937013298(0x73747a32, float:1.9369489E31)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1815kc.A0a
            r0 = 3
            r1 = r1[r0]
            r0 = 19
            char r1 = r1.charAt(r0)
            r0 = 101(0x65, float:1.42E-43)
            if (r1 == r0) goto Lbe
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1815kc.A0a
            java.lang.String r1 = "alBOnYvVhDOHTU7zpsfhYzjhJlh1j5qj"
            r0 = 7
            r2[r0] = r1
            if (r4 == r3) goto Lba
        L60:
            r0 = 1937007471(0x7374636f, float:1.9362445E31)
            if (r4 == r0) goto Lba
            r0 = 1668232756(0x636f3634, float:4.4126776E21)
            if (r4 == r0) goto Lba
            r0 = 1937011571(0x73747373, float:1.9367401E31)
            if (r4 == r0) goto Lba
            r0 = 1952867444(0x74666474, float:7.3014264E31)
            if (r4 == r0) goto Lba
            r0 = 1952868452(0x74666864, float:7.301914E31)
            if (r4 == r0) goto Lba
            r0 = 1953196132(0x746b6864, float:7.46037E31)
            if (r4 == r0) goto Lba
            r0 = 1953654136(0x74726578, float:7.6818474E31)
            if (r4 == r0) goto Lba
            r0 = 1953658222(0x7472756e, float:7.683823E31)
            if (r4 == r0) goto Lba
            r0 = 1886614376(0x70737368, float:3.013775E29)
            if (r4 == r0) goto Lba
            r0 = 1935763834(0x7361697a, float:1.785898E31)
            if (r4 == r0) goto Lba
            r0 = 1935763823(0x7361696f, float:1.7858967E31)
            if (r4 == r0) goto Lba
            r0 = 1936027235(0x73656e63, float:1.8177412E31)
            if (r4 == r0) goto Lba
            r0 = 1970628964(0x75756964, float:3.1109627E32)
            if (r4 == r0) goto Lba
            r0 = 1935828848(0x73626770, float:1.7937577E31)
            if (r4 == r0) goto Lba
            r0 = 1936158820(0x73677064, float:1.8336489E31)
            if (r4 == r0) goto Lba
            r0 = 1701606260(0x656c7374, float:6.9788014E22)
            if (r4 == r0) goto Lba
            r0 = 1835362404(0x6d656864, float:4.4373917E27)
            if (r4 == r0) goto Lba
            r0 = 1701671783(0x656d7367, float:7.0083103E22)
            if (r4 != r0) goto Lbc
        Lba:
            r0 = 1
        Lbb:
            return r0
        Lbc:
            r0 = 0
            goto Lbb
        Lbe:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1815kc.A0a
            java.lang.String r1 = "AuC"
            r0 = 0
            r2[r0] = r1
            if (r4 == r3) goto Lba
            goto L60
        Lc8:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1815kc.A0X(int):boolean");
    }

    private boolean A0Y(InterfaceC1850lN interfaceC1850lN) throws IOException {
        int trackCount;
        int i;
        if (this.A00 == 0) {
            C4J c4j = this.A0M;
            if (A0a[2].charAt(14) != 'D') {
                A0a[5] = "Du9yMjOrUhZNFJE5GgCY";
                if (!interfaceC1850lN.AGh(c4j.A0l(), 0, 8, true)) {
                    return false;
                }
                this.A00 = 8;
                this.A0M.A0f(0);
                this.A07 = this.A0M.A0Q();
                int A0C = this.A0M.A0C();
                if (A0a[5].length() != 30) {
                    A0a[0] = "Nk2";
                    this.A01 = A0C;
                }
            }
            throw new RuntimeException();
        }
        if (this.A07 == 1) {
            interfaceC1850lN.readFully(this.A0M.A0l(), 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A07 = this.A0M.A0R();
        } else if (this.A07 == 0) {
            long A8G = interfaceC1850lN.A8G();
            int trackCount2 = (A8G > (-1L) ? 1 : (A8G == (-1L) ? 0 : -1));
            if (trackCount2 == 0 && !this.A0V.isEmpty()) {
                A8G = this.A0V.peek().A00;
            }
            int trackCount3 = (A8G > (-1L) ? 1 : (A8G == (-1L) ? 0 : -1));
            if (trackCount3 != 0) {
                long A8f = A8G - interfaceC1850lN.A8f();
                int trackCount4 = this.A00;
                this.A07 = A8f + trackCount4;
            }
        }
        if (this.A07 >= this.A00) {
            long A8f2 = interfaceC1850lN.A8f() - this.A00;
            if ((this.A01 == 1836019558 || this.A01 == 1835295092) && !this.A0G) {
                this.A0E.AIN(new C1845lI(this.A08, A8f2));
                this.A0G = true;
            }
            if (this.A01 == 1836019558) {
                SparseArray<IY> sparseArray = this.A0L;
                if (A0a[0].length() != 3) {
                    A0a[7] = "3NdiubR5fLBwA18U1YAUjfhOdAcmjZCx";
                    trackCount = sparseArray.size();
                    i = 0;
                } else {
                    A0a[0] = "3Yh";
                    trackCount = sparseArray.size();
                    i = 0;
                }
                while (i < trackCount) {
                    C0724Io c0724Io = this.A0L.valueAt(i).A09;
                    c0724Io.A02 = A8f2;
                    c0724Io.A03 = A8f2;
                    c0724Io.A04 = A8f2;
                    i++;
                }
            }
            int trackCount5 = this.A01;
            if (trackCount5 == 1835295092) {
                this.A0F = null;
                this.A09 = this.A07 + A8f2;
                this.A02 = 2;
                return true;
            }
            if (A0W(this.A01)) {
                long A8f3 = (interfaceC1850lN.A8f() + this.A07) - 8;
                this.A0V.push(new C1822kj(this.A01, A8f3));
                if (this.A07 == this.A00) {
                    A0F(A8f3);
                } else {
                    A0B();
                }
            } else if (A0X(this.A01)) {
                if (this.A00 == 8) {
                    if (this.A07 <= 2147483647L) {
                        C4J c4j2 = new C4J((int) this.A07);
                        C4J atomData = this.A0M;
                        System.arraycopy(atomData.A0l(), 0, c4j2.A0l(), 0, 8);
                        this.A0D = c4j2;
                        this.A02 = 1;
                    } else {
                        throw C03182i.A00(A0A(335, 49, 77));
                    }
                } else {
                    throw C03182i.A00(A0A(284, 51, 6));
                }
            } else if (this.A07 <= 2147483647L) {
                this.A0D = null;
                this.A02 = 1;
            } else {
                throw C03182i.A00(A0A(592, 53, 87));
            }
            return true;
        }
        throw C03182i.A00(A0A(78, 48, 36));
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0303, code lost:
        if (r9.equals(r10) != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (r3 >= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
        r19.AJJ(r3);
        A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        if (r3 >= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0246, code lost:
        throw com.facebook.ads.redexgen.X.C03182i.A01(A0A(androidx.constraintlayout.core.motion.utils.TypedValues.CycleType.TYPE_WAVE_PERIOD, 35, 125), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02b8, code lost:
        if (r9.equals(r10) != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02ba, code lost:
        r11 = r11 | 1;
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Mark text samples as sync frames")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0Z(com.facebook.ads.redexgen.X.InterfaceC1850lN r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1815kc.A0Z(com.facebook.ads.redexgen.X.lN):boolean");
    }

    public static boolean A0a(C0722Im c0722Im) {
        if (c0722Im.A08 == null || c0722Im.A08.length != 1 || c0722Im.A09 == null) {
            return false;
        }
        if (c0722Im.A08[0] == 0) {
            return true;
        }
        long editListEndMediaTimeUs = AbstractC03624a.A0U(c0722Im.A08[0] + c0722Im.A09[0], 1000000L, c0722Im.A05);
        if (A0a[2].charAt(14) != 'D') {
            A0a[1] = "wHdUW";
            return editListEndMediaTimeUs >= c0722Im.A04;
        }
        throw new RuntimeException();
    }

    public static /* synthetic */ GX[] A0b() {
        return new GX[]{new C1814kb()};
    }

    public final C0722Im A0c(C0722Im c0722Im) {
        return c0722Im;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A0E = gy;
        A0B();
        A0C();
        if (this.A0U != null) {
            this.A0L.put(0, new IY(gy.AJh(0, this.A0U.A03), new C0725Ip(this.A0U, new long[0], new int[0], 0, new long[0], new int[0], 0L), new IP(0, 0, 0, 0)));
            this.A0E.A6G();
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC1850lN interfaceC1850lN, C0678Gt c0678Gt) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (A0Y(interfaceC1850lN)) {
                        break;
                    } else {
                        return -1;
                    }
                case 1:
                    A0L(interfaceC1850lN);
                    break;
                case 2:
                    A0M(interfaceC1850lN);
                    break;
                default:
                    if (!A0Z(interfaceC1850lN)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j, long j2) {
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            this.A0L.valueAt(i).A08();
        }
        this.A0W.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0V.clear();
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC1850lN interfaceC1850lN) throws IOException {
        return AbstractC0720Ik.A01(interfaceC1850lN);
    }
}
