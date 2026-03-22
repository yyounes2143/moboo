package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzecy {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final zzfbu zzc;
    @Nullable
    private final zzcfb zzd;
    private final zzdsd zze;
    @Nullable
    private zzflm zzf;

    public zzecy(Context context, VersionInfoParcel versionInfoParcel, zzfbu zzfbuVar, @Nullable zzcfb zzcfbVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = zzfbuVar;
        this.zzd = zzcfbVar;
        this.zze = zzdsdVar;
    }

    public final synchronized void zza(View view) {
        zzflm zzflmVar = this.zzf;
        if (zzflmVar != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzh(zzflmVar, view);
        }
    }

    public final synchronized void zzb() {
        zzcfb zzcfbVar;
        if (this.zzf != null && (zzcfbVar = this.zzd) != null) {
            zzcfbVar.zzd("onSdkImpression", zzfyf.zzd());
        }
    }

    public final synchronized void zzc() {
        zzcfb zzcfbVar;
        try {
            zzflm zzflmVar = this.zzf;
            if (zzflmVar != null && (zzcfbVar = this.zzd) != null) {
                for (View view : zzcfbVar.zzV()) {
                    com.google.android.gms.ads.internal.zzv.zzC().zzh(zzflmVar, view);
                }
                zzcfbVar.zzd("onSdkLoaded", zzfyf.zzd());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean zzd() {
        if (this.zzf != null) {
            return true;
        }
        return false;
    }

    public final synchronized boolean zze(boolean z) {
        zzcfb zzcfbVar;
        String str;
        zzfbu zzfbuVar = this.zzc;
        if (zzfbuVar.zzT) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfw)).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && (zzcfbVar = this.zzd) != null) {
                    if (this.zzf != null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid javascript session service already started for ad.");
                        return false;
                    } else if (!com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zza)) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to initialize omid.");
                        return false;
                    } else if (zzfbuVar.zzV.zzb()) {
                        zzflm zze = com.google.android.gms.ads.internal.zzv.zzC().zze(this.zzb, zzcfbVar.zzG(), true);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfA)).booleanValue()) {
                            zzdsd zzdsdVar = this.zze;
                            if (zze != null) {
                                str = "1";
                            } else {
                                str = "0";
                            }
                            zzdsc zza = zzdsdVar.zza();
                            zza.zzb("omid_js_session_success", str);
                            zza.zzj();
                        }
                        if (zze == null) {
                            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to create javascript session service.");
                            return false;
                        }
                        int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Created omid javascript session service.");
                        this.zzf = zze;
                        zzcfbVar.zzas(this);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final synchronized void zzf(zzcfs zzcfsVar) {
        zzcfb zzcfbVar;
        zzflm zzflmVar = this.zzf;
        if (zzflmVar != null && (zzcfbVar = this.zzd) != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzm(zzflmVar, zzcfsVar);
            this.zzf = null;
            zzcfbVar.zzas(null);
        }
    }
}
