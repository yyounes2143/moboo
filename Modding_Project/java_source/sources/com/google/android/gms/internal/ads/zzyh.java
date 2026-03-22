package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzyh extends zzyj implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    public zzyh(int i, zzbm zzbmVar, int i2, zzyc zzycVar, int i3, @Nullable String str, @Nullable String str2) {
        super(i, zzbmVar, i2);
        boolean z;
        boolean z2;
        zzfyc zzfycVar;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        boolean z5;
        int i6 = 0;
        this.zzf = zzlw.zza(i3, false);
        int i7 = this.zzd.zze;
        int i8 = zzycVar.zzy;
        if (1 != (i7 & 1)) {
            z = false;
        } else {
            z = true;
        }
        this.zzg = z;
        if ((i7 & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzh = z2;
        if (str2 != null) {
            zzfycVar = zzfyc.zzo(str2);
        } else if (zzycVar.zzv.isEmpty()) {
            zzfycVar = zzfyc.zzo("");
        } else {
            zzfycVar = zzycVar.zzv;
        }
        int i9 = 0;
        while (true) {
            if (i9 < zzfycVar.size()) {
                i4 = zzyo.zzc(this.zzd, (String) zzfycVar.get(i9), false);
                if (i4 > 0) {
                    break;
                }
                i9++;
            } else {
                i9 = Integer.MAX_VALUE;
                i4 = 0;
                break;
            }
        }
        this.zzi = i9;
        this.zzj = i4;
        if (str2 != null) {
            i5 = 1088;
        } else {
            i5 = 0;
        }
        int zzb = zzyo.zzb(this.zzd.zzf, i5);
        this.zzk = zzb;
        if ((1088 & this.zzd.zzf) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.zzm = z3;
        if (zzyo.zzh(str) == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        int zzc = zzyo.zzc(this.zzd, str, z4);
        this.zzl = zzc;
        if (i4 > 0 || ((zzycVar.zzv.isEmpty() && zzb > 0) || this.zzg || (this.zzh && zzc > 0))) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (zzlw.zza(i3, zzycVar.zzR) && z5) {
            i6 = 1;
        }
        this.zze = i6;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzyh zzyhVar) {
        zzfzn zza;
        zzfxr zzc = zzfxr.zzj().zzd(this.zzf, zzyhVar.zzf).zzc(Integer.valueOf(this.zzi), Integer.valueOf(zzyhVar.zzi), zzfzn.zzc().zza());
        int i = this.zzj;
        zzfxr zzb = zzc.zzb(i, zzyhVar.zzj);
        int i2 = this.zzk;
        zzfxr zzd = zzb.zzb(i2, zzyhVar.zzk).zzd(this.zzg, zzyhVar.zzg);
        Boolean valueOf = Boolean.valueOf(this.zzh);
        Boolean valueOf2 = Boolean.valueOf(zzyhVar.zzh);
        if (i == 0) {
            zza = zzfzn.zzc();
        } else {
            zza = zzfzn.zzc().zza();
        }
        zzfxr zzb2 = zzd.zzc(valueOf, valueOf2, zza).zzb(this.zzl, zzyhVar.zzl);
        if (i2 == 0) {
            zzb2 = zzb2.zze(this.zzm, zzyhVar.zzm);
        }
        return zzb2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final /* bridge */ /* synthetic */ boolean zzc(zzyj zzyjVar) {
        zzyh zzyhVar = (zzyh) zzyjVar;
        return false;
    }
}
