package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqy {
    private final zzcn[] zza;
    private final zzrq zzb;
    private final zzcq zzc;

    public zzqy(zzcn... zzcnVarArr) {
        zzrq zzrqVar = new zzrq();
        zzcq zzcqVar = new zzcq();
        this.zza = r2;
        System.arraycopy(zzcnVarArr, 0, r2, 0, 0);
        this.zzb = zzrqVar;
        this.zzc = zzcqVar;
        zzcn[] zzcnVarArr2 = {zzrqVar, zzcqVar};
    }

    public final long zza(long j) {
        zzcq zzcqVar = this.zzc;
        if (zzcqVar.zzg()) {
            return zzcqVar.zzi(j);
        }
        return j;
    }

    public final long zzb() {
        return this.zzb.zzo();
    }

    public final zzbb zzc(zzbb zzbbVar) {
        zzcq zzcqVar = this.zzc;
        zzcqVar.zzk(zzbbVar.zzb);
        zzcqVar.zzj(zzbbVar.zzc);
        return zzbbVar;
    }

    public final boolean zzd(boolean z) {
        this.zzb.zzp(z);
        return z;
    }

    public final zzcn[] zze() {
        return this.zza;
    }
}
