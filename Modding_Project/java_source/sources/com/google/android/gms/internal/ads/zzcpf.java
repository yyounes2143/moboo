package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcpf implements zzhfv {
    private final zzcow zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;

    public zzcpf(zzcow zzcowVar, zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzcowVar;
        this.zzb = zzhgeVar;
        this.zzc = zzhgeVar2;
        this.zzd = zzhgeVar3;
        this.zze = zzhgeVar4;
    }

    public static zzddq zza(zzcow zzcowVar, final Context context, final VersionInfoParcel versionInfoParcel, final zzfbu zzfbuVar, final zzfcp zzfcpVar) {
        return new zzddq(new zzcxh() { // from class: com.google.android.gms.internal.ads.zzcou
            @Override // com.google.android.gms.internal.ads.zzcxh
            public final void zzt() {
                com.google.android.gms.ads.internal.util.zzay zzu = com.google.android.gms.ads.internal.zzv.zzu();
                Context context2 = context;
                zzfcp zzfcpVar2 = zzfcpVar;
                zzu.zzn(context2, versionInfoParcel.afmaVersion, zzfbuVar.zzC.toString(), zzfcpVar2.zzf);
            }
        }, zzcaa.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        VersionInfoParcel zza = ((zzchw) this.zzc).zza();
        zzfbu zza2 = ((zzcro) this.zzd).zza();
        zzfcp zza3 = ((zzcvk) this.zze).zza();
        return zza(this.zza, (Context) this.zzb.zzb(), zza, zza2, zza3);
    }
}
