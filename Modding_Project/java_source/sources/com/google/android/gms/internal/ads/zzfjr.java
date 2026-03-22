package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfjr {
    private final Context zza;
    private final Executor zzb;
    private final zzgdk zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzfjj zze;
    private final zzfhq zzf;

    public zzfjr(Context context, Executor executor, zzgdk zzgdkVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzfjj zzfjjVar, zzfhq zzfhqVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzgdkVar;
        this.zzd = zzuVar;
        this.zze = zzfjjVar;
        this.zzf = zzfhqVar;
    }

    public final void zzd(final String str, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar, @Nullable zzfhn zzfhnVar, @Nullable zzcyd zzcydVar) {
        ListenableFuture zzb;
        zzfhc zzfhcVar = null;
        if (zzfhq.zza() && ((Boolean) zzbeo.zzd.zze()).booleanValue()) {
            zzfhcVar = zzfhb.zza(this.zza, 14);
            zzfhcVar.zzi();
        }
        if (zzvVar != null) {
            zzb = new zzfji(zzvVar.zzb(), this.zzd, this.zzc, this.zze).zzd(str);
        } else {
            zzb = this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfjp
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    com.google.android.gms.ads.internal.util.client.zzt zza;
                    zza = zzfjr.this.zzd.zza(str);
                    return zza;
                }
            });
        }
        zzgcy.zzr(zzb, new zzfjq(this, zzfhcVar, zzfhnVar, zzcydVar), this.zzb);
    }

    public final void zze(List list, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzd((String) it.next(), zzvVar, null, null);
        }
    }
}
