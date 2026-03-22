package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehh implements zzedl {
    private final Context zza;
    private final Executor zzb;
    private final zzdom zzc;

    public zzehh(Context context, Executor executor, zzdom zzdomVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdomVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzdoi zzd = this.zzc.zzd(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdoj(new zzehg(this, zzediVar, zzfbuVar)));
        zzd.zzd().zzo(new zzcmd((zzfdn) zzediVar.zzb), this.zzb);
        ((zzeew) zzediVar.zzc).zzc(zzd.zzn());
        return zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        try {
            zzfcp zzfcpVar = zzfcgVar.zza.zza;
            if (zzfcpVar.zzo.zza == 3) {
                ((zzfdn) zzediVar.zzb).zzr(this.zza, zzfcpVar.zzd, zzfbuVar.zzv.toString(), (zzbpr) zzediVar.zzc);
            } else {
                ((zzfdn) zzediVar.zzb).zzq(this.zza, zzfcpVar.zzd, zzfbuVar.zzv.toString(), (zzbpr) zzediVar.zzc);
            }
        } catch (Exception e) {
            String str = zzediVar.zza;
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }
}
