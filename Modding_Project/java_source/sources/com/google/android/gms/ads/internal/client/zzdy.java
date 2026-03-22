package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdy extends zzayk implements zzea {
    public zzdy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final int zzh() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        int readInt = zzda.readInt();
        zzda.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final zzed zzi() throws RemoteException {
        zzed zzebVar;
        Parcel zzda = zzda(11, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzebVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            if (queryLocalInterface instanceof zzed) {
                zzebVar = (zzed) queryLocalInterface;
            } else {
                zzebVar = new zzeb(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzebVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzj(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(3, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzk() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzl() throws RemoteException {
        zzdb(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzm(zzed zzedVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzedVar);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzn() throws RemoteException {
        zzdb(13, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzo() throws RemoteException {
        Parcel zzda = zzda(12, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzp() throws RemoteException {
        Parcel zzda = zzda(10, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzq() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
