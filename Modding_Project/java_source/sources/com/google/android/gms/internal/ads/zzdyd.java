package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdyd extends zzdyb {
    private final Context zzg;
    private final Executor zzh;

    public zzdyd(Context context, Executor executor) {
        this.zzg = context;
        this.zzh = executor;
        this.zzf = new zzbuq(context, com.google.android.gms.ads.internal.zzv.zzv().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbvd zzdxzVar;
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        zzbuz zzp = this.zzf.zzp();
                        zzbvl zzbvlVar = this.zze;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzng)).booleanValue()) {
                            zzdxzVar = new zzdya(this.zza, this.zze);
                        } else {
                            zzdxzVar = new zzdxz(this);
                        }
                        zzp.zzf(zzbvlVar, zzdxzVar);
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzdyq(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "RemoteSignalsClientTask.onConnected");
                        this.zza.zzd(new zzdyq(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final ListenableFuture zza(zzbvl zzbvlVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc) {
                    return this.zza;
                }
                this.zzc = true;
                this.zze = zzbvlVar;
                this.zzf.checkAvailabilityAndConnect();
                zzcaf zzcafVar = this.zza;
                zzcafVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyd.this.zzb();
                    }
                }, zzcaa.zzg);
                zzdyb.zzc(this.zzg, zzcafVar, this.zzh);
                return zzcafVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
