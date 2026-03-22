package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeeo extends zzbqx {
    final /* synthetic */ zzeeq zza;
    private final zzedi zzb;

    public /* synthetic */ zzeeo(zzeeq zzeeqVar, zzedi zzediVar, zzeep zzeepVar) {
        this.zza = zzeeqVar;
        this.zzb = zzediVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zze(String str) throws RemoteException {
        ((zzeew) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzeew) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzeeq.zze(this.zza, (View) ObjectWrapper.unwrap(iObjectWrapper));
        ((zzeew) this.zzb.zzc).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzh(zzbpu zzbpuVar) throws RemoteException {
        zzeeq.zzd(this.zza, zzbpuVar);
        ((zzeew) this.zzb.zzc).zzo();
    }
}
