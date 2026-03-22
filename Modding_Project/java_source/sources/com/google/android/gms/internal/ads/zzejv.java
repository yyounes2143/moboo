package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzejv extends com.google.android.gms.ads.internal.client.zzbp {
    private final zzelc zza;

    public zzejv(Context context, zzchb zzchbVar, zzfcn zzfcnVar, zzdiz zzdizVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        zzele zzeleVar = new zzele(zzdizVar, zzchbVar.zzi());
        zzeleVar.zze(zzbkVar);
        this.zza = new zzelc(new zzelo(zzchbVar, context, zzeleVar, zzfcnVar), zzfcnVar.zzL());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized String zze() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized String zzf() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar) throws RemoteException {
        this.zza.zzd(zzmVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zzm zzmVar, int i) throws RemoteException {
        this.zza.zzd(zzmVar, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized boolean zzi() throws RemoteException {
        return this.zza.zze();
    }
}
