package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdfh implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;

    public zzdfh(zzdfa zzdfaVar, zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zza.zzb();
        final VersionInfoParcel zza = ((zzchw) this.zzb).zza();
        final zzfbu zza2 = ((zzcro) this.zzc).zza();
        final zzfcp zza3 = ((zzcvk) this.zzd).zza();
        return new zzddq(new zzcxh() { // from class: com.google.android.gms.internal.ads.zzdey
            @Override // com.google.android.gms.internal.ads.zzcxh
            public final void zzt() {
                com.google.android.gms.ads.internal.util.zzay zzu = com.google.android.gms.ads.internal.zzv.zzu();
                Context context2 = context;
                zzfcp zzfcpVar = zza3;
                zzu.zzn(context2, zza.afmaVersion, zza2.zzC.toString(), zzfcpVar.zzf);
            }
        }, zzcaa.zzg);
    }
}
