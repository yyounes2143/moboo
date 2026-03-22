package com.google.android.gms.internal.measurement;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhg extends zzmf implements zznn {
    private static final zzhg zzh;
    private int zzb;
    private int zzd;
    private zzii zze;
    private zzii zzf;
    private boolean zzg;

    static {
        zzhg zzhgVar = new zzhg();
        zzh = zzhgVar;
        zzmf.zzcp(zzhg.class, zzhgVar);
    }

    private zzhg() {
    }

    public static zzhf zzh() {
        return (zzhf) zzh.zzck();
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final zzii zzc() {
        zzii zziiVar = this.zze;
        if (zziiVar == null) {
            return zzii.zzj();
        }
        return zziiVar;
    }

    public final boolean zzd() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final zzii zze() {
        zzii zziiVar = this.zzf;
        if (zziiVar == null) {
            return zzii.zzj();
        }
        return zziiVar;
    }

    public final boolean zzf() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        return this.zzg;
    }

    public final /* synthetic */ void zzi(int i) {
        this.zzb |= 1;
        this.zzd = i;
    }

    public final /* synthetic */ void zzj(zzii zziiVar) {
        zziiVar.getClass();
        this.zze = zziiVar;
        this.zzb |= 2;
    }

    public final /* synthetic */ void zzk(zzii zziiVar) {
        this.zzf = zziiVar;
        this.zzb |= 4;
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
                    return new zzhf(null);
                }
                return new zzhg();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void zzm(boolean z) {
        this.zzb |= 8;
        this.zzg = z;
    }
}
