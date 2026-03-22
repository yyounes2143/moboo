package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehw implements zzdgi {
    private final Context zza;
    private final zzdpd zzb;
    private final zzfcp zzc;
    private final VersionInfoParcel zzd;
    private final zzfbu zze;
    private final ListenableFuture zzf;
    private final zzcfb zzg;
    private final zzbjz zzh;
    private final boolean zzi;
    private final zzece zzj;
    private final zzdrx zzk;
    private final zzdsd zzl;

    public zzehw(Context context, zzdpd zzdpdVar, zzfcp zzfcpVar, VersionInfoParcel versionInfoParcel, zzfbu zzfbuVar, ListenableFuture listenableFuture, zzcfb zzcfbVar, zzbjz zzbjzVar, boolean z, zzece zzeceVar, zzdrx zzdrxVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = zzdpdVar;
        this.zzc = zzfcpVar;
        this.zzd = versionInfoParcel;
        this.zze = zzfbuVar;
        this.zzf = listenableFuture;
        this.zzg = zzcfbVar;
        this.zzh = zzbjzVar;
        this.zzi = z;
        this.zzj = zzeceVar;
        this.zzk = zzdrxVar;
        this.zzl = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, zzcwg zzcwgVar) {
        zzbjz zzbjzVar;
        boolean z2;
        float f;
        zzece zzeceVar;
        zzdoi zzdoiVar = (zzdoi) zzgcy.zzq(this.zzf);
        try {
            zzfbu zzfbuVar = this.zze;
            final zzcfb zzcfbVar = this.zzg;
            if (zzcfbVar.zzaG()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbb)).booleanValue()) {
                    zzcfbVar = this.zzb.zza(this.zzc.zze, null, null);
                    zzbko.zzb(zzcfbVar, zzdoiVar.zzg());
                    final zzdph zzdphVar = new zzdph();
                    zzdphVar.zza(this.zza, zzcfbVar.zzF());
                    zzdpc zzl = zzdoiVar.zzl();
                    if (this.zzi) {
                        zzbjzVar = this.zzh;
                    } else {
                        zzbjzVar = null;
                    }
                    zzl.zzi(zzcfbVar, true, zzbjzVar, this.zzk.zza());
                    zzcfbVar.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzehu
                        @Override // com.google.android.gms.internal.ads.zzcgr
                        public final void zza(boolean z3, int i, String str, String str2) {
                            zzdph.this.zzb();
                            zzcfb zzcfbVar2 = zzcfbVar;
                            zzcfbVar2.zzab();
                            zzcfbVar2.zzN().zzs();
                        }
                    });
                    zzcfbVar.zzN().zzK(new zzcgs() { // from class: com.google.android.gms.internal.ads.zzehv
                        @Override // com.google.android.gms.internal.ads.zzcgs
                        public final void zza() {
                            zzcfb.this.zzaa();
                        }
                    });
                    zzfbz zzfbzVar = zzfbuVar.zzs;
                    zzcfbVar.zzae(zzfbzVar.zzb, zzfbzVar.zza, null);
                }
            }
            zzcfb zzcfbVar2 = zzcfbVar;
            zzcfbVar2.zzaq(true);
            boolean z3 = this.zzi;
            boolean z4 = false;
            if (z3) {
                z2 = this.zzh.zze(false);
            } else {
                z2 = false;
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(this.zza);
            if (z3) {
                z4 = this.zzh.zzd();
            }
            if (z3) {
                f = this.zzh.zza();
            } else {
                f = 0.0f;
            }
            float f2 = f;
            zzfbu zzfbuVar2 = this.zze;
            com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z2, zzJ, z4, f2, -1, z, zzfbuVar2.zzO, zzfbuVar2.zzP);
            if (zzcwgVar != null) {
                zzcwgVar.zzf();
            }
            com.google.android.gms.ads.internal.zzv.zzj();
            zzdfx zzh = zzdoiVar.zzh();
            int i = zzfbuVar2.zzQ;
            VersionInfoParcel versionInfoParcel = this.zzd;
            String str = zzfbuVar2.zzB;
            zzfbz zzfbzVar2 = zzfbuVar2.zzs;
            String str2 = zzfbzVar2.zzb;
            String str3 = zzfbzVar2.zza;
            zzfcp zzfcpVar = this.zzc;
            if (zzfbuVar2.zzb()) {
                zzeceVar = this.zzj;
            } else {
                zzeceVar = null;
            }
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzh, null, zzcfbVar2, i, versionInfoParcel, str, zzlVar, str2, str3, zzfcpVar.zzf, zzcwgVar, zzeceVar, zzcfbVar2.zzr()), true, this.zzl);
        } catch (zzcfn e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
        }
    }
}
