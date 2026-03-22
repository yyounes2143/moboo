package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeds implements zzdgi {
    private final VersionInfoParcel zza;
    private final ListenableFuture zzb;
    private final zzfbu zzc;
    private final zzcfb zzd;
    private final zzfcp zze;
    private final zzbjz zzf;
    private final boolean zzg;
    private final zzece zzh;
    private final zzdsd zzi;

    public zzeds(VersionInfoParcel versionInfoParcel, ListenableFuture listenableFuture, zzfbu zzfbuVar, zzcfb zzcfbVar, zzfcp zzfcpVar, boolean z, zzbjz zzbjzVar, zzece zzeceVar, zzdsd zzdsdVar) {
        this.zza = versionInfoParcel;
        this.zzb = listenableFuture;
        this.zzc = zzfbuVar;
        this.zzd = zzcfbVar;
        this.zze = zzfcpVar;
        this.zzg = z;
        this.zzf = zzbjzVar;
        this.zzh = zzeceVar;
        this.zzi = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, zzcwg zzcwgVar) {
        boolean z2;
        boolean z3;
        float f;
        zzece zzeceVar;
        zzcoa zzcoaVar = (zzcoa) zzgcy.zzq(this.zzb);
        zzcfb zzcfbVar = this.zzd;
        zzcfbVar.zzaq(true);
        boolean z4 = this.zzg;
        if (z4) {
            z2 = this.zzf.zze(true);
        } else {
            z2 = true;
        }
        if (z4) {
            z3 = this.zzf.zzd();
        } else {
            z3 = false;
        }
        boolean z5 = z3;
        if (z4) {
            f = this.zzf.zza();
        } else {
            f = 0.0f;
        }
        float f2 = f;
        zzfbu zzfbuVar = this.zzc;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z2, true, z5, f2, -1, z, zzfbuVar.zzO, false);
        if (zzcwgVar != null) {
            zzcwgVar.zzf();
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        zzdfx zzg = zzcoaVar.zzg();
        int i = zzfbuVar.zzQ;
        if (i == -1) {
            com.google.android.gms.ads.internal.client.zzx zzxVar = this.zze.zzj;
            if (zzxVar != null) {
                int i2 = zzxVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error setting app open orientation; no targeting orientation available.");
        }
        VersionInfoParcel versionInfoParcel = this.zza;
        String str = zzfbuVar.zzB;
        zzfbz zzfbzVar = zzfbuVar.zzs;
        String str2 = zzfbzVar.zzb;
        String str3 = zzfbzVar.zza;
        zzfcp zzfcpVar = this.zze;
        if (zzfbuVar.zzb()) {
            zzeceVar = this.zzh;
        } else {
            zzeceVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzg, null, zzcfbVar, i, versionInfoParcel, str, zzlVar, str2, str3, zzfcpVar.zzf, zzcwgVar, zzeceVar, zzcfbVar.zzr()), true, this.zzi);
    }
}
