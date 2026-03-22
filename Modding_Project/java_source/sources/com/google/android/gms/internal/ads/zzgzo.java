package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgzo {
    protected volatile zzhad zza;
    private volatile zzgxk zzb;
    private volatile boolean zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgzo)) {
            return false;
        }
        zzgzo zzgzoVar = (zzgzo) obj;
        zzhad zzhadVar = this.zza;
        zzhad zzhadVar2 = zzgzoVar.zza;
        if (zzhadVar == null && zzhadVar2 == null) {
            return zzb().equals(zzgzoVar.zzb());
        }
        if (zzhadVar != null && zzhadVar2 != null) {
            return zzhadVar.equals(zzhadVar2);
        }
        if (zzhadVar != null) {
            zzgzoVar.zzd(zzhadVar.zzbt());
            return zzhadVar.equals(zzgzoVar.zza);
        }
        zzd(zzhadVar2.zzbt());
        return this.zza.equals(zzhadVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzb != null) {
            return ((zzgxh) this.zzb).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzaY();
        }
        return 0;
    }

    public final zzgxk zzb() {
        if (this.zzb != null) {
            return this.zzb;
        }
        synchronized (this) {
            try {
                if (this.zzb != null) {
                    return this.zzb;
                }
                if (this.zza == null) {
                    this.zzb = zzgxk.zzb;
                } else {
                    this.zzb = this.zza.zzaN();
                }
                return this.zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzhad zzc(zzhad zzhadVar) {
        zzhad zzhadVar2 = this.zza;
        this.zzb = null;
        this.zza = zzhadVar;
        return zzhadVar2;
    }

    public final void zzd(zzhad zzhadVar) {
        if (this.zza == null) {
            synchronized (this) {
                if (this.zza != null) {
                    return;
                }
                try {
                    this.zza = zzhadVar;
                    this.zzb = zzgxk.zzb;
                } catch (zzgzh unused) {
                    this.zzc = true;
                    this.zza = zzhadVar;
                    this.zzb = zzgxk.zzb;
                }
            }
        }
    }
}
