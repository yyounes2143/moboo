package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeid implements zzedl {
    private final Context zza;
    private final Executor zzb;
    private final zzdom zzc;

    public zzeid(Context context, Executor executor, zzdom zzdomVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdomVar;
    }

    public static /* bridge */ /* synthetic */ Executor zzc(zzeid zzeidVar) {
        return zzeidVar.zzb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zze(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) {
        try {
            ((zzfdn) zzediVar.zzb).zzk(zzfcgVar.zza.zza.zzd, zzfbuVar.zzv.toString());
        } catch (Exception e) {
            String str = zzediVar.zza;
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzdoi zzd = this.zzc.zzd(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdoj(new zzeib(this, zzediVar, zzfbuVar)));
        zzd.zzd().zzo(new zzcmd((zzfdn) zzediVar.zzb), this.zzb);
        zzcxa zze = zzd.zze();
        zzcvr zzb = zzd.zzb();
        ((zzeex) zzediVar.zzc).zzc(new zzeic(this, zzd.zza(), zzb, zze, zzd.zzg()));
        return zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        zzfdn zzfdnVar = (zzfdn) zzediVar.zzb;
        if (!zzfdnVar.zzC()) {
            zzeia zzeiaVar = new zzeia(this, zzfcgVar, zzfbuVar, zzediVar);
            zzcxd zzcxdVar = zzediVar.zzc;
            ((zzeex) zzcxdVar).zzd(zzeiaVar);
            Context context = this.zza;
            zzfcp zzfcpVar = zzfcgVar.zza.zza;
            String jSONObject = zzfbuVar.zzv.toString();
            zzfdnVar.zzh(context, zzfcpVar.zzd, null, (zzbwi) zzcxdVar, jSONObject);
            return;
        }
        zze(zzfcgVar, zzfbuVar, zzediVar);
    }
}
