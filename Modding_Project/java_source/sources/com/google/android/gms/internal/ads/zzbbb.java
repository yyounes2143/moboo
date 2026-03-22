package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbb {
    private ScheduledFuture zza = null;
    private final Runnable zzb = new zzbax(this);
    private final Object zzc = new Object();
    @Nullable
    private zzbbe zzd;
    @Nullable
    private Context zze;
    @Nullable
    private zzbbh zzf;

    public static /* bridge */ /* synthetic */ void zzh(zzbbb zzbbbVar) {
        synchronized (zzbbbVar.zzc) {
            try {
                zzbbe zzbbeVar = zzbbbVar.zzd;
                if (zzbbeVar == null) {
                    return;
                }
                if (zzbbeVar.isConnected() || zzbbbVar.zzd.isConnecting()) {
                    zzbbbVar.zzd.disconnect();
                }
                zzbbbVar.zzd = null;
                zzbbbVar.zzf = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzl() {
        synchronized (this.zzc) {
            try {
                if (this.zze != null && this.zzd == null) {
                    zzbbe zzd = zzd(new zzbaz(this), new zzbba(this));
                    this.zzd = zzd;
                    zzd.checkAvailabilityAndConnect();
                }
            } finally {
            }
        }
    }

    public final long zza(zzbbf zzbbfVar) {
        synchronized (this.zzc) {
            try {
                if (this.zzf == null) {
                    return -2L;
                }
                if (this.zzd.zzp()) {
                    try {
                        return this.zzf.zze(zzbbfVar);
                    } catch (RemoteException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to call into cache service.", e);
                    }
                }
                return -2L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbbc zzb(zzbbf zzbbfVar) {
        synchronized (this.zzc) {
            if (this.zzf == null) {
                return new zzbbc();
            }
            try {
                if (this.zzd.zzp()) {
                    return this.zzf.zzg(zzbbfVar);
                }
                return this.zzf.zzf(zzbbfVar);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to call into cache service.", e);
                return new zzbbc();
            }
        }
    }

    @VisibleForTesting
    public final synchronized zzbbe zzd(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzbbe(this.zze, com.google.android.gms.ads.internal.zzv.zzv().zzb(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    public final void zzi(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.zzc) {
            try {
                if (this.zze != null) {
                    return;
                }
                this.zze = context.getApplicationContext();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzew)).booleanValue()) {
                    zzl();
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzev)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzb().zzc(new zzbay(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzex)).booleanValue()) {
            synchronized (this.zzc) {
                try {
                    zzl();
                    ScheduledFuture scheduledFuture = this.zza;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.zza = zzcaa.zzd.schedule(this.zzb, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzey)).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
