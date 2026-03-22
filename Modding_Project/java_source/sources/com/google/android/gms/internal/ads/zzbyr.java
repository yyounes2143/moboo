package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbyr extends zzayl implements zzbys {
    public zzbyr() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                zzaym.zzc(parcel);
                zzc(parcel.readString(), parcel.readString(), (Bundle) zzaym.zza(parcel, Bundle.CREATOR));
            } else {
                String readString = parcel.readString();
                zzaym.zzc(parcel);
                zzb(readString);
            }
        } else {
            parcel.readString();
            parcel.readString();
            zzaym.zzc(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
