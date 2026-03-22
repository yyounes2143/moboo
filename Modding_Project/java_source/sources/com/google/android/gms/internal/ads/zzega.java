package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzega implements zzedl {
    private final Context zza;
    private final zzdgw zzb;
    private zzbqa zzc;
    private final VersionInfoParcel zzd;

    public zzega(Context context, zzdgw zzdgwVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzdgwVar;
        this.zzd = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        ArrayList arrayList = zzfcgVar.zza.zza.zzg;
        if (arrayList.contains(Integer.toString(6))) {
            zzdio zzt = zzdio.zzt(this.zzc);
            if (arrayList.contains(Integer.toString(zzt.zzc()))) {
                zzdiq zze = this.zzb.zze(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdja(zzt), new zzdkt(null, null, this.zzc));
                ((zzeew) zzediVar.zzc).zzc(zze.zzj());
                return zze.zza();
            }
            throw new zzegy(1, "No corresponding native ad listener");
        }
        throw new zzegy(2, "Unified must be used for RTB.");
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzbrk zzbrkVar = (zzbrk) zzediVar.zzb;
            zzbrkVar.zzq(zzfbuVar.zzZ);
            if (this.zzd.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbT)).intValue()) {
                zzbrkVar.zzm(zzfbuVar.zzU, zzfbuVar.zzv.toString(), zzfcgVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzefy(this, zzediVar, null), (zzbpr) zzediVar.zzc);
                return;
            }
            String str = zzfbuVar.zzU;
            String jSONObject = zzfbuVar.zzv.toString();
            zzfcp zzfcpVar = zzfcgVar.zza.zza;
            zzbrkVar.zzn(str, jSONObject, zzfcpVar.zzd, ObjectWrapper.wrap(this.zza), new zzefy(this, zzediVar, null), (zzbpr) zzediVar.zzc, zzfcpVar.zzi);
        } catch (RemoteException e) {
            throw new zzfcw(e);
        }
    }
}
