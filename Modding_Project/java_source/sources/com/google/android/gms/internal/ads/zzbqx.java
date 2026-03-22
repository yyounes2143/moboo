package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbqx extends zzayl implements zzbqy {
    public zzbqx() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    zzbpu zzb = zzbpt.zzb(parcel.readStrongBinder());
                    zzaym.zzc(parcel);
                    zzh(zzb);
                } else {
                    zzaym.zzc(parcel);
                    zzf((com.google.android.gms.ads.internal.client.zze) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                }
            } else {
                String readString = parcel.readString();
                zzaym.zzc(parcel);
                zze(readString);
            }
        } else {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzaym.zzc(parcel);
            zzg(asInterface);
        }
        parcel2.writeNoException();
        return true;
    }
}
