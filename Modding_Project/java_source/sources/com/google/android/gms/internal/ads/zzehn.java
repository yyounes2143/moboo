package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzehn extends zzeio {
    private final zzdeh zza;

    public zzehn(zzcvr zzcvrVar, zzddw zzddwVar, zzcwl zzcwlVar, zzcxa zzcxaVar, zzcxf zzcxfVar, zzcwg zzcwgVar, zzdau zzdauVar, zzdet zzdetVar, zzcxz zzcxzVar, zzdeh zzdehVar, zzdaq zzdaqVar) {
        super(zzcvrVar, zzddwVar, zzcwlVar, zzcxaVar, zzcxfVar, zzdauVar, zzcxzVar, zzdetVar, zzdaqVar, zzcwgVar);
        this.zza = zzdehVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzs(zzbwj zzbwjVar) {
        this.zza.zza(zzbwjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzt(zzbwn zzbwnVar) throws RemoteException {
        this.zza.zza(new zzbwj(zzbwnVar.zzf(), zzbwnVar.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzu() throws RemoteException {
        this.zza.zza(null);
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzv() throws RemoteException {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzw() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzeio, com.google.android.gms.internal.ads.zzbpr
    public final void zzz() {
        this.zza.zzc();
    }
}
