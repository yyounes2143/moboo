package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzbwq extends IInterface {
    Bundle zzb() throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdx zzc() throws RemoteException;

    zzbwn zzd() throws RemoteException;

    @Nullable
    String zze() throws RemoteException;

    String zzf() throws RemoteException;

    void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException;

    void zzh(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException;

    void zzi(boolean z) throws RemoteException;

    void zzj(com.google.android.gms.ads.internal.client.zzdn zzdnVar) throws RemoteException;

    void zzk(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException;

    void zzl(zzbwt zzbwtVar) throws RemoteException;

    void zzm(zzbxe zzbxeVar) throws RemoteException;

    void zzn(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzo(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException;

    boolean zzp() throws RemoteException;

    void zzq(zzbwy zzbwyVar) throws RemoteException;
}
