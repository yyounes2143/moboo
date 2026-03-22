package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzezn implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzezn(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzezl zzb() {
        zzbzh zzh;
        Context context = (Context) this.zza.zzb();
        zzfdy zzfdyVar = (zzfdy) this.zzb.zzb();
        zzfeq zzfeqVar = (zzfeq) this.zzc.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgx)).booleanValue()) {
            zzh = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg();
        } else {
            zzh = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzh();
        }
        boolean z = false;
        if (zzh != null && zzh.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgN)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgw)).booleanValue() || z) {
                zzfep zza = zzfeqVar.zza(zzfeg.AppOpen, context, zzfdyVar, new zzeyp(new zzeym()));
                zzezb zzezbVar = new zzezb(new zzeza());
                zzfec zzfecVar = zza.zza;
                zzgdj zzgdjVar = zzcaa.zza;
                return new zzeyr(zzezbVar, new zzeyx(zzfecVar, zzgdjVar), zza.zzb, zzfecVar.zza().zzf, zzgdjVar);
            }
        }
        return new zzeza();
    }
}
