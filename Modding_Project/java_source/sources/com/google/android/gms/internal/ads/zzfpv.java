package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfpv {
    final /* synthetic */ zzfpx zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzfpv(zzfpx zzfpxVar, byte[] bArr, zzfpw zzfpwVar) {
        this.zza = zzfpxVar;
        this.zzb = bArr;
    }

    public final zzfpv zza(int i) {
        this.zzd = i;
        return this;
    }

    public final zzfpv zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzfpx zzfpxVar = this.zza;
            if (zzfpxVar.zzb) {
                zzfqa zzfqaVar = zzfpxVar.zza;
                zzfqaVar.zzj(this.zzb);
                zzfqaVar.zzi(this.zzc);
                zzfqaVar.zzg(this.zzd);
                zzfqaVar.zzh(null);
                zzfqaVar.zzf();
            }
        } catch (RemoteException unused) {
        }
    }
}
