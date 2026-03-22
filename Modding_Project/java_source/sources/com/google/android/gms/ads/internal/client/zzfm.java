package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbwn;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbwx;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbxe;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfm extends zzbwp {
    private static void zzs(final zzbwx zzbwxVar) {
        com.google.android.gms.ads.internal.util.client.zzo.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfl
            @Override // java.lang.Runnable
            public final void run() {
                zzbwx zzbwxVar2 = zzbwx.this;
                if (zzbwxVar2 != null) {
                    try {
                        zzbwxVar2.zze(1);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final Bundle zzb() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final zzdx zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final zzbwn zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final String zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final String zzf() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzg(zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        zzs(zzbwxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzh(zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        zzs(zzbwxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final boolean zzp() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzi(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzj(zzdn zzdnVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzk(zzdq zzdqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzl(zzbwt zzbwtVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzm(zzbxe zzbxeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzq(zzbwy zzbwyVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzo(IObjectWrapper iObjectWrapper, boolean z) {
    }
}
