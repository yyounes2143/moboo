package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import com.vungle.ads.internal.protos.Sdk;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
/* renamed from: com.facebook.ads.redexgen.X.jO  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1739jO implements InterfaceC0777Kp {
    public static byte[] A09;
    public static String[] A0A = {"jhQijRHeS2b3DC", "TrxlLGPRt74PJqIyPQ202SRMEezA", "IB0ZY9fOXgD7jLe6Y4PRk3dCNjPCK6", "H6fabJXG57DAkPtsQTSNUghzavXSaH69", "ufMT47zQTczJDi2Vdc2LdI1YLyWR3nOe", "Lk9ILhYpp3cxsVDBevZ7UGW4HuH86l", "wl", "vesbJwqYWy5viKlOFyHJIQca6g"};
    public static final String A0B;
    public final int A00;
    public final int A01;
    public final C0785Kx A02;
    public final LA A04;
    public final SQ A05;
    public final boolean A08;
    public final Map<String, File> A06 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Semaphore> A07 = new HashMap();
    public final C0787Kz A03 = new C0787Kz();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 23 out of bounds for length 23
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0126: INVOKE  
      (r10v1 ?? I:com.facebook.ads.redexgen.X.LA)
      (r11 I:java.lang.String)
      (r12 I:int)
      (r13 I:java.lang.String)
      (r14 I:java.lang.Long)
      (r15 I:java.lang.Long)
      (r16 I:com.facebook.ads.redexgen.X.Kv)
     type: INTERFACE call: com.facebook.ads.redexgen.X.LA.AGk(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void, block:B:43:0x011a */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0141: INVOKE  
      (r10v0 ?? I:com.facebook.ads.redexgen.X.LA)
      (r11 I:java.lang.String)
      (r12 I:int)
      (r13 I:java.lang.String)
      (r14 I:java.lang.Long)
      (r15 I:java.lang.Long)
      (r16 I:com.facebook.ads.redexgen.X.Kv)
     type: INTERFACE call: com.facebook.ads.redexgen.X.LA.AGk(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void, block:B:49:0x0135 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0124: MOVE  (r16 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:43:0x011a */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x013f: MOVE  (r16 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:49:0x0135 */
    private File A02(C0783Kv c0783Kv, String str, String str2, int i, C0786Ky c0786Ky) {
        C0783Kv c0783Kv2;
        String AGk;
        C0783Kv c0783Kv3;
        String AGk2;
        String A03 = A03(Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, 22, 17);
        try {
            String str3 = str;
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(A01(this.A05), str2);
            final long A0R = U7.A0R(this.A05);
            C1734jI c1734jI = new C1734jI(file, new AbstractC1738jN(A0R) { // from class: com.facebook.ads.redexgen.X.7f
                public static byte[] A01;
                public final long A00;

                static {
                    A01();
                }

                public static String A00(int i2, int i3, int i4) {
                    byte[] copyOfRange = Arrays.copyOfRange(A01, i2, i2 + i3);
                    for (int i5 = 0; i5 < copyOfRange.length; i5++) {
                        copyOfRange[i5] = (byte) ((copyOfRange[i5] - i4) - 38);
                    }
                    return new String(copyOfRange);
                }

                public static void A01() {
                    A01 = new byte[]{-31, -11, Ascii.FF, -76, 7, -3, Ascii.SO, -7, -76, 1, 9, 7, 8, -76, -10, -7, -76, 4, 3, 7, -3, 8, -3, 10, -7, -76, 2, 9, 1, -10, -7, 6, -75};
                }

                {
                    if (A0R > 0) {
                        this.A00 = A0R;
                        return;
                    }
                    throw new IllegalArgumentException(A00(0, 33, 110));
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1738jN
                public final boolean A08(File file2, long j, int i2) {
                    return j <= this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1738jN, com.facebook.ads.redexgen.X.L0
                public final /* bridge */ /* synthetic */ void AJg(File file2) throws IOException {
                    super.AJg(file2);
                }
            });
            if (c1734jI.A09()) {
                if (this.A08) {
                    String str4 = A03(49, 22, 36) + c1734jI.A00.getName();
                }
                this.A06.put(str3, file);
                c1734jI.A06();
                this.A04.AGl(str3, true, c0783Kv);
                return file;
            }
            if (this.A08) {
                String str5 = A03(71, 26, 76) + c1734jI.A00.getName();
            }
            if (c0786Ky.A04()) {
                this.A04.AGl(str3, false, c0783Kv);
                for (int i2 = 0; i2 < this.A00; i2++) {
                    try {
                        SQ sq = this.A05;
                        if (A0A[3].charAt(31) != '9') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A0A;
                        strArr[2] = "QJ6lhIf3SMnJsUHWjUzyv1yZJIRdgp";
                        strArr[5] = "f1TQksdEGnGezGtACwRIsNgGsb1lS2";
                        str3 = str3;
                        try {
                            A05(sq, c1734jI, str3, i, i2, currentTimeMillis);
                            break;
                        } catch (L6 e) {
                            e = e;
                            if (i2 == this.A00 - 1) {
                                A06(c1734jI);
                                if (e instanceof C1735jJ) {
                                    throw ((C1735jJ) e);
                                }
                                if (e instanceof C1730jE) {
                                    throw ((C1730jE) e);
                                }
                            }
                        }
                    } catch (L6 e2) {
                        e = e2;
                    }
                }
                int A032 = c1734jI.A03();
                c1734jI.A06();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                c0786Ky.A00().A55(file, this.A04);
                this.A06.put(str3, file);
                this.A04.AGk(str3, 2112, null, Long.valueOf(A032), Long.valueOf(currentTimeMillis2), c0783Kv);
                return file;
            }
            return null;
        } catch (C1730jE e3) {
            this.A04.AGk(AGk2, 2113, e3.toString(), null, null, c0783Kv3);
            if (this.A08) {
                Log.e(A0B, A03, e3);
                return null;
            }
            return null;
        } catch (C1735jJ e4) {
            this.A04.AGk(AGk, 2119, e4.toString(), null, null, c0783Kv2);
            if (this.A08) {
                Log.e(A0B, A03, e4);
                return null;
            }
            return null;
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 50);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-95, -23, -30, -12, -95, -29, -26, -26, -17, -95, -22, -17, -11, -26, -13, -13, -10, -15, -11, -26, -27, -81, Byte.MIN_VALUE, 116, -70, -67, -64, -71, 116, -73, -64, -71, -75, -62, -71, -72, -114, 116, -52, -66, -33, Ascii.DC2, Ascii.DC2, 3, Ascii.VT, Ascii.SO, Ascii.DC2, -40, -66, -103, -73, -71, -66, -65, -60, -67, 118, -68, -65, -62, -69, 118, -71, -59, -61, -58, -62, -69, -54, -69, 118, -63, -33, -31, -26, -25, -20, -27, -98, -28, -25, -22, -29, -98, -20, -19, -14, -98, -31, -19, -21, -18, -22, -29, -14, -29, -98, -87, -57, -55, -50, -49, -44, -51, -122, -43, -52, -122, -121, -91, -78, 107, -72, 100, -89, -80, -77, -73, -87, 100, -89, -91, -89, -84, -87, 100, -86, -83, -80, -87, 114, -61, -31, -18, -89, -12, -96, -14, -27, -31, -28, -96, -31, -13, -13, -27, -12, -13, -82, -63, -33, -20, -91, -14, -98, -16, -29, -33, -30, -98, -22, -29, -20, -27, -14, -26, -98, -19, -28, -98, -124, -91, -84, -91, -76, -87, -82, -89, 96, -93, -95, -93, -88, -91, 96, -90, -87, -84, -91, 96, -95, -90, -76, -91, -78, 96, -91, -72, -93, -91, -91, -92, -87, -82, -89, 96, -78, -91, -76, -78, -71, 96, -95, -76, -76, -91, -83, -80, -76, -77, 122, 96, -120, -75, -75, -78, -75, 99, -90, -92, -90, -85, -84, -79, -86, 99, -73, -85, -88, 99, -87, -84, -81, -88, -89, -44, -44, -47, -44, -126, -59, -50, -57, -61, -48, -53, -48, -55, -126, -56, -53, -50, -57, -23, Ascii.SYN, Ascii.SYN, 19, Ascii.SYN, -60, 7, Ascii.DLE, 19, Ascii.ETB, Ascii.CR, Ascii.DC2, Ascii.VT, -60, Ascii.ETB, 19, Ascii.EM, Ascii.SYN, 7, 9, -39, -2, -13, -1, -3, 0, -4, -11, 4, -11, -80, 2, -11, 3, 0, -1, -2, 3, -11, -66, 2, 32, 39, Ascii.ETB, Ascii.FS, Ascii.NAK, -50, 34, Ascii.GS, -50, 32, 19, Ascii.SI, Ascii.DC2, -50, -31, -28, -18, -9, -83, -26, -23, -20, -27, -83, -29, -31, -29, -24, -27, -50, -32, -32, -46, -31, -89, -100, -100, -100, -77, -74, -71, -78, -121, 124, 124, 124, -82, -69, -79, -65, -68, -74, -79, -84, -82, -64, -64, -78, -63, 124};
    }

    static {
        A04();
        A0B = C1739jO.class.getSimpleName();
    }

    public C1739jO(SQ sq, C0785Kx c0785Kx, LA la) {
        this.A05 = sq;
        this.A08 = c0785Kx.A02();
        this.A00 = c0785Kx.A00();
        this.A04 = la;
        this.A01 = c0785Kx.A01();
        this.A02 = c0785Kx;
    }

    public static C1736jK A00(Context context, String str) throws L6 {
        try {
            InputStream open = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr, 0, bArr.length);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    return new C1736jK(byteArrayOutputStream.toByteArray());
                }
            }
        } catch (IOException e) {
            throw new L6(A03(131, 18, 78), e);
        }
    }

    public static File A01(Context context) {
        return new File(context.getCacheDir(), A03(318, 15, 78));
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0144 A[Catch: L6 -> 0x015f, all -> 0x01c6, TRY_LEAVE, TryCatch #13 {L6 -> 0x015f, all -> 0x01c6, blocks: (B:12:0x007c, B:40:0x00f8, B:42:0x0100, B:50:0x0144, B:56:0x0157, B:48:0x013e), top: B:112:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0148 A[Catch: L6 -> 0x009a, all -> 0x01fa, TRY_ENTER, TryCatch #10 {L6 -> 0x009a, all -> 0x01fa, blocks: (B:9:0x0051, B:17:0x008b, B:54:0x0151, B:59:0x0162, B:51:0x0148, B:53:0x014e, B:45:0x0130, B:46:0x0137), top: B:118:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0157 A[Catch: L6 -> 0x015f, all -> 0x01c6, TRY_ENTER, TRY_LEAVE, TryCatch #13 {L6 -> 0x015f, all -> 0x01c6, blocks: (B:12:0x007c, B:40:0x00f8, B:42:0x0100, B:50:0x0144, B:56:0x0157, B:48:0x013e), top: B:112:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A05(android.content.Context r24, com.facebook.ads.redexgen.X.C1734jI r25, java.lang.String r26, int r27, int r28, long r29) throws com.facebook.ads.redexgen.X.L6 {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1739jO.A05(android.content.Context, com.facebook.ads.redexgen.X.jI, java.lang.String, int, int, long):void");
    }

    private void A06(C1734jI c1734jI) {
        try {
            File A04 = c1734jI.A04();
            if (A04.exists()) {
                c1734jI.A06();
                boolean delete = A04.delete();
                if (this.A08) {
                    Log.i(A0B, A03(170, 52, 14) + delete);
                }
            }
        } catch (Exception e) {
            if (A0A[0].length() != 14) {
                throw new RuntimeException();
            }
            A0A[3] = "fJTJjiotuyJvZrF72L8221tI8VUznJb9";
            if (this.A08) {
                Log.e(A0B, A03(108, 23, 18), e);
            }
        }
    }

    private boolean A07(C1734jI c1734jI) {
        try {
            c1734jI.A05();
            if (A0A[4].charAt(27) != 'R') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[7] = "zmS4hUlvHkaHxqc9Vg18exvolw";
            strArr[6] = "qC";
            return true;
        } catch (C1730jE e) {
            if (this.A08) {
                Log.e(A0B, A03(TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 19, 48), e);
                return false;
            }
            return false;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<T> */
    public final <T> C0779Kr<T> A08(C0783Kv c0783Kv, C0786Ky<T> c0786Ky) {
        Semaphore semaphore;
        if (c0786Ky.A03()) {
            File file = this.A06.get(c0783Kv.A09);
            if (file != null) {
                this.A04.AGl(c0783Kv.A09, true, c0783Kv);
                return c0786Ky.A00().A3p(file, this.A04);
            }
            this.A04.AGl(c0783Kv.A09, false, c0783Kv);
            return new C0779Kr<>(false, null);
        }
        String str = c0783Kv.A09;
        String str2 = c0783Kv.A04;
        StringBuilder sb = new StringBuilder();
        String baseUrl = this.A03.A03(str);
        String extension = sb.append(baseUrl).append(str2).toString();
        synchronized (this.A07) {
            semaphore = this.A07.get(extension);
            if (semaphore == null) {
                semaphore = new Semaphore(1);
                this.A07.put(extension, semaphore);
            }
            try {
            } catch (Throwable th) {
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(extension);
                    throw th;
                }
            }
        }
        try {
            semaphore.acquire();
            File A02 = A02(c0783Kv, str, extension, this.A01, c0786Ky);
            if (A02 != null) {
                C0779Kr<T> A3p = c0786Ky.A00().A3p(A02, this.A04);
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(extension);
                }
                return A3p;
            }
            C0779Kr<T> c0779Kr = new C0779Kr<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(extension);
            }
            return c0779Kr;
        } catch (InterruptedException unused) {
            if (this.A08) {
                StringBuilder sb2 = new StringBuilder();
                String baseUrl2 = A03(97, 11, 52);
                StringBuilder append = sb2.append(baseUrl2).append(str);
                String baseUrl3 = A03(0, 22, 79);
                append.append(baseUrl3).toString();
            }
            C0779Kr<T> c0779Kr2 = new C0779Kr<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(extension);
                return c0779Kr2;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0777Kp
    public final C0779Kr<Bitmap> AHu(C0783Kv c0783Kv, boolean z) {
        return A08(c0783Kv, new C0786Ky(new C1742jR(c0783Kv.A01, c0783Kv.A00, this.A02.A04(), this.A02.A03(), z)));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<java.io.File> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0777Kp
    public final File AHv(C0783Kv c0783Kv) {
        C0786Ky c0786Ky = new C0786Ky(new C1741jQ());
        c0786Ky.A01(true);
        c0786Ky.A02(false);
        return (File) A08(c0783Kv, c0786Ky).A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0777Kp
    public final String AHw(C0783Kv c0783Kv) {
        return (String) A08(c0783Kv, new C0786Ky(new C1740jP())).A00();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<java.lang.String> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0777Kp
    public final String AHx(C0783Kv c0783Kv) {
        C0786Ky c0786Ky = new C0786Ky(new C1740jP());
        c0786Ky.A01(true);
        c0786Ky.A02(false);
        return (String) A08(c0783Kv, c0786Ky).A00();
    }
}
