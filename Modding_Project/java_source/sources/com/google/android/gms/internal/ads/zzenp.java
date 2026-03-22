package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzenp implements zzetv {
    final Context zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;
    private final zzcsn zze;
    private final zzfdw zzf;
    private final zzfcp zzg;
    private final com.google.android.gms.ads.internal.util.zzg zzh = com.google.android.gms.ads.internal.zzv.zzp().zzi();
    private final zzdrx zzi;
    private final zzctb zzj;

    public zzenp(Context context, String str, String str2, zzcsn zzcsnVar, zzfdw zzfdwVar, zzfcp zzfcpVar, zzdrx zzdrxVar, zzctb zzctbVar, long j) {
        this.zza = context;
        this.zzb = str;
        this.zzc = str2;
        this.zze = zzcsnVar;
        this.zzf = zzfdwVar;
        this.zzg = zzfcpVar;
        this.zzi = zzdrxVar;
        this.zzj = zzctbVar;
        this.zzd = j;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        String str;
        Bundle bundle = new Bundle();
        zzdrx zzdrxVar = this.zzi;
        Map zzb = zzdrxVar.zzb();
        String str2 = this.zzb;
        zzb.put("seq_num", str2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue()) {
            zzdrxVar.zzd("tsacc", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzd));
            com.google.android.gms.ads.internal.zzv.zzr();
            if (true != com.google.android.gms.ads.internal.util.zzs.zzH(this.zza)) {
                str = "1";
            } else {
                str = "0";
            }
            zzdrxVar.zzd("foreground", str);
        }
        zzcsn zzcsnVar = this.zze;
        zzfcp zzfcpVar = this.zzg;
        zzcsnVar.zzk(zzfcpVar.zzd);
        bundle.putAll(this.zzf.zzb());
        return zzgcy.zzh(new zzenq(this.zza, bundle, str2, this.zzc, this.zzh, zzfcpVar.zzf, this.zzj));
    }
}
