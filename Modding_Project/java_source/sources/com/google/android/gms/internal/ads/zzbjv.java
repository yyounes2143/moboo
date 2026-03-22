package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbjv {
    public static final zzbjw zza = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzbit
        @Override // com.google.android.gms.internal.ads.zzbjw
        public final void zza(Object obj, Map map) {
            String str;
            boolean z;
            zzcgi zzcgiVar = (zzcgi) obj;
            zzbjw zzbjwVar = zzbjv.zza;
            String str2 = (String) map.get("urls");
            if (TextUtils.isEmpty(str2)) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str2.split(",");
            HashMap hashMap = new HashMap();
            PackageManager packageManager = zzcgiVar.getContext().getPackageManager();
            for (String str3 : split) {
                String[] split2 = str3.split(";", 2);
                String trim = split2[0].trim();
                if (split2.length > 1) {
                    str = split2[1].trim();
                } else {
                    str = "android.intent.action.VIEW";
                }
                if (packageManager.resolveActivity(new Intent(str, Uri.parse(trim)), 65536) != null) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                hashMap.put(str3, valueOf);
                com.google.android.gms.ads.internal.util.zze.zza("/canOpenURLs;" + str3 + ";" + valueOf);
            }
            ((zzbmr) zzcgiVar).zzd("openableURLs", hashMap);
        }
    };
    public static final zzbjw zzb = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzbiv
        @Override // com.google.android.gms.internal.ads.zzbjw
        public final void zza(Object obj, Map map) {
            boolean z;
            zzcgi zzcgiVar = (zzcgi) obj;
            zzbjw zzbjwVar = zzbjv.zza;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziy)).booleanValue()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get(CampaignEx.JSON_KEY_PACKAGE_NAME);
            if (TextUtils.isEmpty(str)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap hashMap = new HashMap();
            if (zzcgiVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str, valueOf);
            com.google.android.gms.ads.internal.util.zze.zza("/canOpenApp;" + str + ";" + valueOf);
            ((zzbmr) zzcgiVar).zzd("openableApp", hashMap);
        }
    };
    public static final zzbjw zzc = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzbiy
        @Override // com.google.android.gms.internal.ads.zzbjw
        public final void zza(Object obj, Map map) {
            zzbjv.zzb((zzcgi) obj, map);
        }
    };
    public static final zzbjw zzd = new zzbjn();
    public static final zzbjw zze = new zzbjo();
    public static final zzbjw zzf = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzbiz
        @Override // com.google.android.gms.internal.ads.zzbjw
        public final void zza(Object obj, Map map) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar;
            zzcgi zzcgiVar = (zzcgi) obj;
            zzbjw zzbjwVar = zzbjv.zza;
            String str = (String) map.get("u");
            if (str == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
                return;
            }
            zzces zzcesVar = (zzces) zzcgiVar;
            if (zzcesVar.zzD() != null) {
                zzvVar = zzcesVar.zzD().zzax;
            } else {
                zzvVar = null;
            }
            new com.google.android.gms.ads.internal.util.zzbw(zzcgiVar.getContext(), ((zzcgp) zzcgiVar).zzm().afmaVersion, str, null, zzvVar).zzb();
        }
    };
    public static final zzbjw zzg = new zzbjp();
    public static final zzbjw zzh = new zzbjq();
    public static final zzbjw zzi = new zzbjw() { // from class: com.google.android.gms.internal.ads.zzbiw
        @Override // com.google.android.gms.internal.ads.zzbjw
        public final void zza(Object obj, Map map) {
            zzcgo zzcgoVar = (zzcgo) obj;
            zzbjw zzbjwVar = zzbjv.zza;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(str2);
                int parseInt3 = Integer.parseInt(str3);
                zzavl zzI = zzcgoVar.zzI();
                if (zzI != null) {
                    zzI.zzc().zzl(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException unused) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzbjw zzj = new zzbjr();
    public static final zzbjw zzk = new zzbjs();
    public static final zzbjw zzl = new zzccw();
    public static final zzbjw zzm = new zzccx();
    public static final zzbjw zzn = new zzbip();
    public static final zzbkm zzo = new zzbkm();
    public static final zzbjw zzp = new zzbjt();
    public static final zzbjw zzq = new zzbju();
    public static final zzbjw zzr = new zzbja();
    public static final zzbjw zzs = new zzbjb();
    public static final zzbjw zzt = new zzbjc();
    public static final zzbjw zzu = new zzbjd();
    public static final zzbjw zzv = new zzbje();
    public static final zzbjw zzw = new zzbjf();
    public static final zzbjw zzx = new zzbjg();
    public static final zzbjw zzy = new zzbjh();
    public static final zzbjw zzz = new zzbji();
    public static final zzbjw zzA = new zzbjj();
    public static final zzbjw zzB = new zzbjl();
    public static final zzbjw zzC = new zzbjm();

    public static ListenableFuture zza(zzcfb zzcfbVar, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzavl zzI = zzcfbVar.zzI();
            zzfct zzS = zzcfbVar.zzS();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmm)).booleanValue() && zzS != null) {
                if (zzI != null && zzI.zzf(parse)) {
                    parse = zzS.zza(parse, zzcfbVar.getContext(), zzcfbVar.zzF(), zzcfbVar.zzi());
                }
            } else if (zzI != null && zzI.zzf(parse)) {
                parse = zzI.zza(parse, zzcfbVar.getContext(), zzcfbVar.zzF(), zzcfbVar.zzi());
            }
        } catch (zzavm unused) {
            String concat = "Unable to append parameter to URL: ".concat(str);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(concat);
        }
        Map hashMap = new HashMap();
        if (zzcfbVar.zzD() != null) {
            hashMap = zzcfbVar.zzD().zzaw;
        }
        final String zzb2 = zzbyl.zzb(parse, zzcfbVar.getContext(), hashMap);
        long longValue = ((Long) zzbeu.zze.zze()).longValue();
        if (longValue > 0 && longValue <= 251815200) {
            zzgcp zzw2 = zzgcp.zzw(zzcfbVar.zzT());
            zzfur zzfurVar = new zzfur() { // from class: com.google.android.gms.internal.ads.zzbiq
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    zzbjw zzbjwVar = zzbjv.zza;
                    if (((Boolean) zzbeu.zzi.zze()).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "prepareClickUrl.attestation1");
                        return "failure_click_attok";
                    }
                    return "failure_click_attok";
                }
            };
            zzgdj zzgdjVar = zzcaa.zzg;
            return (zzgcp) zzgcy.zze((zzgcp) zzgcy.zzm((zzgcp) zzgcy.zze(zzw2, Throwable.class, zzfurVar, zzgdjVar), new zzfur() { // from class: com.google.android.gms.internal.ads.zzbir
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    String str2 = (String) obj;
                    zzbjw zzbjwVar = zzbjv.zza;
                    String str3 = zzb2;
                    if (str2 != null) {
                        if (((Boolean) zzbeu.zzf.zze()).booleanValue()) {
                            String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                            String host = Uri.parse(str3).getHost();
                            for (int i2 = 0; i2 < 3; i2++) {
                                if (!host.endsWith(strArr[i2])) {
                                }
                            }
                        }
                        String str4 = (String) zzbeu.zza.zze();
                        String str5 = (String) zzbeu.zzb.zze();
                        if (!TextUtils.isEmpty(str4)) {
                            str3 = str3.replace(str4, str2);
                        }
                        if (!TextUtils.isEmpty(str5)) {
                            Uri parse2 = Uri.parse(str3);
                            if (TextUtils.isEmpty(parse2.getQueryParameter(str5))) {
                                return parse2.buildUpon().appendQueryParameter(str5, str2).toString();
                            }
                        }
                    }
                    return str3;
                }
            }, zzgdjVar), Throwable.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzbis
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    zzbjw zzbjwVar = zzbjv.zza;
                    if (((Boolean) zzbeu.zzi.zze()).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "prepareClickUrl.attestation2");
                    }
                    return zzb2;
                }
            }, zzgdjVar);
        }
        return zzgcy.zzh(zzb2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:10|11|12|(12:51|52|53|(10:17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(2:31|(1:33)))|34|35|36|(1:38)(1:47)|39|40|42|43)(1:14)|15|(0)|34|35|36|(0)(0)|39|40|42|43|8) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d3, code lost:
        com.google.android.gms.ads.internal.zzv.zzp().zzw(r0, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e8, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e9, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error constructing openable urls response.", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zzb(com.google.android.gms.internal.ads.zzcgi r17, java.util.Map r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjv.zzb(com.google.android.gms.internal.ads.zzcgi, java.util.Map):void");
    }

    public static void zzc(Map map, zzddy zzddyVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkZ)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && zzddyVar != null) {
            zzddyVar.zzdf();
        }
    }
}
