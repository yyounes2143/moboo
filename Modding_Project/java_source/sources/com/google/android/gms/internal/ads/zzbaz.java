package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbaz implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbbb zza;

    public zzbaz(zzbbb zzbbbVar) {
        this.zza = zzbbbVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        Object obj2;
        zzbbe zzbbeVar;
        zzbbe zzbbeVar2;
        zzbbb zzbbbVar = this.zza;
        obj = zzbbbVar.zzc;
        synchronized (obj) {
            try {
                zzbbeVar = zzbbbVar.zzd;
                if (zzbbeVar != null) {
                    zzbbeVar2 = zzbbbVar.zzd;
                    zzbbbVar.zzf = zzbbeVar2.zzq();
                }
            } catch (DeadObjectException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                zzbbb.zzh(this.zza);
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        zzbbb zzbbbVar = this.zza;
        obj = zzbbbVar.zzc;
        synchronized (obj) {
            zzbbbVar.zzf = null;
            obj2 = zzbbbVar.zzc;
            obj2.notifyAll();
        }
    }
}
