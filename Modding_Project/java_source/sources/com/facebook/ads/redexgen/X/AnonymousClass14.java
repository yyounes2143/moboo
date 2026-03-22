package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.PlaybackException;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations;
import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.14  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class AnonymousClass14 extends C9Z {
    public static byte[] A13;
    public static String[] A14 = {"nx3Y", "ySV9u0UlUifM8l7YXQ9XliwCignJM927", "I56UD3cYRclrpAgGGb6MtOKCjcs9cL2j", "Sm2NURaNWtDVUJWNcAo7ERDS0hDt7", "bHPfo4AgOQoRvyPk4FB0ks", "XoiyS7TBeS4mt", "Z3oSrtXzlmftA", "iDWmG7Cddc7JoXPcHC9pChUfA3XnAJjW"};
    public static final byte[] A15;
    public float A00;
    public float A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public MediaFormat A0D;
    public C9G A0E;
    public C9G A0F;
    public AO A0G;
    public AR A0H;
    public AY A0I;
    public C0505Aa A0J;
    public String A0K;
    public ByteBuffer A0L;
    public ArrayDeque<AR> A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public boolean A0f;
    public boolean A0g;
    @MetaExoPlayerCustomization("Potentially can be removed. Added in D36797879")
    public long A0h;
    public C2061or A0i;
    public C03945g A0j;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D57514060: Do not added Dav1dMediaCodecInfo to the list of MediaCodecInfos if it's already added, can be cleaned up after launch")
    public boolean A0k;
    public boolean A0l;
    public boolean A0m;
    public final int A0n;
    public final int A0o;
    public final MediaCodec.BufferInfo A0p;
    public final C1983nY A0q;
    public final C1983nY A0r;
    public final C6N A0s;
    public final C9U A0t;
    public final InterfaceC0522Ar A0u;
    public final ArrayDeque<C0505Aa> A0v;
    public final List<Long> A0w;
    public final boolean A0x;
    public final boolean A0y;
    public final boolean A0z;
    public final C1651hs A10;
    public final C1654hv A11;
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "D60404164: Merge init calls in the renderer")
    public final boolean A12;

    public static String A0x(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A13, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 65);
        }
        return new String(copyOfRange);
    }

    public static void A15() {
        A13 = new byte[]{-74, -86, -20, -1, -2, -86, -8, -7, -86, -3, -17, -19, -1, -4, -17, -86, -18, -17, -19, -7, -18, -17, -4, -86, -21, 0, -21, -13, -10, -21, -20, -10, -17, -72, -86, -34, -4, 3, -13, -8, -15, -86, -2, -7, -86, -6, -4, -7, -19, -17, -17, -18, -86, 1, -13, -2, -14, -86, -110, -120, -87, -89, -77, -88, -87, -74, 100, -83, -78, -83, -72, -83, -91, -80, -83, -66, -91, -72, -83, -77, -78, 100, -86, -91, -83, -80, -87, -88, 112, 100, -74, -87, -72, -74, -67, -25, 8, Ascii.DC4, Ascii.CAN, 8, Ascii.CAN, 8, -61, 9, 4, Ascii.FF, Ascii.SI, 8, 7, -49, -61, Ascii.NAK, 8, Ascii.ETB, Ascii.NAK, Ascii.FS, -22, Ascii.CAN, 19, -58, Ascii.EM, Ascii.VT, Ascii.EM, Ascii.EM, Ascii.SI, Ascii.NAK, Ascii.DC4, -58, Ascii.CAN, Ascii.VT, Ascii.ETB, Ascii.ESC, Ascii.SI, Ascii.CAN, Ascii.VT, Ascii.EM, -58, Ascii.EM, Ascii.VT, 9, Ascii.ESC, Ascii.CAN, Ascii.VT, -58, 10, Ascii.VT, 9, Ascii.NAK, 10, Ascii.VT, Ascii.CAN, -58, Ascii.FF, Ascii.NAK, Ascii.CAN, -58, -103, -76, -68, -65, -72, -73, 115, -57, -62, 115, -68, -63, -68, -57, -68, -76, -65, -68, -51, -72, 115, -73, -72, -74, -62, -73, -72, -59, -115, 115, -113, -89, -90, -85, -93, 98, -76, -89, -77, -73, -85, -76, -89, -75, 98, -93, 98, -122, -76, -81, -107, -89, -75, -75, -85, -79, -80, -113, -93, -80, -93, -87, -89, -76, -47, -23, -24, -19, -27, -57, -13, -24, -23, -25, -42, -23, -14, -24, -23, -10, -23, -10, -78, -80, -69, -111, -88, -37, -36, -47, -46, -42, -111, -60, -39, -58, -111, -57, -56, -58, -23, -25, -14, -56, -33, Ascii.DC2, 19, 8, 9, Ascii.CR, -56, -5, Ascii.DLE, -3, -56, -2, -1, -3, -56, Ascii.CR, -1, -3, Ascii.SI, Ascii.FF, -1, -79, -81, -70, -112, -81, -74, -83, -112, -93, -73, -90, -85, -79, -112, -90, -89, -91, -79, -90, -89, -76, -112, -81, -78, -107, -90, -92, -81, -123, -92, -85, -94, -123, -83, -96, -101, -100, -90, -123, -101, -100, -102, -90, -101, -100, -87, -123, -104, -83, -102, -83, -85, -74, -116, -84, -44, -57, -62, -57, -65, -116, -58, -112, -108, -110, -116, -62, -61, -63, -51, -62, -61, -103, -105, -94, 120, -104, -64, -77, -82, -77, -85, 120, -78, 124, Byte.MIN_VALUE, 126, 120, -82, -81, -83, -71, -82, -81, 120, -67, -81, -83, -65, -68, -81, -44, -46, -35, -77, -40, -54, -56, -77, -26, -5, -24, -77, -23, -22, -24, -35, -37, -26, -68, -31, -45, -47, -68, -17, 4, -15, -68, -14, -13, -15, -68, 1, -13, -15, 3, 0, -13, -56, -58, -47, -89, -38, -27, -27, -16, -30, -25, -25, -34, -21, -89, -17, -30, -35, -34, -24, -89, -35, -34, -36, -24, -35, -34, -21, -89, -38, -17, -36, -53, -55, -44, -86, -35, -23, -24, -21, -29, -27, -33, -86, -35, -14, -33, -86, -32, -31, -33, -21, -32, -31, -18, -86, -35, -13, -31, -17, -21, -23, -31, Ascii.CR, Ascii.VT, Ascii.SYN, -20, Ascii.US, 43, 42, 45, 37, 39, 33, -20, Ascii.US, 52, 33, -20, 34, 35, 33, 45, 34, 35, 48, -20, Ascii.US, 53, 35, 49, 45, 43, 35, -20, 49, 35, 33, 51, 48, 35, -71, -73, -62, -104, -47, -39, -39, -47, -42, -49, -104, -53, -53, -51, -104, -50, -49, -51, -39, -50, -49, -36, 4, 2, Ascii.CR, -29, Ascii.FS, 36, 36, Ascii.FS, 33, Ascii.SUB, -29, 43, 36, 39, Ascii.ETB, Ascii.RS, 40, -29, Ascii.EM, Ascii.SUB, Ascii.CAN, 36, Ascii.EM, Ascii.SUB, 39, Ascii.SI, Ascii.CR, Ascii.CAN, -18, 50, 43, -18, 54, 41, 36, 37, 47, Ascii.US, 36, 37, 35, 47, 36, 37, 50, -18, 33, 54, 35, -73, -39, -52, -51, -52, -39, -39, -52, -53, -121, -53, -52, -54, -42, -53, -52, -39, -121, -48, -43, -38, -37, -56, -43, -37, -48, -56, -37, -48, -42, -43, -121, -51, -56, -48, -45, -52, -53, -107, -121, -70, -45, -52, -52, -41, -48, -43, -50, -121, -37, -49, -52, -43, -121, -39, -52, -37, -39, -32, -48, -43, -50, -107, 7, 1, -31, -11, -23, -27, -28, Ascii.SI, 9, -23, -3, -15, -18, -20, Ascii.DLE, 10, -22, 4, -11, -19, -19, -104, -110, 114, -113, 124, 117, 117, 0, -6, -38, 1, -30, -27, -30, -79, -74, -81, -68, -68, -77, -70, 123, -79, -67, -61, -68, -62, -76, -64, -65, -73, -70, -72, -58, -61, -74, -108, -64, -75, -74, -76, -44, -29, -42, -46, -27, -42, -76, -32, -43, -42, -44, -85, -75, -61, -78, -70, -65, -110, -65, -75, -105, -74, -74, -75, -82, -76, -73, -67, -74, -84, -83, -70, -13, -7, -4, 2, -5, -15, -14, -1, -20, -7, 1, -14, -49, -51, -36, -65, -38, -55, -40, -40, -51, -52, -75, -51, -52, -47, -55, -85, -38, -31, -40, -36, -41, -49, -38, -41, -35, -40, -51, -38, Ascii.SI, 9, -39, -41, -41, -41, -16, -19, -15, -17, -16, -4, -63, -71, -56, -75, -126, -72, -75, -54, -123, -72, -126, -75, -54, -123, -126, -72, -71, -73, -61, -72, -71, -58, 38, 39, Ascii.DC4, 37, 39, -10, 34, Ascii.ETB, Ascii.CAN, Ascii.SYN, -42, -53, -50, -61, -46, -53, -61, Ascii.DLE, 3, -2, -1, 9, -55, -5, Ascii.DLE, -54, -53, Ascii.GS, Ascii.DLE, Ascii.VT, Ascii.FF, Ascii.SYN, -42, Ascii.VT, Ascii.SYN, 19, 9, 32, -44, Ascii.GS, Ascii.DLE, Ascii.SUB, Ascii.DLE, Ascii.SYN, Ascii.NAK, 9, -5, -10, 6, -6};
    }

    public abstract int A1g(AO ao, AR ar, C2061or c2061or, C2061or c2061or2);

    public abstract int A1h(InterfaceC0522Ar interfaceC0522Ar, C9U c9u, C2061or c2061or) throws C0526Av;

    public abstract List<AR> A1l(InterfaceC0522Ar interfaceC0522Ar, C2061or c2061or, boolean z) throws C0526Av;

    public abstract void A1u(C1983nY c1983nY);

    public abstract void A1v(@MetaExoPlayerCustomization AO ao, MediaFormat mediaFormat) throws C9Y;

    public abstract void A1w(AR ar, AO ao, C2061or c2061or, MediaCrypto mediaCrypto) throws C0526Av;

    @MetaExoPlayerCustomization("D45988204: [FBLite][Video] Add Codec Hooks for Logging")
    public abstract void A1x(String str);

    public abstract void A1y(String str, long j, long j2);

    public abstract boolean A22();

    public abstract boolean A23(long j, long j2, AO ao, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws C9Y;

    static {
        A15();
        A15 = new byte[]{0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    }

    public AnonymousClass14(int i, C1654hv c1654hv, C1651hs c1651hs, InterfaceC0522Ar interfaceC0522Ar, C9U c9u, boolean z, boolean z2, int i2, int i3) {
        super(i);
        this.A09 = -9223372036854775807L;
        this.A08 = -9223372036854775807L;
        this.A0m = false;
        this.A0k = false;
        C3M.A08(AbstractC03624a.A02 >= 16);
        this.A11 = (C1654hv) C3M.A01(c1654hv);
        this.A10 = (C1651hs) C3M.A01(c1651hs);
        this.A0u = (InterfaceC0522Ar) C3M.A01(interfaceC0522Ar);
        this.A0t = c9u;
        this.A0z = z;
        this.A0x = z2;
        this.A0o = i2;
        this.A0n = i3;
        this.A0q = new C1983nY(0);
        this.A0r = C1983nY.A02();
        this.A0s = new C6N();
        this.A0w = new ArrayList();
        this.A0p = new MediaCodec.BufferInfo();
        this.A00 = 1.0f;
        this.A01 = 1.0f;
        this.A0v = new ArrayDeque<>();
        A18(C0505Aa.A04);
        this.A03 = 0;
        this.A04 = 0;
        this.A0A = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        this.A0y = C1662i5.A03(EnumC1659i2.A1r);
        this.A12 = C1662i5.A03(EnumC1659i2.A1c);
    }

    private int A0w(String str) {
        if (AbstractC03624a.A02 <= 25) {
            String A0x = A0x(256, 25, 89);
            if (A14[0].length() == 4) {
                String[] strArr = A14;
                strArr[6] = "h0JLQRwistZ4R";
                strArr[5] = "YRyjkg8cOEuM6";
                if (A0x.equals(str) && (AbstractC03624a.A06.startsWith(A0x(681, 7, 108)) || AbstractC03624a.A06.startsWith(A0x(653, 7, 115)) || AbstractC03624a.A06.startsWith(A0x(660, 7, 123)) || AbstractC03624a.A06.startsWith(A0x(674, 7, 4)))) {
                    return 2;
                }
            }
            throw new RuntimeException();
        }
        if (AbstractC03624a.A02 < 24) {
            if (A0x(331, 22, 29).equals(str) || A0x(353, 29, 9).equals(str)) {
                String str2 = AbstractC03624a.A03;
                String[] strArr2 = A14;
                if (strArr2[4].length() != strArr2[3].length()) {
                    String[] strArr3 = A14;
                    strArr3[4] = "Grbv6CKWzSbyHFrZua5Jwu";
                    strArr3[3] = "PMUv1GSkzI9tSaBJkI706oVY9TsOb";
                    if (!A0x(739, 8, 7).equals(str2)) {
                        if (!A0x(747, 12, 76).equals(AbstractC03624a.A03)) {
                            if (!A0x(780, 7, 39).equals(AbstractC03624a.A03)) {
                                if (!A0x(831, 7, 33).equals(AbstractC03624a.A03)) {
                                    return 0;
                                }
                            }
                        }
                    }
                    String[] strArr4 = A14;
                    if (strArr4[6].length() == strArr4[5].length()) {
                        String[] strArr5 = A14;
                        strArr5[6] = "FCPESGyqb3ntu";
                        strArr5[5] = "UMDsUUTIxH2ng";
                        return 1;
                    }
                }
                throw new RuntimeException();
            }
            return 0;
        }
        return 0;
    }

    private ByteBuffer A0y(int i) {
        return this.A0G.A8B(i);
    }

    private ByteBuffer A0z(int i) {
        return this.A0G.A8W(i);
    }

    private List<AR> A10(boolean z) throws C0526Av {
        String alternativeMimeType;
        List<AR> A1l = A1l(this.A0u, this.A0i, z);
        if (A1l.isEmpty() && z) {
            A1l = A1l(this.A0u, this.A0i, false);
            if (!A1l.isEmpty()) {
                AnonymousClass44.A07(A0x(220, 18, 67), A0x(116, 40, 101) + this.A0i.A0W + A0x(0, 58, 73) + A1l + A0x(58, 1, 35));
            }
        }
        if (A1l.isEmpty() && this.A0l && (alternativeMimeType = C0529Ay.A0P(this.A0i)) != null) {
            List<AR> A7g = this.A0u.A7g(alternativeMimeType, false, false);
            if (AbstractC03624a.A02 >= 26) {
                if (A0x(848, 18, 102).equals(this.A0i.A0W) && !A7g.isEmpty()) {
                    return A7g;
                }
                return A1l;
            }
            return A1l;
        }
        return A1l;
    }

    private void A11() throws C9Y {
        if (this.A04 == 2) {
            A1n();
            A1p();
        } else if (A14[0].length() != 4) {
            throw new RuntimeException();
        } else {
            String[] strArr = A14;
            strArr[4] = "s3YfZmdbCJrJCYfdnx93Y1";
            strArr[3] = "Or76pnfNSBivOkp3C019O1267DCns";
            this.A0b = true;
            A1o();
        }
    }

    private void A12() throws C9Y {
        MediaFormat A8X = this.A0G.A8X();
        if (this.A02 != 0 && A8X.getInteger(A0x(866, 5, 81)) == 32 && A8X.getInteger(A0x(793, 6, 71)) == 32) {
            this.A0c = true;
            return;
        }
        if (this.A0T) {
            A8X.setInteger(A0x(688, 13, 13), 1);
        }
        this.A0D = A8X;
        this.A0U = true;
        A1v(this.A0G, A8X);
    }

    private void A13() {
        this.A05 = -1;
        this.A0q.A02 = null;
    }

    private void A14() {
        this.A06 = -1;
        this.A0L = null;
    }

    @MetaExoPlayerCustomizations({@MetaExoPlayerCustomization("Call to 'forceDisableAsynchronous'"), @MetaExoPlayerCustomization("D45988204: [FBLite][Video] Add Codec Hooks for Logging"), @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "D60404164: Merge init calls in the renderer")})
    private void A16(AR ar, MediaCrypto mediaCrypto) throws Exception {
        AO ao = null;
        String str = ar.A03;
        try {
            if (this.A12) {
                A1z(str, this.A0i);
            } else {
                A1t(this.A0i);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!this.A12) {
                A1x(str);
            }
            C4S.A02(A0x(715, 12, 48) + str);
            new C1937mo().A00();
            ao = AV.A02().A0K(A22(), this.A11, this.A10.A00(), EnumC1649hq.A05, str);
            try {
                this.A0K = str;
                C4S.A00();
                C4S.A02(A0x(TypedValues.TransitionType.TYPE_FROM, 14, 16));
                try {
                    A1w(ar, ao, this.A0i, mediaCrypto);
                    C4S.A00();
                    C4S.A02(A0x(821, 10, 114));
                    ao.start();
                    C4S.A00();
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    this.A0G = ao;
                    this.A0H = ar;
                    A1y(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                } catch (Exception e) {
                    e = e;
                    if (ao != null) {
                        ao.AGr();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D53064452: Add decoder init time failure thread sleep")
    private void A17(AR ar, AR ar2, MediaCrypto mediaCrypto) throws Exception {
        int A00 = C1662i5.A00(EnumC1660i3.A06);
        if (A00 >= 0) {
            try {
                A16(ar2, mediaCrypto);
                return;
            } catch (Exception e) {
                if (ar2 == ar) {
                    AnonymousClass44.A07(A0x(220, 18, 67), A0x(590, 63, 38));
                    Thread.sleep(A00);
                    A16(ar2, mediaCrypto);
                    return;
                }
                throw e;
            }
        }
        A16(ar2, mediaCrypto);
    }

    private void A18(C0505Aa c0505Aa) {
        this.A0J = c0505Aa;
        if (c0505Aa.A02 != -9223372036854775807L) {
            this.A0a = true;
        }
    }

    private boolean A19() {
        boolean z = false;
        if (this.A0n <= 0) {
            return false;
        }
        z = (this.A08 == -9223372036854775807L || System.currentTimeMillis() - this.A08 <= ((long) this.A0n)) ? true : true;
        if (this.A08 == -9223372036854775807L) {
            AnonymousClass44.A07(A0x(220, 18, 67), A0x(95, 21, 98));
            try {
                this.A0M = null;
                A1n();
            } catch (IllegalStateException unused) {
            }
            this.A08 = System.currentTimeMillis();
        }
        return z;
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D70661541: Skip the sample if sample is too large")
    private boolean A1A() throws C9Y {
        int result;
        if (this.A0G == null || this.A04 == 2 || this.A0Y) {
            return false;
        }
        if (this.A05 < 0) {
            this.A05 = this.A0G.A5k();
            if (this.A05 < 0) {
                return false;
            }
            this.A0q.A02 = A0y(this.A05);
            this.A0q.A0A();
        }
        if (this.A04 == 1) {
            if (!this.A0R) {
                this.A0W = true;
                this.A0G.AGY(this.A05, 0, 0, 0L, 4);
                A13();
            }
            this.A04 = 2;
            return false;
        } else if (this.A0N) {
            this.A0N = false;
            this.A0q.A02.put(A15);
            this.A0G.AGY(this.A05, 0, A15.length, 0L, 0);
            A13();
            this.A0V = true;
            String[] strArr = A14;
            if (strArr[4].length() != strArr[3].length()) {
                String[] strArr2 = A14;
                strArr2[7] = "TQo31YhCROQVY4YgWOUT3bWhQ8E3XWwr";
                strArr2[1] = "W5PRMN9OPETbxvbbJic4GeLECMZHBr0G";
                return true;
            }
            throw new RuntimeException();
        } else {
            int i = 0;
            if (this.A0g) {
                result = -4;
            } else {
                if (this.A03 == 1) {
                    for (int i2 = 0; i2 < this.A0i.A0X.size(); i2++) {
                        this.A0q.A02.put(this.A0i.A0X.get(i2));
                    }
                    this.A03 = 2;
                }
                i = this.A0q.A02.position();
                boolean A03 = C1662i5.A03(EnumC1659i2.A10);
                if (A14[2].charAt(29) == 'f') {
                    throw new RuntimeException();
                }
                String[] strArr3 = A14;
                strArr3[6] = "tFzAjqlOyn071";
                strArr3[5] = "66mU3uAl0xlMl";
                if (A03) {
                    try {
                        result = A1R(this.A0s, this.A0q, 0);
                    } catch (C5R unused) {
                        A1C(0);
                        A1m();
                        return true;
                    }
                } else {
                    result = A1R(this.A0s, this.A0q, 0);
                }
            }
            if (A9h() || this.A0q.A08()) {
                this.A0B = this.A0A;
            }
            if (result == -3) {
                return false;
            }
            if (result == -5) {
                if (this.A03 == 2) {
                    this.A0q.A0A();
                    this.A03 = 1;
                }
                A1s(this.A0s.A00);
                return true;
            } else if (this.A0q.A05()) {
                if (this.A03 == 2) {
                    this.A0q.A0A();
                    this.A03 = 1;
                }
                this.A0Y = true;
                if (!this.A0V) {
                    A11();
                    return false;
                }
                try {
                    if (!this.A0R) {
                        this.A0W = true;
                        this.A0G.AGY(this.A05, 0, 0, 0L, 4);
                        A13();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    C2061or c2061or = this.A0i;
                    int adaptiveReconfigurationBytes = e.getErrorCode();
                    throw A1S(e, c2061or, AbstractC03624a.A02(adaptiveReconfigurationBytes));
                }
            } else if (this.A0f && !this.A0q.A07()) {
                this.A0q.A0A();
                if (this.A03 == 2) {
                    this.A03 = 1;
                }
                return true;
            } else {
                this.A0f = false;
                boolean skipIfSampleTooLarge = this.A0q.A0E();
                boolean bufferEncrypted = this.A10.A01();
                if (bufferEncrypted && skipIfSampleTooLarge) {
                    this.A0q.A05.A01(i);
                }
                boolean bufferEncrypted2 = A1N(skipIfSampleTooLarge);
                this.A0g = bufferEncrypted2;
                boolean bufferEncrypted3 = this.A0g;
                if (bufferEncrypted3) {
                    return false;
                }
                boolean bufferEncrypted4 = this.A0O;
                if (bufferEncrypted4 && !skipIfSampleTooLarge) {
                    AbstractC0675Gq.A0G(this.A0q.A02);
                    if (this.A0q.A02.position() == 0) {
                        return true;
                    }
                    this.A0O = false;
                }
                try {
                    long j = this.A0q.A01;
                    boolean bufferEncrypted5 = this.A0q.A04();
                    if (bufferEncrypted5) {
                        this.A0w.add(Long.valueOf(j));
                    }
                    this.A0A = Math.max(this.A0A, j);
                    this.A0q.A0B();
                    A1u(this.A0q);
                    if (skipIfSampleTooLarge) {
                        this.A0G.AGa(this.A05, 0, this.A0q.A05, j, 0);
                    } else {
                        this.A0G.AGY(this.A05, 0, this.A0q.A02.limit(), j, 0);
                    }
                    A13();
                    this.A0V = true;
                    this.A03 = 0;
                    this.A0j.A08++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    C2061or c2061or2 = this.A0i;
                    int adaptiveReconfigurationBytes2 = e2.getErrorCode();
                    throw A1S(e2, c2061or2, AbstractC03624a.A02(adaptiveReconfigurationBytes2));
                }
            }
        }
    }

    private boolean A1B() {
        return this.A06 >= 0;
    }

    private boolean A1C(int i) throws C9Y {
        C6N A1U = A1U();
        this.A0r.A0A();
        int A1R = A1R(A1U, this.A0r, i | 4);
        if (A1R == -5) {
            A1s(A1U.A00);
            return true;
        }
        if (A1R == -4 && this.A0r.A05()) {
            this.A0Y = true;
            A11();
        }
        int result = A14[2].charAt(29);
        if (result != 102) {
            String[] strArr = A14;
            strArr[4] = "I6wAGrX36WnyTLz4kIu2A0";
            strArr[3] = "sKJkcvNhIyFX1pRFROyyBnawIxNqa";
            return false;
        }
        throw new RuntimeException();
    }

    private boolean A1D(long j) {
        int size = this.A0w.size();
        for (int i = 0; i < size; i++) {
            int size2 = (this.A0w.get(i).longValue() > j ? 1 : (this.A0w.get(i).longValue() == j ? 0 : -1));
            if (size2 == 0) {
                this.A0w.remove(i);
                return true;
            }
        }
        String[] strArr = A14;
        String str = strArr[4];
        String str2 = strArr[3];
        int length = str.length();
        int size3 = str2.length();
        if (length != size3) {
            String[] strArr2 = A14;
            strArr2[4] = "k0VQHwP22phbTrXBZc8FuM";
            strArr2[3] = "DsxaarEsX3gZUO5CYPDgS2koeov7n";
            return false;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x010c, code lost:
        if (r20.A0L != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010e, code lost:
        r20.A0L.position(r20.A0p.offset);
        r20.A0L.limit(r20.A0p.offset + r20.A0p.size);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0125, code lost:
        r20.A0d = A1D(r20.A0p.presentationTimeUs);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0137, code lost:
        if (r20.A0B != r20.A0p.presentationTimeUs) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0139, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013a, code lost:
        r20.A0Z = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0149, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0156, code lost:
        if (r20.A0L != null) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A1E(long r21, long r23) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass14.A1E(long, long):boolean");
    }

    private boolean A1F(MediaCrypto mediaCrypto, boolean z) throws AY {
        AY A00;
        if (this.A0M == null) {
            try {
                List<AR> A10 = A10(z);
                if (this.A0x) {
                    this.A0M = new ArrayDeque<>(A10);
                } else {
                    this.A0M = new ArrayDeque<>(Collections.singletonList(A10.get(0)));
                }
                this.A0I = null;
            } catch (C0526Av e) {
                throw new AY(this.A0i, e, z, -49998);
            }
        }
        if (!this.A0k && A21()) {
            this.A0M.addFirst(AR.A02(A0x(799, 22, 19), this.A0i.A0W, this.A0i.A0W, null, false, true, false, false, false));
        }
        if (!this.A0M.isEmpty()) {
            AR peekFirst = this.A0M.peekFirst();
            do {
                AR peekFirst2 = this.A0M.peekFirst();
                if (!A25(peekFirst2)) {
                    return false;
                }
                try {
                    A17(peekFirst, peekFirst2, mediaCrypto);
                    return true;
                } catch (Exception e2) {
                    AnonymousClass44.A0A(A0x(220, 18, 67), A0x(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_FFMPEG_LIVE_HLS_FIRST_SEGMENT_DISCONTINUITY_FIX, 30, 18) + peekFirst2, e2);
                    this.A0M.removeFirst();
                    AY ay = new AY(this.A0i, e2, z, peekFirst2);
                    if (this.A0I == null) {
                        this.A0I = ay;
                    } else {
                        A00 = this.A0I.A00(ay);
                        this.A0I = A00;
                    }
                    if (this.A0M.isEmpty()) {
                        throw this.A0I;
                    }
                }
            } while (this.A0M.isEmpty());
            throw this.A0I;
        }
        throw new AY(this.A0i, (Throwable) null, z, -49999);
    }

    public static boolean A1G(C2061or c2061or) {
        return c2061or.A07 == 0 || c2061or.A07 == 2;
    }

    public static boolean A1H(AR ar) {
        String str = ar.A03;
        if (AbstractC03624a.A02 <= 17) {
            String name = A0x(566, 24, 127);
            if (!name.equals(str)) {
                String name2 = A0x(419, 31, 56);
                if (name2.equals(str)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006b, code lost:
        if (A0x(450, 31, 59).equals(r6) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
        if (A0x(481, 38, 125).equals(r6) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
        if (A0x(450, 31, 59).equals(r6) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
        if (A0x(541, 25, 116).equals(r6) == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A1I(java.lang.String r6) {
        /*
            int r1 = com.facebook.ads.redexgen.X.AbstractC03624a.A02
            r0 = 23
            if (r1 > r0) goto L34
            r3 = 541(0x21d, float:7.58E-43)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass14.A14
            r0 = 4
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L98
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass14.A14
            java.lang.String r1 = "BtOe3nAvRfSweps9KMSbQL"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "8BFXWDNhFQQqbiuKKB32KUMMZhTUo"
            r0 = 3
            r2[r0] = r1
            r1 = 25
            r0 = 116(0x74, float:1.63E-43)
            java.lang.String r0 = A0x(r3, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L7d
        L34:
            int r1 = com.facebook.ads.redexgen.X.AbstractC03624a.A02
            r0 = 19
            if (r1 > r0) goto L96
            java.lang.String r3 = com.facebook.ads.redexgen.X.AbstractC03624a.A03
            r2 = 787(0x313, float:1.103E-42)
            r1 = 6
            r0 = 102(0x66, float:1.43E-43)
            java.lang.String r0 = A0x(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L96
            r5 = 450(0x1c2, float:6.3E-43)
            r4 = 31
            r3 = 59
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass14.A14
            r0 = 6
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L7f
            java.lang.String r0 = A0x(r5, r4, r3)
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L7d
        L6d:
            r2 = 481(0x1e1, float:6.74E-43)
            r1 = 38
            r0 = 125(0x7d, float:1.75E-43)
            java.lang.String r0 = A0x(r2, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L96
        L7d:
            r0 = 1
        L7e:
            return r0
        L7f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass14.A14
            java.lang.String r1 = "lQUGM0gwxiouwODu2Sf00uvqO0zTfr3c"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "xcBcqPxRh43dKrs9lyzAmVul0JtIaCtf"
            r0 = 1
            r2[r0] = r1
            java.lang.String r0 = A0x(r5, r4, r3)
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L7d
            goto L6d
        L96:
            r0 = 0
            goto L7e
        L98:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass14.A1I(java.lang.String):boolean");
    }

    public static boolean A1J(String str) {
        return AbstractC03624a.A02 == 21 && A0x(519, 22, 41).equals(str);
    }

    public static boolean A1K(String str) {
        if (AbstractC03624a.A02 >= 18 && (AbstractC03624a.A02 != 18 || (!A0x(382, 15, 68).equals(str) && !A0x(397, 22, 77).equals(str)))) {
            if (AbstractC03624a.A02 == 19 && AbstractC03624a.A06.startsWith(A0x(667, 7, 124))) {
                if (!A0x(238, 18, 34).equals(str)) {
                    if (A14[0].length() != 4) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A14;
                    strArr[6] = "NlNH7MPHVQXxq";
                    strArr[5] = "FDVIIX4T9j7Ji";
                    if (A0x(256, 25, 89).equals(str)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static boolean A1L(String str, C2061or c2061or) {
        return AbstractC03624a.A02 < 21 && c2061or.A0X.isEmpty() && A0x(306, 25, 22).equals(str);
    }

    public static boolean A1M(String str, C2061or c2061or) {
        return AbstractC03624a.A02 <= 18 && c2061or.A06 == 1 && A0x(281, 25, 33).equals(str);
    }

    private boolean A1N(boolean z) throws C9Y {
        if (this.A0E == null || (!z && this.A0z)) {
            return false;
        }
        int A92 = this.A0E.A92();
        if (A92 != 1) {
            return A92 != 4;
        }
        C9E A7s = this.A0E.A7s();
        C2061or c2061or = this.A0i;
        int drmSessionState = ((C9E) C3M.A01(this.A0E.A7s())).A00;
        throw A1S(A7s, c2061or, drmSessionState);
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public void A1X() {
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public void A1Y() {
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public void A1Z() {
        this.A0i = null;
        A18(C0505Aa.A04);
        this.A0v.clear();
        this.A0M = null;
        try {
            A1n();
            try {
                if (this.A0E != null) {
                    this.A0E.AGs(null);
                }
                try {
                    if (this.A0F != null && this.A0F != this.A0E) {
                        this.A0F.AGs(null);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.A0F != null && this.A0F != this.A0E) {
                        this.A0F.AGs(null);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.A0E != null) {
                    this.A0E.AGs(null);
                }
                try {
                    if (this.A0F != null && this.A0F != this.A0E) {
                        this.A0F.AGs(null);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.A0F != null && this.A0F != this.A0E) {
                        this.A0F.AGs(null);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public void A1a(long j, boolean z) throws C9Y {
        this.A0Y = false;
        this.A0b = false;
        if (this.A0G != null) {
            A1m();
        }
        if (this.A0J.A03.A01() > 0) {
            this.A0e = true;
        }
        this.A0J.A03.A02();
        this.A0v.clear();
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    public void A1b(boolean z, boolean z2) throws C9Y {
        this.A0j = new C03945g();
        this.A0h = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public void A1c(C2061or[] c2061orArr, long j, long j2) throws C9Y {
    }

    public final float A1f() {
        return this.A00;
    }

    public final long A1i() {
        return this.A0J.A02;
    }

    public final AO A1j() {
        return this.A0G;
    }

    public final AR A1k() {
        return this.A0H;
    }

    public void A1m() throws C9Y {
        this.A07 = -9223372036854775807L;
        A13();
        A14();
        this.A0f = true;
        this.A0g = false;
        this.A0d = false;
        this.A0w.clear();
        this.A0N = false;
        this.A0c = false;
        this.A0Z = false;
        this.A0C = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        if (!this.A0S) {
            boolean z = this.A0P;
            String[] strArr = A14;
            if (strArr[6].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A14[0] = "8Nzt";
            if ((!z || !this.A0W) && !A20()) {
                if (this.A04 != 0) {
                    A1n();
                    A1p();
                } else {
                    this.A0G.flush();
                    this.A0V = false;
                }
                if (!this.A0X && this.A0i != null) {
                    this.A03 = 1;
                    return;
                }
            }
        }
        A1n();
        A1p();
        if (!this.A0X) {
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String, com.facebook.ads.redexgen.X.9G] */
    public void A1n() {
        this.A07 = -9223372036854775807L;
        this.A09 = -9223372036854775807L;
        this.A08 = -9223372036854775807L;
        A13();
        A14();
        this.A0D = null;
        this.A0U = false;
        this.A0g = false;
        this.A0d = false;
        this.A0w.clear();
        this.A0H = null;
        this.A0X = false;
        this.A0V = false;
        this.A0O = false;
        this.A0S = false;
        this.A02 = 0;
        this.A0R = false;
        this.A0P = false;
        this.A0T = false;
        this.A0N = false;
        this.A0c = false;
        this.A0W = false;
        this.A03 = 0;
        this.A04 = 0;
        if (this.A0G != null) {
            this.A0j.A03++;
            try {
                AV.A02().A0L(A22(), this.A11, this.A10.A00(), EnumC1649hq.A05, this.A0K, this.A0G);
                this.A0G = null;
                C9G c9g = this.A0E;
                String[] strArr = A14;
                if (strArr[6].length() == strArr[5].length()) {
                    String[] strArr2 = A14;
                    strArr2[7] = "JSCNcek9dAkyOPO1KkbpJsRj9JD6rmzz";
                    strArr2[1] = "RONQ7IAwO8Bcbv1Krrdz5fvlVLwlovmm";
                    if (c9g != null && this.A0F != this.A0E) {
                        try {
                            this.A0E.AGs(null);
                            return;
                        } finally {
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                this.A0G = null;
                String[] strArr3 = A14;
                if (strArr3[7].charAt(2) != strArr3[1].charAt(2)) {
                    A14[2] = "iwo0woIVvHFpnZaxaWQfv32BCS9fYlqT";
                    if (this.A0E != null && this.A0F != this.A0E) {
                        try {
                            this.A0E.AGs(null);
                        } finally {
                        }
                    }
                    throw th;
                }
            }
            throw new RuntimeException();
        }
    }

    public void A1o() throws C9Y {
    }

    public final void A1p() throws C9Y {
        long j;
        if (this.A0G != null || this.A0i == null) {
            return;
        }
        this.A0E = this.A0F;
        if (this.A0E != null) {
            this.A0E.A7N();
            if (0 == 0) {
                if (this.A0E.A7s() == null) {
                    return;
                }
            } else {
                throw new NullPointerException(A0x(759, 21, 39));
            }
        }
        try {
            if (!A1F(null, false)) {
                return;
            }
            String str = this.A0H.A03;
            this.A02 = A0w(str);
            this.A0O = A1L(str, this.A0i);
            this.A0S = A1K(str);
            this.A0R = A1H(this.A0H);
            this.A0P = A1I(str);
            this.A0Q = A1J(str);
            this.A0T = A1M(str, this.A0i);
            if (A92() == 2) {
                j = SystemClock.elapsedRealtime() + 1000;
            } else {
                j = -9223372036854775807L;
            }
            this.A07 = j;
            A13();
            A14();
            this.A09 = -9223372036854775807L;
            this.A0f = true;
            this.A0j.A02++;
        } catch (AY e) {
            String mimeType = A14[0];
            if (mimeType.length() != 4) {
                throw new RuntimeException();
            }
            String[] strArr = A14;
            strArr[4] = "htoDBH0u2SWwWLv1LDVpoG";
            strArr[3] = "VZtqtU1mGbN1CVtxZAbUMauSXb3bc";
            if (this.A0o > 0 && (this.A09 == -9223372036854775807L || System.currentTimeMillis() - this.A09 <= this.A0o)) {
                if (this.A09 == -9223372036854775807L) {
                    String A0x = A0x(220, 18, 67);
                    String mimeType2 = A0x(59, 36, 3);
                    AnonymousClass44.A07(A0x, mimeType2);
                    this.A09 = System.currentTimeMillis();
                }
                if (this.A0M != null && this.A0M.isEmpty()) {
                    this.A0M = null;
                    return;
                }
                return;
            }
            throw A1S(e, this.A0i, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        }
    }

    public void A1q(long j) {
    }

    @MetaExoPlayerCustomization("Needed for sr video effects")
    public void A1r(C2061or c2061or) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0093, code lost:
        if (r6 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009f, code lost:
        switch(A1g(r8.A0G, r8.A0H, r3, r8.A0i)) {
            case 0: goto L46;
            case 1: goto L44;
            case 2: goto L31;
            case 3: goto L33;
            default: goto L31;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a7, code lost:
        throw new java.lang.IllegalStateException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
        if (r6 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b2, code lost:
        r7 = true;
        r8.A0X = true;
        r8.A03 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ba, code lost:
        if (r8.A02 == 2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00be, code lost:
        if (r8.A02 != 1) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        if (r8.A0i.A0L != r3.A0L) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
        if (r8.A0i.A0A != r3.A0A) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d0, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d1, code lost:
        r8.A0N = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d4, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d6, code lost:
        r7 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A1s(com.facebook.ads.redexgen.X.C2061or r9) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass14.A1s(com.facebook.ads.redexgen.X.or):void");
    }

    public void A1t(C2061or c2061or) throws C9Y {
    }

    public void A1z(String str, C2061or c2061or) throws C9Y {
        A1t(c2061or);
    }

    public boolean A20() {
        return false;
    }

    public final boolean A21() {
        return A24(this.A0i);
    }

    public final boolean A24(C2061or c2061or) {
        if (c2061or == null || !this.A0m || !A0x(838, 10, 89).equalsIgnoreCase(c2061or.A0W)) {
            return false;
        }
        return true;
    }

    public boolean A25(AR ar) {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    public boolean AAG() {
        return this.A0b;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public boolean AAV() {
        if (this.A0i == null) {
            super.A0B = EnumC1630hX.A07;
        } else if (this.A0g) {
            super.A0B = EnumC1630hX.A0A;
        } else if (!A1d() && !A1B()) {
            super.A0B = EnumC1630hX.A06;
        }
        if (this.A0i != null) {
            boolean z = this.A0g;
            if (A14[2].charAt(29) == 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A14;
            strArr[7] = "joohYCoWTVCMZ7ZK6VknoEQ3356Yke9R";
            strArr[1] = "gcfLSJm2tOx4UzvBIoCvVtFxExIT9beD";
            if (!z && (A1d() || A1B() || (this.A07 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.A07))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1971nM
    public void AHn(long j, long j2) throws C9Y {
        if (this.A0b) {
            A1o();
        } else if (this.A0i == null && !A1C(2)) {
        } else {
            A1p();
            if (this.A0G != null) {
                try {
                    try {
                        C4S.A02(A0x(727, 12, 16));
                        while (A1E(j, j2)) {
                        }
                        while (A1A()) {
                        }
                        this.A08 = -9223372036854775807L;
                    } catch (IllegalStateException e) {
                        if (!A19()) {
                            throw A1S(e, this.A0i, PlaybackException.ERROR_CODE_DECODING_FAILED);
                        }
                    }
                } finally {
                    C4S.A00();
                }
            } else {
                this.A0j.A0A += A1Q(j);
                A1C(1);
            }
            this.A0j.A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7D
    public final int AJb(C2061or c2061or) throws C9Y {
        try {
            return A1h(this.A0u, this.A0t, c2061or);
        } catch (C0526Av e) {
            throw A1S(e, c2061or, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C9Z, com.facebook.ads.redexgen.X.C7D
    public final int AJd() {
        return 8;
    }
}
