package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzcd extends zzayl implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzaym.zzc(parcel);
            zzf((zzfp) zzaym.zza(parcel, zzfp.CREATOR));
        } else {
            zzaym.zzc(parcel);
            zze((zzfp) zzaym.zza(parcel, zzfp.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
