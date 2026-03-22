package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhc implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;

    public zzdhc(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar5;
        this.zzf = zzhgeVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcva zza = ((zzcvl) this.zzb).zza();
        zzdbr zza2 = ((zzdcm) this.zzc).zza();
        zzdgr zza3 = ((zzdgt) this.zzd).zza();
        zzcyq zzb = ((zzcoo) this.zze).zzb();
        zzegu zzeguVar = (zzegu) this.zzf.zzb();
        zzcpt zzd = ((zzchb) this.zza.zzb()).zzd();
        zzd.zzi(zza.zzl());
        zzd.zzf(zza2);
        zzd.zzd(zza3);
        zzd.zze(new zzeja(null));
        zzd.zzg(new zzcqp(zzb, null));
        zzd.zzc(new zzcom(null));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdU)).booleanValue()) {
            zzd.zzj(zzehd.zzb(zzeguVar));
        }
        zzcra zzb2 = zzd.zzk().zzb();
        zzhgd.zzb(zzb2);
        return zzb2;
    }
}
