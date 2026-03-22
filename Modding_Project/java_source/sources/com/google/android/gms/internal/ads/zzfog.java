package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
final class zzfog implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    protected final zzfpc zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue zzd;
    private final HandlerThread zze;
    private final zzfnx zzf;
    private final long zzg;
    private final int zzh;

    public zzfog(Context context, int i, int i2, String str, String str2, String str3, zzfnx zzfnxVar) {
        this.zzb = str;
        this.zzh = i2;
        this.zzc = str2;
        this.zzf = zzfnxVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        this.zzg = System.currentTimeMillis();
        zzfpc zzfpcVar = new zzfpc(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzfpcVar;
        this.zzd = new LinkedBlockingQueue();
        zzfpcVar.checkAvailabilityAndConnect();
    }

    private final void zzd(int i, long j, Exception exc) {
        this.zzf.zzc(i, System.currentTimeMillis() - j, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfph zzc = zzc();
        if (zzc != null) {
            try {
                zzfpo zzf = zzc.zzf(new zzfpm(1, this.zzh, this.zzb, this.zzc));
                zzd(5011, this.zzg, null);
                this.zzd.put(zzf);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zzd(4012, this.zzg, null);
            this.zzd.put(new zzfpo(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            zzd(4011, this.zzg, null);
            this.zzd.put(new zzfpo(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    public final zzfpo zza(int i) {
        zzfpo zzfpoVar;
        try {
            zzfpoVar = (zzfpo) this.zzd.poll(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzd(2009, this.zzg, e);
            zzfpoVar = null;
        }
        zzd(3004, this.zzg, null);
        if (zzfpoVar != null) {
            if (zzfpoVar.zzc == 7) {
                zzfnx.zzg(3);
            } else {
                zzfnx.zzg(2);
            }
        }
        if (zzfpoVar == null) {
            return new zzfpo(null, 1);
        }
        return zzfpoVar;
    }

    public final void zzb() {
        zzfpc zzfpcVar = this.zza;
        if (zzfpcVar != null) {
            if (zzfpcVar.isConnected() || zzfpcVar.isConnecting()) {
                zzfpcVar.disconnect();
            }
        }
    }

    public final zzfph zzc() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }
}
