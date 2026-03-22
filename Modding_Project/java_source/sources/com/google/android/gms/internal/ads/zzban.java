package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzban extends IInterface {
    com.google.android.gms.ads.internal.client.zzbx zze() throws RemoteException;

    @Nullable
    com.google.android.gms.ads.internal.client.zzdx zzf() throws RemoteException;

    @Nullable
    String zzg() throws RemoteException;

    void zzh(boolean z) throws RemoteException;

    void zzi(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException;

    void zzj(IObjectWrapper iObjectWrapper, zzbau zzbauVar) throws RemoteException;
}
