package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
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
public interface zzbt extends IInterface {
    zzbq zze() throws RemoteException;

    void zzf(zzbhe zzbheVar) throws RemoteException;

    void zzg(zzbhh zzbhhVar) throws RemoteException;

    void zzh(String str, zzbhn zzbhnVar, @Nullable zzbhk zzbhkVar) throws RemoteException;

    void zzi(zzbmp zzbmpVar) throws RemoteException;

    void zzj(zzbhr zzbhrVar, zzr zzrVar) throws RemoteException;

    void zzk(zzbhu zzbhuVar) throws RemoteException;

    void zzl(zzbk zzbkVar) throws RemoteException;

    void zzm(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException;

    void zzn(zzbmg zzbmgVar) throws RemoteException;

    void zzo(zzbfv zzbfvVar) throws RemoteException;

    void zzp(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException;

    void zzq(zzcp zzcpVar) throws RemoteException;
}
