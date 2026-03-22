package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefc implements zzdgi {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final ListenableFuture zzc;
    private final zzfbu zzd;
    private final zzcfb zze;
    private final zzfcp zzf;
    private final zzbjz zzg;
    private final boolean zzh;
    private final zzece zzi;
    private final zzdsd zzj;

    public zzefc(Context context, VersionInfoParcel versionInfoParcel, ListenableFuture listenableFuture, zzfbu zzfbuVar, zzcfb zzcfbVar, zzfcp zzfcpVar, boolean z, zzbjz zzbjzVar, zzece zzeceVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = listenableFuture;
        this.zzd = zzfbuVar;
        this.zze = zzcfbVar;
        this.zzf = zzfcpVar;
        this.zzg = zzbjzVar;
        this.zzh = z;
        this.zzi = zzeceVar;
        this.zzj = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, zzcwg zzcwgVar) {
        boolean z2;
        float f;
        zzece zzeceVar;
        zzdex zzdexVar = (zzdex) zzgcy.zzq(this.zzc);
        zzcfb zzcfbVar = this.zze;
        zzcfbVar.zzaq(true);
        boolean z3 = this.zzh;
        boolean z4 = false;
        if (z3) {
            z2 = this.zzg.zze(false);
        } else {
            z2 = false;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(this.zza);
        if (z3) {
            z4 = this.zzg.zzd();
        }
        boolean z5 = z4;
        if (z3) {
            f = this.zzg.zza();
        } else {
            f = 0.0f;
        }
        float f2 = f;
        zzfbu zzfbuVar = this.zzd;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z2, zzJ, z5, f2, -1, z, zzfbuVar.zzO, false);
        if (zzcwgVar != null) {
            zzcwgVar.zzf();
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        zzdfx zzh = zzdexVar.zzh();
        int i = zzfbuVar.zzQ;
        VersionInfoParcel versionInfoParcel = this.zzb;
        String str = zzfbuVar.zzB;
        zzfbz zzfbzVar = zzfbuVar.zzs;
        String str2 = zzfbzVar.zzb;
        String str3 = zzfbzVar.zza;
        zzfcp zzfcpVar = this.zzf;
        if (zzfbuVar.zzb()) {
            zzeceVar = this.zzi;
        } else {
            zzeceVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzh, null, zzcfbVar, i, versionInfoParcel, str, zzlVar, str2, str3, zzfcpVar.zzf, zzcwgVar, zzeceVar, zzcfbVar.zzr()), true, this.zzj);
    }
}
