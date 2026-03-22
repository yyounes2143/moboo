package com.google.android.gms.internal.measurement;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfh extends zzmf implements zznn {
    private static final zzfh zzh;
    private int zzb;
    private zzfr zzd;
    private zzfl zze;
    private boolean zzf;
    private String zzg = "";

    static {
        zzfh zzfhVar = new zzfh();
        zzh = zzfhVar;
        zzmf.zzcp(zzfh.class, zzfhVar);
    }

    private zzfh() {
    }

    public static zzfh zzi() {
        return zzh;
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final zzfr zzb() {
        zzfr zzfrVar = this.zzd;
        if (zzfrVar == null) {
            return zzfr.zzh();
        }
        return zzfrVar;
    }

    public final boolean zzc() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final zzfl zzd() {
        zzfl zzflVar = this.zze;
        if (zzflVar == null) {
            return zzfl.zzj();
        }
        return zzflVar;
    }

    public final boolean zze() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final String zzh() {
        return this.zzg;
    }

    public final /* synthetic */ void zzj(String str) {
        this.zzb |= 8;
        this.zzg = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzfg(null);
                }
                return new zzfh();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
