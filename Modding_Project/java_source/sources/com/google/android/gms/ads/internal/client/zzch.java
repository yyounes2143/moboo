package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbwq;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzch extends IInterface {
    @Nullable
    zzban zze(String str) throws RemoteException;

    @Nullable
    zzbx zzf(String str) throws RemoteException;

    @Nullable
    zzbwq zzg(String str) throws RemoteException;

    void zzh(zzbpl zzbplVar) throws RemoteException;

    void zzi(List list, zzce zzceVar) throws RemoteException;

    boolean zzj(String str) throws RemoteException;

    boolean zzk(String str) throws RemoteException;

    boolean zzl(String str) throws RemoteException;
}
