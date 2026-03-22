package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbzj extends com.google.android.gms.ads.internal.util.zzb {
    final /* synthetic */ zzbzn zza;

    public zzbzj(zzbzn zzbznVar) {
        this.zza = zzbznVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        VersionInfoParcel versionInfoParcel;
        Object obj;
        zzbda zzbdaVar;
        zzbzn zzbznVar = this.zza;
        context = zzbznVar.zze;
        versionInfoParcel = zzbznVar.zzf;
        zzbcy zzbcyVar = new zzbcy(context, versionInfoParcel.afmaVersion);
        obj = zzbznVar.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.zzv.zze();
                zzbdaVar = zzbznVar.zzh;
                zzbdb.zza(zzbdaVar, zzbcyVar);
            } catch (IllegalArgumentException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot config CSI reporter.", e);
            }
        }
    }
}
