package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzym extends zzyj {
    private final boolean zze;
    private final zzyc zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final boolean zzs;
    private final boolean zzt;
    private final int zzu;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x00fb A[EDGE_INSN: B:290:0x00fb->B:225:0x00fb ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzym(int r5, com.google.android.gms.internal.ads.zzbm r6, int r7, com.google.android.gms.internal.ads.zzyc r8, int r9, @androidx.annotation.Nullable java.lang.String r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzym.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyc, int, java.lang.String, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzym zzymVar, zzym zzymVar2) {
        zzfzn zzfznVar;
        zzfzn zza;
        if (!zzymVar.zze || !zzymVar.zzh) {
            zzfznVar = zzyo.zzc;
            zza = zzfznVar.zza();
        } else {
            zza = zzyo.zzc;
        }
        zzfxr zzj = zzfxr.zzj();
        boolean z = zzymVar.zzf.zzB;
        return zzj.zzc(Integer.valueOf(zzymVar.zzk), Integer.valueOf(zzymVar2.zzk), zza).zzc(Integer.valueOf(zzymVar.zzj), Integer.valueOf(zzymVar2.zzj), zza).zza();
    }

    public static /* synthetic */ int zzd(zzym zzymVar, zzym zzymVar2) {
        zzfxr zzc = zzfxr.zzj().zzd(zzymVar.zzh, zzymVar2.zzh).zzc(Integer.valueOf(zzymVar.zzm), Integer.valueOf(zzymVar2.zzm), zzfzn.zzc().zza()).zzb(zzymVar.zzn, zzymVar2.zzn).zzb(zzymVar.zzo, zzymVar2.zzo).zzd(zzymVar.zzp, zzymVar2.zzp).zzb(zzymVar.zzq, zzymVar2.zzq).zzd(zzymVar.zzi, zzymVar2.zzi).zzd(zzymVar.zze, zzymVar2.zze).zzd(zzymVar.zzg, zzymVar2.zzg).zzc(Integer.valueOf(zzymVar.zzl), Integer.valueOf(zzymVar2.zzl), zzfzn.zzc().zza());
        boolean z = zzymVar.zzs;
        zzfxr zzd = zzc.zzd(z, zzymVar2.zzs);
        boolean z2 = zzymVar.zzt;
        zzfxr zzd2 = zzd.zzd(z2, zzymVar2.zzt);
        if (z && z2) {
            zzd2 = zzd2.zzb(zzymVar.zzu, zzymVar2.zzu);
        }
        return zzd2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final int zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final /* bridge */ /* synthetic */ boolean zzc(zzyj zzyjVar) {
        zzym zzymVar = (zzym) zzyjVar;
        if (Objects.equals(this.zzd.zzo, zzymVar.zzd.zzo)) {
            boolean z = this.zzf.zzJ;
            if (this.zzs == zzymVar.zzs && this.zzt == zzymVar.zzt) {
                return true;
            }
            return false;
        }
        return false;
    }
}
