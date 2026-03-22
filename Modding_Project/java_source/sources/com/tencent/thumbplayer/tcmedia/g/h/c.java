package com.tencent.thumbplayer.tcmedia.g.h;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.g.b.e;
import com.tencent.thumbplayer.tcmedia.g.b.f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f10643a = {"csd-0", "csd-1", "csd-2"};
    private static boolean b;
    private static boolean c;
    private static final Set<String> d;

    static {
        HashSet hashSet = new HashSet();
        d = hashSet;
        hashSet.add("1601");
        hashSet.add("1713");
        hashSet.add("1714");
        hashSet.add("A10-70F");
        hashSet.add("A10-70L");
        hashSet.add("A1601");
        hashSet.add("A2016a40");
        hashSet.add("A7000-a");
        hashSet.add("A7000plus");
        hashSet.add("A7010a48");
        hashSet.add("A7020a48");
        hashSet.add("AquaPowerM");
        hashSet.add("ASUS_X00AD_2");
        hashSet.add("Aura_Note_2");
        hashSet.add("BLACK-1X");
        hashSet.add("BRAVIA_ATV2");
        hashSet.add("BRAVIA_ATV3_4K");
        hashSet.add("C1");
        hashSet.add("ComioS1");
        hashSet.add("CP8676_I02");
        hashSet.add("CPH1609");
        hashSet.add("CPY83_I00");
        hashSet.add("cv1");
        hashSet.add("cv3");
        hashSet.add("deb");
        hashSet.add("E5643");
        hashSet.add("ELUGA_A3_Pro");
        hashSet.add("ELUGA_Note");
        hashSet.add("ELUGA_Prim");
        hashSet.add("ELUGA_Ray_X");
        hashSet.add("EverStar_S");
        hashSet.add("F3111");
        hashSet.add("F3113");
        hashSet.add("F3116");
        hashSet.add("F3211");
        hashSet.add("F3213");
        hashSet.add("F3215");
        hashSet.add("F3311");
        hashSet.add("flo");
        hashSet.add("fugu");
        hashSet.add("GiONEE_CBL7513");
        hashSet.add("GiONEE_GBL7319");
        hashSet.add("GIONEE_GBL7360");
        hashSet.add("GIONEE_SWW1609");
        hashSet.add("GIONEE_SWW1627");
        hashSet.add("GIONEE_SWW1631");
        hashSet.add("GIONEE_WBL5708");
        hashSet.add("GIONEE_WBL7365");
        hashSet.add("GIONEE_WBL7519");
        hashSet.add("griffin");
        hashSet.add("htc_e56ml_dtul");
        hashSet.add("hwALE-H");
        hashSet.add("HWBLN-H");
        hashSet.add("HWCAM-H");
        hashSet.add("HWVNS-H");
        hashSet.add("HWWAS-H");
        hashSet.add("i9031");
        hashSet.add("iball8735_9806");
        hashSet.add("Infinix-X572");
        hashSet.add("iris60");
        hashSet.add("itel_S41");
        hashSet.add("j2xlteins");
        hashSet.add("JGZ");
        hashSet.add("K50a40");
        hashSet.add("kate");
        hashSet.add("l5460");
        hashSet.add("le_x6");
        hashSet.add("LS-5017");
        hashSet.add("M5c");
        hashSet.add("manning");
        hashSet.add("marino_f");
        hashSet.add("MEIZU_M5");
        hashSet.add("mh");
        hashSet.add("mido");
        hashSet.add("c");
        hashSet.add("namath");
        hashSet.add("nicklaus_f");
        hashSet.add("NX541J");
        hashSet.add("NX573J");
        hashSet.add("OnePlus5T");
        hashSet.add("p212");
        hashSet.add("P681");
        hashSet.add("P85");
        hashSet.add("panell_d");
        hashSet.add("panell_dl");
        hashSet.add("panell_ds");
        hashSet.add("panell_dt");
        hashSet.add("PB2-670M");
        hashSet.add("PGN528");
        hashSet.add("PGN610");
        hashSet.add("PGN611");
        hashSet.add("Phantom6");
        hashSet.add("Pixi4-7_3G");
        hashSet.add("Pixi5-10_4G");
        hashSet.add("PLE");
        hashSet.add("PRO7S");
        hashSet.add("Q350");
        hashSet.add("Q4260");
        hashSet.add("Q427");
        hashSet.add("Q4310");
        hashSet.add("Q5");
        hashSet.add("QM16XE_U");
        hashSet.add("QX1");
        hashSet.add("santoni");
        hashSet.add("Slate_Pro");
        hashSet.add("SVP-DTV15");
        hashSet.add("s905x018");
        hashSet.add("taido_row");
        hashSet.add("TB3-730F");
        hashSet.add("TB3-730X");
        hashSet.add("TB3-850F");
        hashSet.add("TB3-850M");
        hashSet.add("tcl_eu");
        hashSet.add("V1");
        hashSet.add("V23GB");
        hashSet.add("V5");
        hashSet.add("vernee_M5");
        hashSet.add("watson");
        hashSet.add("whyred");
        hashSet.add("woods_f");
        hashSet.add("woods_fn");
        hashSet.add("X3_HK");
        hashSet.add("XE2X");
        hashSet.add("XT1663");
        hashSet.add("Z12_PRO");
        hashSet.add("Z80");
    }

    public static int a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (d(codecCapabilities)) {
            return true;
        }
        return false;
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    public static int a(f fVar, e eVar) {
        if (eVar.i != -1) {
            int i = 0;
            for (int i2 = 0; i2 < eVar.f10622a.size(); i2++) {
                i += eVar.f10622a.get(i2).length;
            }
            return eVar.i + i;
        }
        return a(eVar.j, eVar.b, eVar.c, fVar.d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str, int i, int i2, boolean z) {
        char c2;
        int i3;
        int i4 = 4;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
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
            case 2:
            case 4:
                i3 = i * i2;
                i4 = 2;
                break;
            case 1:
            case 5:
                i3 = i * i2;
                break;
            case 3:
                if (!"BRAVIA 4K 2015".equals(TPSystemInfo.getDeviceName()) && (!"Amazon".equals(TPSystemInfo.getDeviceManufacturer()) || (!"KFSOWI".equals(TPSystemInfo.getDeviceName()) && (!"AFTS".equals(TPSystemInfo.getDeviceName()) || !z)))) {
                    i3 = a(i, 16) * a(i2, 16) * 256;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
                break;
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    public static String a(MediaCodec mediaCodec) {
        return mediaCodec.getName();
    }

    public static ArrayList<byte[]> a(MediaFormat mediaFormat) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            String[] strArr = f10643a;
            if (i >= strArr.length) {
                return arrayList;
            }
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(strArr[i]);
            if (byteBuffer != null) {
                arrayList.add(byteBuffer.array());
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0077 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0012, B:10:0x0018, B:16:0x0026, B:18:0x002e, B:19:0x0030, B:26:0x0049, B:29:0x0053, B:32:0x005d, B:41:0x0071, B:43:0x0077, B:44:0x008c, B:40:0x006f, B:45:0x008e), top: B:50:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a() {
        /*
            java.lang.Class<com.tencent.thumbplayer.tcmedia.g.h.c> r0 = com.tencent.thumbplayer.tcmedia.g.h.c.class
            monitor-enter(r0)
            boolean r1 = com.tencent.thumbplayer.tcmedia.g.h.c.b     // Catch: java.lang.Throwable -> L21
            if (r1 != 0) goto L8e
            java.lang.String r1 = "dangal"
            java.lang.String r2 = android.os.Build.DEVICE     // Catch: java.lang.Throwable -> L21
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L21
            r3 = 1
            if (r1 != 0) goto L6f
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L21
            r4 = 27
            if (r1 > r4) goto L24
            java.lang.String r5 = "HWEML"
            boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L21
            if (r5 != 0) goto L6f
            goto L24
        L21:
            r1 = move-exception
            goto L92
        L24:
            if (r1 >= r4) goto L71
            java.util.Set<java.lang.String> r1 = com.tencent.thumbplayer.tcmedia.g.h.c.d     // Catch: java.lang.Throwable -> L21
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L30
            com.tencent.thumbplayer.tcmedia.g.h.c.c = r3     // Catch: java.lang.Throwable -> L21
        L30:
            java.lang.String r1 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getDeviceName()     // Catch: java.lang.Throwable -> L21
            int r2 = r1.hashCode()     // Catch: java.lang.Throwable -> L21
            r4 = -594534941(0xffffffffdc901de3, float:-3.2452206E17)
            r5 = 2
            if (r2 == r4) goto L5d
            r4 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r2 == r4) goto L53
            r4 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r2 == r4) goto L49
            goto L67
        L49:
            java.lang.String r2 = "AFTN"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L67
            r1 = r3
            goto L68
        L53:
            java.lang.String r2 = "AFTA"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L67
            r1 = 0
            goto L68
        L5d:
            java.lang.String r2 = "JSN-L21"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L67
            r1 = r5
            goto L68
        L67:
            r1 = -1
        L68:
            if (r1 == 0) goto L6f
            if (r1 == r3) goto L6f
            if (r1 == r5) goto L6f
            goto L71
        L6f:
            com.tencent.thumbplayer.tcmedia.g.h.c.c = r3     // Catch: java.lang.Throwable -> L21
        L71:
            boolean r1 = com.tencent.thumbplayer.tcmedia.g.h.b.a()     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L8c
            java.lang.String r1 = "TUtils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L21
            java.lang.String r4 = "deviceNeedsSetOutputSurfaceWorkaround:"
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L21
            boolean r4 = com.tencent.thumbplayer.tcmedia.g.h.c.c     // Catch: java.lang.Throwable -> L21
            r2.append(r4)     // Catch: java.lang.Throwable -> L21
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L21
            com.tencent.thumbplayer.tcmedia.g.h.b.b(r1, r2)     // Catch: java.lang.Throwable -> L21
        L8c:
            com.tencent.thumbplayer.tcmedia.g.h.c.b = r3     // Catch: java.lang.Throwable -> L21
        L8e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            boolean r0 = com.tencent.thumbplayer.tcmedia.g.h.c.c
            return r0
        L92:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.g.h.c.a():boolean");
    }

    public static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return c(codecCapabilities);
    }

    public static boolean a(String str) {
        return str.contains("video");
    }
}
