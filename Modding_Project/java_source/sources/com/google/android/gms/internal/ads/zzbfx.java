package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbfx extends zzayk implements zzbfz {
    public zzbfx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbfz
    public final String zzg() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbfz
    public final List zzh() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        ArrayList zzb = zzaym.zzb(zzda);
        zzda.recycle();
        return zzb;
    }
}
