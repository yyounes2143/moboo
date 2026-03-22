package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdv {
    public final Object zza;
    private zzt zzb = new zzt();
    private boolean zzc;
    private boolean zzd;

    public zzdv(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdv.class == obj.getClass()) {
            return this.zza.equals(((zzdv) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(int i, zzdt zzdtVar) {
        if (!this.zzd) {
            if (i != -1) {
                this.zzb.zza(i);
            }
            this.zzc = true;
            zzdtVar.zza(this.zza);
        }
    }

    public final void zzb(zzdu zzduVar) {
        if (!this.zzd && this.zzc) {
            zzv zzb = this.zzb.zzb();
            this.zzb = new zzt();
            this.zzc = false;
            zzduVar.zza(this.zza, zzb);
        }
    }

    public final void zzc(zzdu zzduVar) {
        this.zzd = true;
        if (this.zzc) {
            this.zzc = false;
            zzduVar.zza(this.zza, this.zzb.zzb());
        }
    }
}
