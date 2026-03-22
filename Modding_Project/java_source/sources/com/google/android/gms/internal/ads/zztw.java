package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
@SuppressLint({"InlinedApi"})
/* loaded from: classes4.dex */
public final class zztw {
    public static final /* synthetic */ int zza = 0;
    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap zzb = new HashMap();

    @Nullable
    public static zztc zza() throws zztq {
        List zzd = zzd("audio/raw", false, false);
        if (zzd.isEmpty()) {
            return null;
        }
        return (zztc) zzd.get(0);
    }

    @Nullable
    public static String zzb(zzz zzzVar) {
        Pair zza2;
        String str = zzzVar.zzo;
        if ("audio/eac3-joc".equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str) && (zza2 = zzdh.zza(zzzVar)) != null) {
            int intValue = ((Integer) zza2.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return "video/avc";
                }
                if (intValue == 1024) {
                    return "video/av01";
                }
            } else {
                return "video/hevc";
            }
        }
        if (!"video/mv-hevc".equals(str)) {
            return null;
        }
        return "video/hevc";
    }

    public static List zzc(zztl zztlVar, zzz zzzVar, boolean z, boolean z2) throws zztq {
        String zzb2 = zzb(zzzVar);
        if (zzb2 == null) {
            return zzfyc.zzn();
        }
        return zztlVar.zza(zzb2, z, z2);
    }

    public static synchronized List zzd(String str, boolean z, boolean z2) throws zztq {
        synchronized (zztw.class) {
            try {
                zztp zztpVar = new zztp(str, z, z2);
                HashMap hashMap = zzb;
                List list = (List) hashMap.get(zztpVar);
                if (list != null) {
                    return list;
                }
                ArrayList zzg = zzg(zztpVar, new zztt(z, z2, str.equals("video/mv-hevc")));
                if (z && zzg.isEmpty() && Build.VERSION.SDK_INT <= 23) {
                    zzg = zzg(zztpVar, new zzts(null));
                    if (!zzg.isEmpty()) {
                        String str2 = ((zztc) zzg.get(0)).zza;
                        zzdx.zzf("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + str2);
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && zzg.size() == 1 && ((zztc) zzg.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        zzg.add(zztc.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    zzh(zzg, new zztu() { // from class: com.google.android.gms.internal.ads.zztn
                        @Override // com.google.android.gms.internal.ads.zztu
                        public final int zza(Object obj) {
                            int i = zztw.zza;
                            String str3 = ((zztc) obj).zza;
                            if (str3.startsWith("OMX.google") || str3.startsWith("c2.android")) {
                                return 1;
                            }
                            if (Build.VERSION.SDK_INT >= 26 || !str3.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                                return 0;
                            }
                            return -1;
                        }
                    });
                }
                if (Build.VERSION.SDK_INT < 32 && zzg.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zztc) zzg.get(0)).zza)) {
                    zzg.add((zztc) zzg.remove(0));
                }
                zzfyc zzl = zzfyc.zzl(zzg);
                hashMap.put(zztpVar, zzl);
                return zzl;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RequiresNonNull
    public static List zze(zztl zztlVar, zzz zzzVar, boolean z, boolean z2) throws zztq {
        List zza2 = zztlVar.zza(zzzVar.zzo, z, z2);
        List zzc = zzc(zztlVar, zzzVar, z, z2);
        int i = zzfyc.zzd;
        zzfxz zzfxzVar = new zzfxz();
        zzfxzVar.zzh(zza2);
        zzfxzVar.zzh(zzc);
        return zzfxzVar.zzi();
    }

    @CheckResult
    public static List zzf(List list, final zzz zzzVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zztu() { // from class: com.google.android.gms.internal.ads.zzto
            @Override // com.google.android.gms.internal.ads.zztu
            public final int zza(Object obj) {
                int i = zztw.zza;
                if (((zztc) obj).zzd(zzz.this)) {
                    return 1;
                }
                return 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(1:(1:68))|69|(1:71)(3:127|128|(1:130)(1:131))|(3:72|73|(1:75)(2:115|(1:122)(1:121)))|(6:(1:78)|110|111|112|113|11)(1:114)|(3:81|(5:84|85|86|87|89)|11)|110|111|112|113|11) */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01fc, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01fd, code lost:
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0233, code lost:
        com.google.android.gms.internal.ads.zzdx.zzc("MediaCodecUtil", "Skipping codec " + r21 + " (failed to query capabilities)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00af, code lost:
        if ("SCV31".equals(r14) == false) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x018a A[Catch: Exception -> 0x0191, TryCatch #4 {Exception -> 0x0191, blocks: (B:92:0x015a, B:98:0x0171, B:104:0x0184, B:106:0x018a, B:110:0x019c), top: B:166:0x015a }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x019c A[Catch: Exception -> 0x0191, TRY_LEAVE, TryCatch #4 {Exception -> 0x0191, blocks: (B:92:0x015a, B:98:0x0171, B:104:0x0184, B:106:0x018a, B:110:0x019c), top: B:166:0x015a }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01b2 A[Catch: Exception -> 0x01b7, TryCatch #1 {Exception -> 0x01b7, blocks: (B:115:0x01a8, B:117:0x01b2, B:120:0x01bc, B:122:0x01cc, B:124:0x01d4), top: B:160:0x01a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01bc A[Catch: Exception -> 0x01b7, TryCatch #1 {Exception -> 0x01b7, blocks: (B:115:0x01a8, B:117:0x01b2, B:120:0x01bc, B:122:0x01cc, B:124:0x01d4), top: B:160:0x01a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x022d A[Catch: Exception -> 0x0034, TRY_ENTER, TryCatch #3 {Exception -> 0x0034, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0037, B:17:0x0045, B:23:0x0055, B:25:0x005d, B:27:0x0065, B:29:0x006f, B:31:0x0079, B:33:0x0081, B:35:0x0089, B:37:0x0091, B:39:0x0099, B:41:0x00a1, B:43:0x00a9, B:47:0x00b5, B:49:0x00bd, B:51:0x00c5, B:53:0x00ce, B:146:0x0227, B:149:0x022d, B:151:0x0233, B:152:0x024f, B:153:0x0272, B:56:0x00d8, B:57:0x00db, B:59:0x00e3, B:62:0x00ef, B:64:0x00f7, B:69:0x0105, B:71:0x010d, B:73:0x0115, B:76:0x0120, B:78:0x0128, B:81:0x0133, B:83:0x013b, B:86:0x0146, B:88:0x014e), top: B:164:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x024f A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzg(com.google.android.gms.internal.ads.zztp r22, com.google.android.gms.internal.ads.zztr r23) throws com.google.android.gms.internal.ads.zztq {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztw.zzg(com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zztr):java.util.ArrayList");
    }

    private static void zzh(List list, final zztu zztuVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zztm
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zztw.zza;
                zztu zztuVar2 = zztu.this;
                return zztuVar2.zza(obj2) - zztuVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (Build.VERSION.SDK_INT >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        } else if (zzay.zzh(str)) {
            return true;
        } else {
            String zza2 = zzfui.zza(mediaCodecInfo.getName());
            if (zza2.startsWith("arc.")) {
                return false;
            }
            if (zza2.startsWith("omx.google.") || zza2.startsWith("omx.ffmpeg.") || ((zza2.startsWith("omx.sec.") && zza2.contains(".sw.")) || zza2.equals("omx.qcom.video.decoder.hevcswvdec") || zza2.startsWith("c2.android.") || zza2.startsWith("c2.google."))) {
                return true;
            }
            if (!zza2.startsWith("omx.") && !zza2.startsWith("c2.")) {
                return true;
            }
            return false;
        }
    }
}
