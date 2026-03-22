package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbx {
    final /* synthetic */ zzbbz zza;
    private final byte[] zzb;
    private int zzc;

    public /* synthetic */ zzbbx(zzbbz zzbbzVar, byte[] bArr, zzbby zzbbyVar) {
        this.zza = zzbbzVar;
        this.zzb = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzd() {
        try {
            zzbbz zzbbzVar = this.zza;
            if (zzbbzVar.zzb) {
                zzbbzVar.zza.zzj(this.zzb);
                zzbbzVar.zza.zzi(0);
                zzbbzVar.zza.zzg(this.zzc);
                zzbbzVar.zza.zzh(null);
                zzbbzVar.zza.zzf();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Clearcut log failed", e);
        }
    }

    public final zzbbx zza(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        ExecutorService executorService;
        executorService = this.zza.zzc;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbw
            @Override // java.lang.Runnable
            public final void run() {
                zzbbx.this.zzd();
            }
        });
    }
}
