package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedu implements zzedl {
    private final Context zza;
    private final zzcod zzb;
    private final Executor zzc;

    public zzedu(Context context, zzcod zzcodVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcodVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzcoa zza = this.zzb.zza(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdfa(new zzedt(this, zzediVar, zzfbuVar), null), new zzcob(zzfbuVar.zzaa));
        zza.zzd().zzo(new zzcmd((zzfdn) zzediVar.zzb), this.zzc);
        ((zzeew) zzediVar.zzc).zzc(zza.zzk());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        String jSONObject = zzfbuVar.zzv.toString();
        ((zzfdn) zzediVar.zzb).zzl(this.zza, zzfcpVar.zzd, jSONObject, (zzbpr) zzediVar.zzc);
    }
}
