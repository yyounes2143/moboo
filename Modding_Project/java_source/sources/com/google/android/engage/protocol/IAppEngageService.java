package com.google.android.engage.protocol;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.engage.protocol.IAppEngageServiceAvailableCallback;
import com.google.android.engage.protocol.IAppEngageServiceDeleteClustersCallback;
import com.google.android.engage.protocol.IAppEngageServicePublishClustersCallback;
import com.google.android.engage.protocol.IAppEngageServicePublishStatusCallback;
import com.google.android.gms.internal.engage.zza;
import com.google.android.gms.internal.engage.zzb;
import com.google.android.gms.internal.engage.zzc;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface IAppEngageService extends IInterface {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class Stub extends zzb implements IAppEngageService {

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public static class Proxy extends zza implements IAppEngageService {
            public Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.engage.protocol.IAppEngageService");
            }

            @Override // com.google.android.engage.protocol.IAppEngageService
            public void deleteClusters(@NonNull Bundle bundle, @NonNull IAppEngageServiceDeleteClustersCallback iAppEngageServiceDeleteClustersCallback) throws RemoteException {
                Parcel zza = zza();
                zzc.zzc(zza, bundle);
                zzc.zzd(zza, iAppEngageServiceDeleteClustersCallback);
                zzb(2, zza);
            }

            @Override // com.google.android.engage.protocol.IAppEngageService
            public void isServiceAvailable(@NonNull Bundle bundle, @NonNull IAppEngageServiceAvailableCallback iAppEngageServiceAvailableCallback) throws RemoteException {
                Parcel zza = zza();
                zzc.zzc(zza, bundle);
                zzc.zzd(zza, iAppEngageServiceAvailableCallback);
                zzb(3, zza);
            }

            @Override // com.google.android.engage.protocol.IAppEngageService
            public void publishClusters(@NonNull Bundle bundle, @NonNull IAppEngageServicePublishClustersCallback iAppEngageServicePublishClustersCallback) throws RemoteException {
                Parcel zza = zza();
                zzc.zzc(zza, bundle);
                zzc.zzd(zza, iAppEngageServicePublishClustersCallback);
                zzb(1, zza);
            }

            @Override // com.google.android.engage.protocol.IAppEngageService
            public void updatePublishStatus(@NonNull Bundle bundle, @NonNull IAppEngageServicePublishStatusCallback iAppEngageServicePublishStatusCallback) throws RemoteException {
                Parcel zza = zza();
                zzc.zzc(zza, bundle);
                zzc.zzd(zza, iAppEngageServicePublishStatusCallback);
                zzb(4, zza);
            }
        }

        public Stub() {
            super("com.google.android.engage.protocol.IAppEngageService");
        }

        @NonNull
        public static IAppEngageService asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.engage.protocol.IAppEngageService");
            if (queryLocalInterface instanceof IAppEngageService) {
                return (IAppEngageService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // com.google.android.gms.internal.engage.zzb
        public boolean dispatchTransaction(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return false;
                        }
                        IAppEngageServicePublishStatusCallback asInterface = IAppEngageServicePublishStatusCallback.Stub.asInterface(parcel.readStrongBinder());
                        zzc.zzb(parcel);
                        updatePublishStatus((Bundle) zzc.zza(parcel, Bundle.CREATOR), asInterface);
                    } else {
                        IAppEngageServiceAvailableCallback asInterface2 = IAppEngageServiceAvailableCallback.Stub.asInterface(parcel.readStrongBinder());
                        zzc.zzb(parcel);
                        isServiceAvailable((Bundle) zzc.zza(parcel, Bundle.CREATOR), asInterface2);
                    }
                } else {
                    IAppEngageServiceDeleteClustersCallback asInterface3 = IAppEngageServiceDeleteClustersCallback.Stub.asInterface(parcel.readStrongBinder());
                    zzc.zzb(parcel);
                    deleteClusters((Bundle) zzc.zza(parcel, Bundle.CREATOR), asInterface3);
                }
            } else {
                IAppEngageServicePublishClustersCallback asInterface4 = IAppEngageServicePublishClustersCallback.Stub.asInterface(parcel.readStrongBinder());
                zzc.zzb(parcel);
                publishClusters((Bundle) zzc.zza(parcel, Bundle.CREATOR), asInterface4);
            }
            return true;
        }
    }

    void deleteClusters(@NonNull Bundle bundle, @NonNull IAppEngageServiceDeleteClustersCallback iAppEngageServiceDeleteClustersCallback) throws RemoteException;

    void isServiceAvailable(@NonNull Bundle bundle, @NonNull IAppEngageServiceAvailableCallback iAppEngageServiceAvailableCallback) throws RemoteException;

    void publishClusters(@NonNull Bundle bundle, @NonNull IAppEngageServicePublishClustersCallback iAppEngageServicePublishClustersCallback) throws RemoteException;

    void updatePublishStatus(@NonNull Bundle bundle, @NonNull IAppEngageServicePublishStatusCallback iAppEngageServicePublishStatusCallback) throws RemoteException;
}
