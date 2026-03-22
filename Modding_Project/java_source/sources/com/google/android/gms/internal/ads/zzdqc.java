package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbca;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdqc implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;

    public zzdqc(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        int i;
        Context zza = ((zzchi) this.zza).zza();
        final String zzb = ((zzdxa) this.zzb).zzb();
        VersionInfoParcel zza2 = ((zzchw) this.zzc).zza();
        final zzbca.zza.EnumC0040zza enumC0040zza = (zzbca.zza.EnumC0040zza) this.zzd.zzb();
        final String str = (String) this.zze.zzb();
        zzbbt zzbbtVar = new zzbbt(new zzbbz(zza));
        zzbca.zzar.zza zzd = zzbca.zzar.zzd();
        zzd.zzg(zza2.buddyApkVersion);
        zzd.zzi(zza2.clientJarVersion);
        if (true != zza2.isClientJar) {
            i = 2;
        } else {
            i = 0;
        }
        zzd.zzh(i);
        final zzbca.zzar zzbr = zzd.zzbr();
        zzbbtVar.zzb(new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdqb
            @Override // com.google.android.gms.internal.ads.zzbbs
            public final void zza(zzbca.zzt.zza zzaVar) {
                zzbca.zza.zzb zzbM = zzaVar.zze().zzbM();
                zzbM.zzH(zzbca.zza.EnumC0040zza.this);
                zzaVar.zzG(zzbM);
                zzbca.zzm.zza zzbM2 = zzaVar.zzg().zzbM();
                zzbM2.zzm(zzb);
                zzbM2.zzw(zzbr);
                zzaVar.zzK(zzbM2);
                zzaVar.zzO(str);
            }
        });
        return zzbbtVar;
    }
}
