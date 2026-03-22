package com.google.android.gms.internal.measurement;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzha extends zzmf implements zznn {
    private static final zzha zzn;
    private int zzb;
    private long zzg;
    private long zzk;
    private zzng zzl = zzng.zza();
    private zzng zzm = zzng.zza();
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        zzha zzhaVar = new zzha();
        zzn = zzhaVar;
        zzmf.zzcp(zzha.class, zzhaVar);
    }

    private zzha() {
    }

    public static zzgx zzr() {
        return (zzgx) zzn.zzck();
    }

    public static zzha zzs() {
        return zzn;
    }

    public final /* synthetic */ void zzA(String str) {
        this.zzb |= 16;
        this.zzh = str;
    }

    public final /* synthetic */ void zzB() {
        this.zzb &= -17;
        this.zzh = zzn.zzh;
    }

    public final /* synthetic */ void zzC(String str) {
        this.zzb |= 32;
        this.zzi = str;
    }

    public final /* synthetic */ void zzD() {
        this.zzb &= -33;
        this.zzi = zzn.zzi;
    }

    public final /* synthetic */ void zzE(String str) {
        this.zzb |= 64;
        this.zzj = str;
    }

    public final /* synthetic */ void zzF() {
        this.zzb &= -65;
        this.zzj = zzn.zzj;
    }

    public final /* synthetic */ void zzG(long j) {
        this.zzb |= 128;
        this.zzk = j;
    }

    public final /* synthetic */ Map zzH() {
        if (!this.zzl.zze()) {
            this.zzl = this.zzl.zzc();
        }
        return this.zzl;
    }

    public final /* synthetic */ Map zzI() {
        if (!this.zzm.zze()) {
            this.zzm = this.zzm.zzc();
        }
        return this.zzm;
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final long zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        if ((this.zzb & 16) != 0) {
            return true;
        }
        return false;
    }

    public final String zzj() {
        return this.zzh;
    }

    public final boolean zzk() {
        if ((this.zzb & 32) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzn;
                        }
                        throw null;
                    }
                    return new zzgx(null);
                }
                return new zzha();
            }
            return zzmf.zzcq(zzn, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007\t2\n2", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzgy.zza, "zzm", zzgz.zza});
        }
        return (byte) 1;
    }

    public final String zzm() {
        return this.zzi;
    }

    public final boolean zzn() {
        if ((this.zzb & 64) != 0) {
            return true;
        }
        return false;
    }

    public final String zzo() {
        return this.zzj;
    }

    public final boolean zzp() {
        if ((this.zzb & 128) != 0) {
            return true;
        }
        return false;
    }

    public final long zzq() {
        return this.zzk;
    }

    public final /* synthetic */ void zzt(String str) {
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzu() {
        this.zzb &= -2;
        this.zzd = zzn.zzd;
    }

    public final /* synthetic */ void zzv(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zzw() {
        this.zzb &= -3;
        this.zze = zzn.zze;
    }

    public final /* synthetic */ void zzx(String str) {
        this.zzb |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void zzy() {
        this.zzb &= -5;
        this.zzf = zzn.zzf;
    }

    public final /* synthetic */ void zzz(long j) {
        this.zzb |= 8;
        this.zzg = j;
    }
}
