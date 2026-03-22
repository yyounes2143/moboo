package com.google.android.gms.internal.measurement;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfl extends zzmf implements zznn {
    private static final zzfl zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        zzfl zzflVar = new zzfl();
        zzi = zzflVar;
        zzmf.zzcp(zzfl.class, zzflVar);
    }

    private zzfl() {
    }

    public static zzfl zzj() {
        return zzi;
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzb() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzc() {
        return this.zze;
    }

    public final boolean zzd() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final String zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final String zzg() {
        return this.zzg;
    }

    public final boolean zzh() {
        if ((this.zzb & 16) != 0) {
            return true;
        }
        return false;
    }

    public final String zzi() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzi;
                        }
                        throw null;
                    }
                    return new zzfi(null);
                }
                return new zzfl();
            }
            return zzmf.zzcq(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", zzfj.zza, "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public final int zzm() {
        int zza = zzfk.zza(this.zzd);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }
}
