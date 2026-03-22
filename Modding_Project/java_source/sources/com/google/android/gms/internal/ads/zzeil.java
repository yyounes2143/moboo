package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeil implements zzcxc {
    boolean zza = false;
    final /* synthetic */ zzedi zzb;
    final /* synthetic */ zzcaf zzc;

    public zzeil(zzeim zzeimVar, zzedi zzediVar, zzcaf zzcafVar) {
        this.zzb = zzediVar;
        this.zzc = zzcafVar;
    }

    private final synchronized void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfL)).booleanValue()) {
            i = 3;
        }
        this.zzc.zzd(new zzedj(i, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final synchronized void zza(int i) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(new com.google.android.gms.ads.internal.client.zze(i, zzeim.zze(this.zzb.zza, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final synchronized void zzb(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final synchronized void zzc(int i, @Nullable String str) {
        try {
            if (this.zza) {
                return;
            }
            this.zza = true;
            if (str == null) {
                str = zzeim.zze(this.zzb.zza, i);
            }
            zze(new com.google.android.gms.ads.internal.client.zze(i, str, AdError.UNDEFINED_DOMAIN, null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final synchronized void zzd() {
        this.zzc.zzc(null);
    }
}
