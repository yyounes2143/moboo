package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzxy extends zzyj implements Comparable {
    private final int zze;
    private final boolean zzf;
    @Nullable
    private final String zzg;
    private final zzyc zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final boolean zzw;

    /* JADX WARN: Removed duplicated region for block: B:118:0x011f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0144 A[EDGE_INSN: B:120:0x0144->B:86:0x0144 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0104 A[LOOP:1: B:66:0x0101->B:68:0x0104, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxy(int r14, com.google.android.gms.internal.ads.zzbm r15, int r16, com.google.android.gms.internal.ads.zzyc r17, int r18, boolean r19, com.google.android.gms.internal.ads.zzfvd r20, int r21) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxy.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyc, int, boolean, com.google.android.gms.internal.ads.zzfvd, int):void");
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzxy zzxyVar) {
        zzfzn zzfznVar;
        zzfzn zza;
        boolean z = this.zzf;
        if (!z || !this.zzi) {
            zzfznVar = zzyo.zzc;
            zza = zzfznVar.zza();
        } else {
            zza = zzyo.zzc;
        }
        zzfxr zzc = zzfxr.zzj().zzd(this.zzi, zzxyVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzxyVar.zzk), zzfzn.zzc().zza()).zzb(this.zzj, zzxyVar.zzj).zzb(this.zzl, zzxyVar.zzl).zzd(this.zzp, zzxyVar.zzp).zzd(this.zzm, zzxyVar.zzm).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzxyVar.zzn), zzfzn.zzc().zza()).zzb(this.zzo, zzxyVar.zzo).zzd(z, zzxyVar.zzf).zzc(Integer.valueOf(this.zzt), Integer.valueOf(zzxyVar.zzt), zzfzn.zzc().zza());
        boolean z2 = this.zzh.zzB;
        zzfxr zzc2 = zzc.zzd(this.zzu, zzxyVar.zzu).zzd(this.zzv, zzxyVar.zzv).zzd(this.zzw, zzxyVar.zzw).zzc(Integer.valueOf(this.zzq), Integer.valueOf(zzxyVar.zzq), zza).zzc(Integer.valueOf(this.zzr), Integer.valueOf(zzxyVar.zzr), zza);
        if (Objects.equals(this.zzg, zzxyVar.zzg)) {
            zzc2 = zzc2.zzc(Integer.valueOf(this.zzs), Integer.valueOf(zzxyVar.zzs), zza);
        }
        return zzc2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final /* bridge */ /* synthetic */ boolean zzc(zzyj zzyjVar) {
        String str;
        int i;
        zzxy zzxyVar = (zzxy) zzyjVar;
        boolean z = this.zzh.zzN;
        zzz zzzVar = this.zzd;
        int i2 = zzzVar.zzE;
        if (i2 != -1) {
            zzz zzzVar2 = zzxyVar.zzd;
            if (i2 == zzzVar2.zzE && (str = zzzVar.zzo) != null && TextUtils.equals(str, zzzVar2.zzo) && (i = zzzVar.zzF) != -1 && i == zzzVar2.zzF && this.zzu == zzxyVar.zzu && this.zzv == zzxyVar.zzv) {
                return true;
            }
            return false;
        }
        return false;
    }
}
