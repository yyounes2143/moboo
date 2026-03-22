package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefh implements zzedl {
    private final Context zza;
    private final zzdga zzb;
    private final VersionInfoParcel zzc;
    private final Executor zzd;

    public zzefh(Context context, VersionInfoParcel versionInfoParcel, zzdga zzdgaVar, Executor executor) {
        this.zza = context;
        this.zzc = versionInfoParcel;
        this.zzb = zzdgaVar;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzdex zzd = this.zzb.zzd(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdfa(new zzefg(this, zzediVar, zzfbuVar), null));
        zzd.zzd().zzo(new zzcmd((zzfdn) zzediVar.zzb), this.zzd);
        ((zzeew) zzediVar.zzc).zzc(zzd.zzk());
        return zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        zzfdn zzfdnVar = (zzfdn) zzediVar.zzb;
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        String jSONObject = zzfbuVar.zzv.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbs.zzm(zzfbuVar.zzs);
        zzfdnVar.zzo(this.zza, zzfcpVar.zzd, jSONObject, zzm, (zzbpr) zzediVar.zzc);
    }
}
