package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzefg implements zzdgi {
    final /* synthetic */ zzedi zza;
    final /* synthetic */ zzfbu zzb;
    final /* synthetic */ zzefh zzc;

    public zzefg(zzefh zzefhVar, zzedi zzediVar, zzfbu zzfbuVar) {
        this.zza = zzediVar;
        this.zzb = zzfbuVar;
        this.zzc = zzefhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, @Nullable zzcwg zzcwgVar) throws zzdgh {
        VersionInfoParcel versionInfoParcel;
        try {
            zzfdn zzfdnVar = (zzfdn) this.zza.zzb;
            zzfdnVar.zzv(z);
            versionInfoParcel = this.zzc.zzc;
            if (versionInfoParcel.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaW)).intValue()) {
                zzfdnVar.zzx();
            } else {
                zzfdnVar.zzy(context);
            }
        } catch (zzfcw e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot show interstitial.");
            throw new zzdgh(e.getCause());
        }
    }
}
