package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdpd {
    private final Context zza;
    private final zzavl zzb;
    private final zzbec zzc;
    private final VersionInfoParcel zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbbt zzf;
    private final zzcyq zzg;
    private final zzece zzh;
    private final zzfct zzi;
    private final zzdsd zzj;

    public zzdpd(zzcfo zzcfoVar, Context context, zzavl zzavlVar, zzbec zzbecVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbbt zzbbtVar, zzcyq zzcyqVar, zzece zzeceVar, zzfct zzfctVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = zzavlVar;
        this.zzc = zzbecVar;
        this.zzd = versionInfoParcel;
        this.zze = zzaVar;
        this.zzf = zzbbtVar;
        this.zzg = zzcyqVar;
        this.zzh = zzeceVar;
        this.zzi = zzfctVar;
        this.zzj = zzdsdVar;
    }

    public final zzcfb zza(com.google.android.gms.ads.internal.client.zzr zzrVar, zzfbu zzfbuVar, zzfbx zzfbxVar) throws zzcfn {
        zzcgv zzc = zzcgv.zzc(zzrVar);
        String str = zzrVar.zza;
        zzdos zzdosVar = new zzdos(this);
        zzece zzeceVar = this.zzh;
        zzfct zzfctVar = this.zzi;
        zzdsd zzdsdVar = this.zzj;
        com.google.android.gms.ads.internal.zza zzaVar = this.zze;
        zzbbt zzbbtVar = this.zzf;
        return zzcfo.zza(this.zza, zzc, str, false, false, this.zzb, this.zzc, this.zzd, null, zzdosVar, zzaVar, zzbbtVar, zzfbuVar, zzfbxVar, zzeceVar, zzfctVar, zzdsdVar);
    }
}
