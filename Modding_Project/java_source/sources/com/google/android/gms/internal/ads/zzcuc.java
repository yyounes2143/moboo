package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcuc implements zzcyv, zzdek {
    private final Context zza;
    private final zzfcp zzb;
    private final VersionInfoParcel zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzduh zze;
    private final zzfhq zzf;
    private final zzdvc zzg;

    public zzcuc(Context context, zzfcp zzfcpVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.util.zzg zzgVar, zzduh zzduhVar, zzfhq zzfhqVar, zzdvc zzdvcVar) {
        this.zza = context;
        this.zzb = zzfcpVar;
        this.zzc = versionInfoParcel;
        this.zzd = zzgVar;
        this.zze = zzduhVar;
        this.zzf = zzfhqVar;
        this.zzg = zzdvcVar;
    }

    private final void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzel)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzd;
            Context context = this.zza;
            VersionInfoParcel versionInfoParcel = this.zzc;
            zzfcp zzfcpVar = this.zzb;
            zzfhq zzfhqVar = this.zzf;
            zzdvc zzdvcVar = this.zzg;
            com.google.android.gms.ads.internal.zzv.zza().zze(context, versionInfoParcel, zzfcpVar.zzf, zzgVar.zzg(), zzfhqVar, zzdvcVar.zzq());
        }
        this.zze.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
        zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zze(@Nullable com.google.android.gms.ads.nonagon.signalgeneration.zzbk zzbkVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzem)).booleanValue()) {
            zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zzf(@Nullable String str) {
    }
}
