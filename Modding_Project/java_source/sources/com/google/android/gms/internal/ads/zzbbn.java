package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbn implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbbf zza;
    final /* synthetic */ zzcaf zzb;
    final /* synthetic */ zzbbp zzc;

    public zzbbn(zzbbp zzbbpVar, zzbbf zzbbfVar, zzcaf zzcafVar) {
        this.zza = zzbbfVar;
        this.zzb = zzcafVar;
        this.zzc = zzbbpVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        boolean z;
        final zzbbe zzbbeVar;
        zzbbp zzbbpVar = this.zzc;
        obj = zzbbpVar.zzd;
        synchronized (obj) {
            try {
                z = zzbbpVar.zzb;
                if (!z) {
                    zzbbpVar.zzb = true;
                    zzbbeVar = zzbbpVar.zza;
                    if (zzbbeVar == null) {
                        return;
                    }
                    zzgdj zzgdjVar = zzcaa.zza;
                    final zzbbf zzbbfVar = this.zza;
                    final zzcaf zzcafVar = this.zzb;
                    final ListenableFuture zza = zzgdjVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbk
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbbc zzf;
                            zzbbn zzbbnVar = zzbbn.this;
                            zzbbe zzbbeVar2 = zzbbeVar;
                            zzcaf zzcafVar2 = zzcafVar;
                            try {
                                zzbbh zzq = zzbbeVar2.zzq();
                                boolean zzp = zzbbeVar2.zzp();
                                zzbbf zzbbfVar2 = zzbbfVar;
                                if (zzp) {
                                    zzf = zzq.zzg(zzbbfVar2);
                                } else {
                                    zzf = zzq.zzf(zzbbfVar2);
                                }
                                if (!zzf.zze()) {
                                    zzcafVar2.zzd(new RuntimeException("No entry contents."));
                                    zzbbp.zze(zzbbnVar.zzc);
                                    return;
                                }
                                zzbbm zzbbmVar = new zzbbm(zzbbnVar, zzf.zzc(), 1);
                                int read = zzbbmVar.read();
                                if (read != -1) {
                                    zzbbmVar.unread(read);
                                    zzcafVar2.zzc(zzbbr.zzb(zzbbmVar, zzf.zzd(), zzf.zzg(), zzf.zza(), zzf.zzf()));
                                    return;
                                }
                                throw new IOException("Unable to read from cache.");
                            } catch (RemoteException e) {
                                e = e;
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                                zzcafVar2.zzd(e);
                                zzbbp.zze(zzbbnVar.zzc);
                            } catch (IOException e2) {
                                e = e2;
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to obtain a cache service instance.", e);
                                zzcafVar2.zzd(e);
                                zzbbp.zze(zzbbnVar.zzc);
                            }
                        }
                    });
                    zzcafVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbl
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (zzcaf.this.isCancelled()) {
                                zza.cancel(true);
                            }
                        }
                    }, zzcaa.zzg);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
