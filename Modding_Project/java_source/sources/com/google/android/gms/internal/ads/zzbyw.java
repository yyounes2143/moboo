package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyw extends zzayk implements zzbyy {
    public zzbyw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbyy
    public final zzbyv zze(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        zzbyv zzbytVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(2, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbytVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            if (queryLocalInterface instanceof zzbyv) {
                zzbytVar = (zzbyv) queryLocalInterface;
            } else {
                zzbytVar = new zzbyt(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbytVar;
    }
}
