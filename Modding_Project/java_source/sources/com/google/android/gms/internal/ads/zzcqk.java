package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqk implements zzcxh, zzcwn {
    private final Context zza;
    @Nullable
    private final zzcfb zzb;
    private final zzfbu zzc;
    private final VersionInfoParcel zzd;
    @Nullable
    private zzeda zze;
    private boolean zzf;
    private final zzecy zzg;

    public zzcqk(Context context, @Nullable zzcfb zzcfbVar, zzfbu zzfbuVar, VersionInfoParcel versionInfoParcel, zzecy zzecyVar) {
        this.zza = context;
        this.zzb = zzcfbVar;
        this.zzc = zzfbuVar;
        this.zzd = versionInfoParcel;
        this.zzg = zzecyVar;
    }

    private final synchronized void zza() {
        zzcfb zzcfbVar;
        zzecx zzecxVar;
        zzecx zzecxVar2;
        zzecw zzecwVar;
        try {
            zzfbu zzfbuVar = this.zzc;
            if (zzfbuVar.zzT && (zzcfbVar = this.zzb) != null) {
                if (com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zza)) {
                    VersionInfoParcel versionInfoParcel = this.zzd;
                    String str = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                    zzfcs zzfcsVar = zzfbuVar.zzV;
                    String zza = zzfcsVar.zza();
                    if (zzfcsVar.zzc() == 1) {
                        zzecwVar = zzecw.VIDEO;
                        zzecxVar2 = zzecx.DEFINED_BY_JAVASCRIPT;
                    } else {
                        int i = zzfbuVar.zze;
                        zzecw zzecwVar2 = zzecw.HTML_DISPLAY;
                        if (i == 1) {
                            zzecxVar = zzecx.ONE_PIXEL;
                        } else {
                            zzecxVar = zzecx.BEGIN_TO_RENDER;
                        }
                        zzecxVar2 = zzecxVar;
                        zzecwVar = zzecwVar2;
                    }
                    zzeda zza2 = com.google.android.gms.ads.internal.zzv.zzC().zza(str, zzcfbVar.zzG(), "", "javascript", zza, zzecxVar2, zzecwVar, zzfbuVar.zzal);
                    this.zze = zza2;
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
                        zzcfbVar.zzat(this.zze);
                        com.google.android.gms.ads.internal.zzv.zzC().zzk(zza3);
                        this.zzf = true;
                        zzcfbVar.zzd("onSdkLoaded", new ArrayMap());
                    }
                }
            }
        } finally {
        }
    }

    private final boolean zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && this.zzg.zzd()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final synchronized void zzs() {
        zzcfb zzcfbVar;
        if (zzb()) {
            this.zzg.zzb();
            return;
        }
        if (!this.zzf) {
            zza();
        }
        if (this.zzc.zzT && this.zze != null && (zzcfbVar = this.zzb) != null) {
            zzcfbVar.zzd("onSdkImpression", new ArrayMap());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzt() {
        if (zzb()) {
            this.zzg.zzc();
        } else if (this.zzf) {
        } else {
            zza();
        }
    }
}
