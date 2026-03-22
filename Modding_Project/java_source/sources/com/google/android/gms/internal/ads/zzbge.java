package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbge extends zzayk implements zzbgg {
    public zzbge(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzbgg
    public final double zzb() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        double readDouble = zzda.readDouble();
        zzda.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbgg
    public final int zzc() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        int readInt = zzda.readInt();
        zzda.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbgg
    public final int zzd() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        int readInt = zzda.readInt();
        zzda.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbgg
    public final Uri zze() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        Uri uri = (Uri) zzaym.zza(zzda, Uri.CREATOR);
        zzda.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbgg
    public final IObjectWrapper zzf() throws RemoteException {
        Parcel zzda = zzda(1, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }
}
