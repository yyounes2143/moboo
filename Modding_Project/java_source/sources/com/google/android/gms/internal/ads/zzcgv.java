package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcgv {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzcgv(int i, int i2, int i3) {
        this.zzc = i;
        this.zzb = i2;
        this.zza = i3;
    }

    public static zzcgv zza() {
        return new zzcgv(0, 0, 0);
    }

    public static zzcgv zzb(int i, int i2) {
        return new zzcgv(1, i, i2);
    }

    public static zzcgv zzc(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        if (zzrVar.zzd) {
            return new zzcgv(3, 0, 0);
        }
        if (zzrVar.zzi) {
            return new zzcgv(2, 0, 0);
        }
        if (zzrVar.zzh) {
            return new zzcgv(0, 0, 0);
        }
        return new zzcgv(1, zzrVar.zzf, zzrVar.zzc);
    }

    public static zzcgv zzd() {
        return new zzcgv(5, 0, 0);
    }

    public static zzcgv zze() {
        return new zzcgv(4, 0, 0);
    }

    public final boolean zzf() {
        if (this.zzc == 0) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        if (this.zzc == 2) {
            return true;
        }
        return false;
    }

    public final boolean zzh() {
        if (this.zzc == 5) {
            return true;
        }
        return false;
    }

    public final boolean zzi() {
        if (this.zzc == 3) {
            return true;
        }
        return false;
    }

    public final boolean zzj() {
        if (this.zzc == 4) {
            return true;
        }
        return false;
    }
}
