package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbfv;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbhn;
import com.google.android.gms.internal.ads.zzbhr;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbmg;
import com.google.android.gms.internal.ads.zzbmp;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbr extends zzayk implements zzbt {
    public zzbr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final zzbq zze() throws RemoteException {
        zzbq zzboVar;
        Parcel zzda = zzda(1, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzboVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            if (queryLocalInterface instanceof zzbq) {
                zzboVar = (zzbq) queryLocalInterface;
            } else {
                zzboVar = new zzbo(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzboVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzf(zzbhe zzbheVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzg(zzbhh zzbhhVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzh(String str, zzbhn zzbhnVar, zzbhk zzbhkVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaym.zzf(zza, zzbhnVar);
        zzaym.zzf(zza, zzbhkVar);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzi(zzbmp zzbmpVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzj(zzbhr zzbhrVar, zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhrVar);
        zzaym.zzd(zza, zzrVar);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzk(zzbhu zzbhuVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhuVar);
        zzdb(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzl(zzbk zzbkVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbkVar);
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, adManagerAdViewOptions);
        zzdb(15, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzn(zzbmg zzbmgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzo(zzbfv zzbfvVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbfvVar);
        zzdb(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzq(zzcp zzcpVar) throws RemoteException {
        throw null;
    }
}
