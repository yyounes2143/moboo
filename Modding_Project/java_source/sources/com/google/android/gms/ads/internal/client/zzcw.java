package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbmb;
import com.google.android.gms.internal.ads.zzbpl;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcw extends zzayk implements zzcy {
    public zzcw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final float zze() throws RemoteException {
        Parcel zzda = zzda(7, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final String zzf() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final List zzg() throws RemoteException {
        Parcel zzda = zzda(13, zza());
        ArrayList createTypedArrayList = zzda.createTypedArrayList(zzblu.CREATOR);
        zzda.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzh(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdb(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzi() throws RemoteException {
        zzdb(15, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzj(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(17, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzk() throws RemoteException {
        zzdb(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzl(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzm(zzdk zzdkVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdkVar);
        zzdb(16, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzn(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzo(zzbpl zzbplVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbplVar);
        zzdb(11, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzp(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(4, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzq(float f) throws RemoteException {
        Parcel zza = zza();
        zza.writeFloat(f);
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzr(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzs(zzbmb zzbmbVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbmbVar);
        zzdb(12, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzt(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdb(18, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final void zzu(zzfr zzfrVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfrVar);
        zzdb(14, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcy
    public final boolean zzv() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
