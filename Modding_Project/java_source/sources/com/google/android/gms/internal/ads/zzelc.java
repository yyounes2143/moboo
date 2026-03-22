package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelc {
    private final zzelh zza;
    private final String zzb;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzdx zzc;

    public zzelc(zzelh zzelhVar, String str) {
        this.zza = zzelhVar;
        this.zzb = str;
    }

    @Nullable
    public final synchronized String zza() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.zzc;
            if (zzdxVar != null) {
                str = zzdxVar.zzg();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return str;
    }

    @Nullable
    public final synchronized String zzb() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.zzc;
            if (zzdxVar != null) {
                str = zzdxVar.zzg();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return str;
    }

    public final synchronized void zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, int i) throws RemoteException {
        this.zzc = null;
        zzeli zzeliVar = new zzeli(i);
        zzelb zzelbVar = new zzelb(this);
        this.zza.zzb(zzmVar, this.zzb, zzeliVar, zzelbVar);
    }

    public final synchronized boolean zze() throws RemoteException {
        return this.zza.zza();
    }
}
