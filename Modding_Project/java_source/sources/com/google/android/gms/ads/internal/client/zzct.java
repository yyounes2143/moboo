package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpl;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzct extends zzayk implements zzcv {
    public zzct(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final zzbpl getAdapterCreator() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        zzbpl zzf = zzbpk.zzf(zzda.readStrongBinder());
        zzda.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final zzex getLiteSdkVersion() throws RemoteException {
        Parcel zzda = zzda(1, zza());
        zzex zzexVar = (zzex) zzaym.zza(zzda, zzex.CREATOR);
        zzda.recycle();
        return zzexVar;
    }
}
