package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehl implements zzedl {
    private final Context zza;
    private final zzdom zzb;

    public zzehl(Context context, zzdom zzdomVar) {
        this.zza = context;
        this.zzb = zzdomVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzeff zzeffVar = new zzeff(zzfbuVar, (zzbrk) zzediVar.zzb, AdFormat.REWARDED);
        zzdoi zzd = this.zzb.zzd(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdoj(zzeffVar));
        zzeffVar.zzc(zzd.zzc());
        ((zzeew) zzediVar.zzc).zzc(zzd.zzo());
        return zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzbrk zzbrkVar = (zzbrk) zzediVar.zzb;
            zzbrkVar.zzq(zzfbuVar.zzZ);
            zzfcp zzfcpVar = zzfcgVar.zza.zza;
            if (zzfcpVar.zzo.zza == 3) {
                zzbrkVar.zzo(zzfbuVar.zzU, zzfbuVar.zzv.toString(), zzfcpVar.zzd, ObjectWrapper.wrap(this.zza), new zzehj(this, zzediVar, null), (zzbpr) zzediVar.zzc);
            } else {
                zzbrkVar.zzp(zzfbuVar.zzU, zzfbuVar.zzv.toString(), zzfcpVar.zzd, ObjectWrapper.wrap(this.zza), new zzehj(this, zzediVar, null), (zzbpr) zzediVar.zzc);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a rewarded RTB ad", e);
        }
    }
}
