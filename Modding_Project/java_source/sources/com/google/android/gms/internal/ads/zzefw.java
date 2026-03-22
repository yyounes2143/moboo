package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefw implements zzedl {
    private final Context zza;
    private final zzdgw zzb;
    private final Executor zzc;

    public zzefw(Context context, zzdgw zzdgwVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdgwVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfcg zzfcgVar, int i) {
        return zzfcgVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final /* bridge */ /* synthetic */ Object zza(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw, zzegy {
        zzdio zzah;
        zzfdn zzfdnVar = (zzfdn) zzediVar.zzb;
        zzbpw zzD = zzfdnVar.zzD();
        zzbpx zzE = zzfdnVar.zzE();
        zzbqa zzd = zzfdnVar.zzd();
        if (zzd != null && zzc(zzfcgVar, 6)) {
            zzah = zzdio.zzt(zzd);
        } else if (zzD != null && zzc(zzfcgVar, 6)) {
            zzah = zzdio.zzai(zzD);
        } else if (zzD != null && zzc(zzfcgVar, 2)) {
            zzah = zzdio.zzag(zzD);
        } else if (zzE != null && zzc(zzfcgVar, 6)) {
            zzah = zzdio.zzaj(zzE);
        } else if (zzE != null && zzc(zzfcgVar, 1)) {
            zzah = zzdio.zzah(zzE);
        } else {
            throw new zzegy(1, "No native ad mappers");
        }
        if (zzah != null) {
            zzfcp zzfcpVar = zzfcgVar.zza.zza;
            if (zzfcpVar.zzg.contains(Integer.toString(zzah.zzc()))) {
                zzdiq zze = this.zzb.zze(new zzcrn(zzfcgVar, zzfbuVar, zzediVar.zza), new zzdja(zzah), new zzdkt(zzE, zzD, zzd));
                ((zzeew) zzediVar.zzc).zzc(zze.zzk());
                zze.zzd().zzo(new zzcmd(zzfdnVar), this.zzc);
                return zze.zza();
            }
        }
        throw new zzegy(1, "No corresponding native ad listener");
    }

    @Override // com.google.android.gms.internal.ads.zzedl
    public final void zzb(zzfcg zzfcgVar, zzfbu zzfbuVar, zzedi zzediVar) throws zzfcw {
        zzfdn zzfdnVar = (zzfdn) zzediVar.zzb;
        zzfcp zzfcpVar = zzfcgVar.zza.zza;
        String jSONObject = zzfbuVar.zzv.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbs.zzm(zzfbuVar.zzs);
        zzbfv zzbfvVar = zzfcpVar.zzi;
        ArrayList arrayList = zzfcpVar.zzg;
        zzfdnVar.zzp(this.zza, zzfcpVar.zzd, jSONObject, zzm, (zzbpr) zzediVar.zzc, zzbfvVar, arrayList);
    }
}
