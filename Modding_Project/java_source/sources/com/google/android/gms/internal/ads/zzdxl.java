package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdxl implements zzgcu {
    final /* synthetic */ zzdxm zza;

    public zzdxl(zzdxm zzdxmVar) {
        this.zza = zzdxmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        Pattern pattern;
        zzeap zzeapVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue()) {
            pattern = zzdxm.zza;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzeapVar = this.zza.zzf;
                zzeapVar.zzi(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzeap zzeapVar;
        zzeap zzeapVar2;
        zzfcg zzfcgVar = (zzfcg) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgs)).booleanValue()) {
            zzdxm zzdxmVar = this.zza;
            zzeapVar = zzdxmVar.zzf;
            zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
            zzeapVar.zzi(zzfbxVar.zzf);
            zzeapVar2 = zzdxmVar.zzf;
            zzeapVar2.zzj(zzfbxVar.zzg);
        }
    }
}
