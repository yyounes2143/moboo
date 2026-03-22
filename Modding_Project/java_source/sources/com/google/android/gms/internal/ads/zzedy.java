package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedy implements zzedl {
    private final Context zza;
    private final zzcod zzb;

    public zzedy(Context context, zzcod zzcodVar) {
        this.zza = context;
        this.zzb = zzcodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzeff zzeffVar = new zzeff(zzfbuVar, (zzbrk) zzediVar.zzb, AdFormat.APP_OPEN_AD);
        zzcoa zza = this.zzb.zza(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdfa(zzeffVar, null), new zzcob(zzfbuVar.zzaa));
        zzeffVar.zzc(zza.zzc());
        ((zzeew) zzediVar.zzc).zzc(zza.zzj());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzbrk zzbrkVar = (zzbrk) zzediVar.zzb;
            zzbrkVar.zzq(zzfbuVar.zzZ);
            zzbrkVar.zzi(zzfbuVar.zzU, zzfbuVar.zzv.toString(), zzfcgVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzedw(zzediVar, null), (zzbpr) zzediVar.zzc);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading an app open RTB ad", e);
            throw new zzfcw(e);
        }
    }
}
