package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefl implements zzedl {
    private final Context zza;
    private final zzdga zzb;

    public zzefl(Context context, zzdga zzdgaVar) {
        this.zza = context;
        this.zzb = zzdgaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzeff zzeffVar = new zzeff(zzfbuVar, (zzbrk) zzediVar.zzb, AdFormat.INTERSTITIAL);
        zzdex zzd = this.zzb.zzd(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdfa(zzeffVar, null));
        zzeffVar.zzc(zzd.zzc());
        ((zzeew) zzediVar.zzc).zzc(zzd.zzj());
        return zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzbrk zzbrkVar = (zzbrk) zzediVar.zzb;
            zzbrkVar.zzq(zzfbuVar.zzZ);
            zzbrkVar.zzl(zzfbuVar.zzU, zzfbuVar.zzv.toString(), zzfcgVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzefj(this, zzediVar, null), (zzbpr) zzediVar.zzc);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a interstitial RTB ad", e);
            throw new zzfcw(e);
        }
    }
}
