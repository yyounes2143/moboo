package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbwq;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzcg extends zzayl implements zzch {
    public zzcg() {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzce zzccVar;
        switch (i) {
            case 1:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzfp.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzccVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    if (queryLocalInterface instanceof zzce) {
                        zzccVar = (zzce) queryLocalInterface;
                    } else {
                        zzccVar = new zzcc(readStrongBinder);
                    }
                }
                zzaym.zzc(parcel);
                zzi(createTypedArrayList, zzccVar);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                zzaym.zzc(parcel);
                boolean zzl = zzl(readString);
                parcel2.writeNoException();
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 3:
                String readString2 = parcel.readString();
                zzaym.zzc(parcel);
                zzbwq zzg = zzg(readString2);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzg);
                return true;
            case 4:
                String readString3 = parcel.readString();
                zzaym.zzc(parcel);
                boolean zzj = zzj(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zzj ? 1 : 0);
                return true;
            case 5:
                String readString4 = parcel.readString();
                zzaym.zzc(parcel);
                zzban zze = zze(readString4);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zze);
                return true;
            case 6:
                String readString5 = parcel.readString();
                zzaym.zzc(parcel);
                boolean zzk = zzk(readString5);
                parcel2.writeNoException();
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            case 7:
                String readString6 = parcel.readString();
                zzaym.zzc(parcel);
                zzbx zzf = zzf(readString6);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzf);
                return true;
            case 8:
                zzbpl zzf2 = zzbpk.zzf(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzh(zzf2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
