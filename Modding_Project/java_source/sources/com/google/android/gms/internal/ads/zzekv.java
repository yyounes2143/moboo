package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzekv implements com.google.android.gms.ads.internal.client.zza, zzddy {
    private com.google.android.gms.ads.internal.client.zzbh zza;

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zzbh zzbhVar = this.zza;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Remote Exception at onAdClicked.", e);
            }
        }
    }

    public final synchronized void zza(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zza = zzbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final synchronized void zzdf() {
        com.google.android.gms.ads.internal.client.zzbh zzbhVar = this.zza;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Remote Exception at onPhysicalClick.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final synchronized void zzu() {
    }
}
