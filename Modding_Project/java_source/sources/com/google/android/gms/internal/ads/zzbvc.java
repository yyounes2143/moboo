package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbvc extends zzayl implements zzbvd {
    public zzbvc() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                zzaym.zzc(parcel);
                zzg((ParcelFileDescriptor) zzaym.zza(parcel, ParcelFileDescriptor.CREATOR), (zzbvl) zzaym.zza(parcel, zzbvl.CREATOR));
            } else {
                zzaym.zzc(parcel);
                zze((com.google.android.gms.ads.internal.util.zzbb) zzaym.zza(parcel, com.google.android.gms.ads.internal.util.zzbb.CREATOR));
            }
        } else {
            zzaym.zzc(parcel);
            zzf((ParcelFileDescriptor) zzaym.zza(parcel, ParcelFileDescriptor.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
