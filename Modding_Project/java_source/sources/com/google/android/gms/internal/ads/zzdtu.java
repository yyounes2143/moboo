package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdtu implements zzdte {
    private final long zza;
    private final zzdtj zzb;
    private final zzfbl zzc;

    public zzdtu(long j, Context context, zzdtj zzdtjVar, zzchb zzchbVar, String str) {
        this.zza = j;
        this.zzb = zzdtjVar;
        zzfbn zzv = zzchbVar.zzv();
        zzv.zzb(context);
        zzv.zza(str);
        this.zzc = zzv.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zzb(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        try {
            this.zzc.zzg(zzmVar, new zzdts(this));
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zzc() {
        try {
            zzfbl zzfblVar = this.zzc;
            zzfblVar.zzl(new zzdtt(this));
            zzfblVar.zzn(ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zza() {
    }
}
