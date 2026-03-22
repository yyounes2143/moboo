package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdyh extends zzdyb {
    private String zzg;
    private int zzh = 1;

    public zzdyh(Context context) {
        this.zzf = new zzbuq(context, com.google.android.gms.ads.internal.zzv.zzv().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzbvd zzdxzVar;
        zzbvd zzdxzVar2;
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        int i = this.zzh;
                        if (i == 2) {
                            zzbuz zzp = this.zzf.zzp();
                            zzbvl zzbvlVar = this.zze;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzng)).booleanValue()) {
                                zzdxzVar2 = new zzdya(this.zza, this.zze);
                            } else {
                                zzdxzVar2 = new zzdxz(this);
                            }
                            zzp.zze(zzbvlVar, zzdxzVar2);
                        } else if (i == 3) {
                            zzbuz zzp2 = this.zzf.zzp();
                            String str = this.zzg;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzng)).booleanValue()) {
                                zzdxzVar = new zzdya(this.zza, this.zze);
                            } else {
                                zzdxzVar = new zzdxz(this);
                            }
                            zzp2.zzh(str, zzdxzVar);
                        } else {
                            this.zza.zzd(new zzdyq(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzdyq(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                        this.zza.zzd(new zzdyq(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyb, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Cannot connect to remote service, fallback to local instance.");
        this.zza.zzd(new zzdyq(1));
    }

    public final ListenableFuture zza(zzbvl zzbvlVar) {
        synchronized (this.zzb) {
            try {
                int i = this.zzh;
                if (i != 1 && i != 2) {
                    return zzgcy.zzg(new zzdyq(2));
                } else if (this.zzc) {
                    return this.zza;
                } else {
                    this.zzh = 2;
                    this.zzc = true;
                    this.zze = zzbvlVar;
                    this.zzf.checkAvailabilityAndConnect();
                    zzcaf zzcafVar = this.zza;
                    zzcafVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyf
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdyh.this.zzb();
                        }
                    }, zzcaa.zzg);
                    return zzcafVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zzd(String str) {
        synchronized (this.zzb) {
            try {
                int i = this.zzh;
                if (i != 1 && i != 3) {
                    return zzgcy.zzg(new zzdyq(2));
                } else if (this.zzc) {
                    return this.zza;
                } else {
                    this.zzh = 3;
                    this.zzc = true;
                    this.zzg = str;
                    this.zzf.checkAvailabilityAndConnect();
                    zzcaf zzcafVar = this.zza;
                    zzcafVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyg
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdyh.this.zzb();
                        }
                    }, zzcaa.zzg);
                    return zzcafVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
