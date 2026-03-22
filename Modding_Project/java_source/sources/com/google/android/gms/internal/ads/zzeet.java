package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeet implements zzdgi {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzfbu zzb;
    final /* synthetic */ zzeeu zzc;

    public zzeet(zzeeu zzeeuVar, zzcaf zzcafVar, zzfbu zzfbuVar) {
        this.zza = zzcafVar;
        this.zzb = zzfbuVar;
        this.zzc = zzeeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, @Nullable zzcwg zzcwgVar) {
        zzdsd zzdsdVar;
        try {
            com.google.android.gms.ads.internal.zzv.zzj();
            zzdsdVar = this.zzc.zze;
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, (AdOverlayInfoParcel) this.zza.get(), true, zzdsdVar);
        } catch (Exception unused) {
        }
    }
}
