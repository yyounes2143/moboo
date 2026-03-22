package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzefy extends zzbrd {
    final /* synthetic */ zzega zza;
    private final zzedi zzb;

    public /* synthetic */ zzefy(zzega zzegaVar, zzedi zzediVar, zzefz zzefzVar) {
        this.zza = zzegaVar;
        this.zzb = zzediVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zze(String str) throws RemoteException {
        ((zzeew) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzeew) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zzg(zzbqa zzbqaVar) throws RemoteException {
        zzega.zzc(this.zza, zzbqaVar);
        ((zzeew) this.zzb.zzc).zzo();
    }
}
