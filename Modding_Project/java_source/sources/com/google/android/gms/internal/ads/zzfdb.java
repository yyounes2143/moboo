package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfdb {
    private final zzfbu zza;
    private final zzfbx zzb;
    private final zzfjr zzc;
    private final zzfjj zzd;
    private final zzfhn zze;
    private final zzcmn zzf;

    @VisibleForTesting
    public zzfdb(zzfjr zzfjrVar, zzfjj zzfjjVar, zzfbu zzfbuVar, zzfbx zzfbxVar, zzcmn zzcmnVar, zzfhn zzfhnVar) {
        this.zza = zzfbuVar;
        this.zzb = zzfbxVar;
        this.zzc = zzfjrVar;
        this.zzd = zzfjjVar;
        this.zzf = zzcmnVar;
        this.zze = zzfhnVar;
    }

    public final void zza(List list, @Nullable zzcyd zzcydVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), 2, zzcydVar);
        }
    }

    public final void zzb(String str, int i, @Nullable zzcyd zzcydVar) {
        zzfbu zzfbuVar = this.zza;
        if (!zzfbuVar.zzai) {
            this.zzc.zzd(str, zzfbuVar.zzax, this.zze, zzcydVar);
            return;
        }
        this.zzd.zza(str, this.zzb.zzb, i);
    }

    public final void zzc(List list, int i) {
        ListenableFuture zzh;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkp)).booleanValue() && zzcmn.zzj(str)) {
                zzh = this.zzf.zze(str, com.google.android.gms.ads.internal.client.zzbb.zze());
            } else {
                zzh = zzgcy.zzh(str);
            }
            zzgcy.zzr(zzh, new zzfda(this, i), zzcaa.zza);
        }
    }
}
