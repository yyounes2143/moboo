package com.google.android.engage.protocol;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.engage.zza;
import com.google.android.gms.internal.engage.zzb;
import com.google.android.gms.internal.engage.zzc;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface IAppEngageServicePublishStatusCallback extends IInterface {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class Stub extends zzb implements IAppEngageServicePublishStatusCallback {

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public static class Proxy extends zza implements IAppEngageServicePublishStatusCallback {
            public Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.engage.protocol.IAppEngageServicePublishStatusCallback");
            }

            @Override // com.google.android.engage.protocol.IAppEngageServicePublishStatusCallback
            public void onUpdatePublishStatus(@NonNull Bundle bundle) throws RemoteException {
                Parcel zza = zza();
                zzc.zzc(zza, bundle);
                zzb(1, zza);
            }
        }

        public Stub() {
            super("com.google.android.engage.protocol.IAppEngageServicePublishStatusCallback");
        }

        @NonNull
        public static IAppEngageServicePublishStatusCallback asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.engage.protocol.IAppEngageServicePublishStatusCallback");
            if (queryLocalInterface instanceof IAppEngageServicePublishStatusCallback) {
                return (IAppEngageServicePublishStatusCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // com.google.android.gms.internal.engage.zzb
        public boolean dispatchTransaction(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                zzc.zzb(parcel);
                onUpdatePublishStatus((Bundle) zzc.zza(parcel, Bundle.CREATOR));
                return true;
            }
            return false;
        }
    }

    void onUpdatePublishStatus(@NonNull Bundle bundle) throws RemoteException;
}
