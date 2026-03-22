package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzdnf implements com.google.android.gms.ads.internal.client.zza, zzbim, com.google.android.gms.ads.internal.overlay.zzr, zzbio, com.google.android.gms.ads.internal.overlay.zzad {
    private com.google.android.gms.ads.internal.client.zza zza;
    private zzbim zzb;
    private com.google.android.gms.ads.internal.overlay.zzr zzc;
    private zzbio zzd;
    private com.google.android.gms.ads.internal.overlay.zzad zze;

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zza;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbim
    public final synchronized void zza(String str, Bundle bundle) {
        zzbim zzbimVar = this.zzb;
        if (zzbimVar != null) {
            zzbimVar.zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbio
    public final synchronized void zzb(String str, @Nullable String str2) {
        zzbio zzbioVar = this.zzd;
        if (zzbioVar != null) {
            zzbioVar.zzb(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdH() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdH();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdk() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdk();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzds() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzds();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdt() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdt();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdv() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdv();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw(int i) {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdw(i);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzad
    public final synchronized void zzg() {
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zze;
        if (zzadVar != null) {
            zzadVar.zzg();
        }
    }

    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zza zzaVar, zzbim zzbimVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbio zzbioVar, com.google.android.gms.ads.internal.overlay.zzad zzadVar) {
        this.zza = zzaVar;
        this.zzb = zzbimVar;
        this.zzc = zzrVar;
        this.zzd = zzbioVar;
        this.zze = zzadVar;
    }
}
