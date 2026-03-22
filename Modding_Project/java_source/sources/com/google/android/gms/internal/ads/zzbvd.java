package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzbvd extends IInterface {
    void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) throws RemoteException;

    @Deprecated
    void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvl zzbvlVar) throws RemoteException;
}
