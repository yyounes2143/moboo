package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbtf extends zzayk implements zzbth {
    public zzbtf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbth
    public final zzbte zze(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        zzbte zzbtcVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(1, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (queryLocalInterface instanceof zzbte) {
                zzbtcVar = (zzbte) queryLocalInterface;
            } else {
                zzbtcVar = new zzbtc(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbtcVar;
    }
}
