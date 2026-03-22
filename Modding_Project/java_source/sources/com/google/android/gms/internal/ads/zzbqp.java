package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbqp extends zzbpq {
    private final Adapter zza;
    private final zzbwi zzb;

    public zzbqp(Adapter adapter, zzbwi zzbwiVar) {
        this.zza = adapter;
        this.zzb = zzbwiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zze() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zze(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzf() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzf(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzg(int i) throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzg(ObjectWrapper.wrap(this.zza), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzo() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzi(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzp() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzj(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzt(zzbwn zzbwnVar) throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzm(ObjectWrapper.wrap(this.zza), new zzbwj(zzbwnVar.zzf(), zzbwnVar.zze()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzu() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzn(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzv() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzo(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzz() throws RemoteException {
        zzbwi zzbwiVar = this.zzb;
        if (zzbwiVar != null) {
            zzbwiVar.zzp(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzm() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzw() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzx() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzy() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzj(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzs(@Nullable zzbwj zzbwjVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzi(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzq(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zzr(zzbha zzbhaVar, String str) throws RemoteException {
    }
}
