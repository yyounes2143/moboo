package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdgj implements zzcxh, com.google.android.gms.ads.internal.overlay.zzr, zzcwn {
    @Nullable
    @VisibleForTesting
    zzeda zza;
    private final Context zzb;
    @Nullable
    private final zzcfb zzc;
    private final zzfbu zzd;
    private final VersionInfoParcel zze;
    private final zzecy zzf;

    public zzdgj(Context context, @Nullable zzcfb zzcfbVar, zzfbu zzfbuVar, VersionInfoParcel versionInfoParcel, zzecy zzecyVar) {
        this.zzb = context;
        this.zzc = zzcfbVar;
        this.zzd = zzfbuVar;
        this.zze = versionInfoParcel;
        this.zzf = zzecyVar;
    }

    private final boolean zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && this.zzf.zzd()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        zzcfb zzcfbVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfC)).booleanValue() && (zzcfbVar = this.zzc) != null) {
            if (this.zza != null || zzg()) {
                if (this.zza != null) {
                    zzcfbVar.zzd("onSdkImpression", new ArrayMap());
                } else {
                    this.zzf.zzb();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        zzcfb zzcfbVar;
        if (zzg()) {
            this.zzf.zzb();
        } else if (this.zza != null && (zzcfbVar = this.zzc) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfC)).booleanValue()) {
                zzcfbVar.zzd("onSdkImpression", new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        zzcfb zzcfbVar;
        zzecx zzecxVar;
        zzecx zzecxVar2;
        zzecw zzecwVar;
        zzfbu zzfbuVar = this.zzd;
        if (zzfbuVar.zzT && (zzcfbVar = this.zzc) != null) {
            if (com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zzb)) {
                if (zzg()) {
                    this.zzf.zzc();
                    return;
                }
                VersionInfoParcel versionInfoParcel = this.zze;
                String str = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                zzfcs zzfcsVar = zzfbuVar.zzV;
                String zza = zzfcsVar.zza();
                if (zzfcsVar.zzc() == 1) {
                    zzecwVar = zzecw.VIDEO;
                    zzecxVar2 = zzecx.DEFINED_BY_JAVASCRIPT;
                } else {
                    if (zzfbuVar.zzY == 2) {
                        zzecxVar = zzecx.UNSPECIFIED;
                    } else {
                        zzecxVar = zzecx.BEGIN_TO_RENDER;
                    }
                    zzecxVar2 = zzecxVar;
                    zzecwVar = zzecw.HTML_DISPLAY;
                }
                zzeda zza2 = com.google.android.gms.ads.internal.zzv.zzC().zza(str, zzcfbVar.zzG(), "", "javascript", zza, zzecxVar2, zzecwVar, zzfbuVar.zzal);
                this.zza = zza2;
                if (zza2 != null) {
                    zzflb zza3 = zza2.zza();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfy)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza3, zzcfbVar.zzG());
                        for (View view : zzcfbVar.zzV()) {
                            com.google.android.gms.ads.internal.zzv.zzC().zzg(zza3, view);
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza3, zzcfbVar.zzF());
                    }
                    zzcfbVar.zzat(this.zza);
                    com.google.android.gms.ads.internal.zzv.zzC().zzk(zza3);
                    zzcfbVar.zzd("onSdkLoaded", new ArrayMap());
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdH() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }
}
