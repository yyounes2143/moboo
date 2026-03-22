package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaie {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzek zzf;
    private final zzek zzg;
    private int zzh;
    private int zzi;

    public zzaie(zzek zzekVar, zzek zzekVar2, boolean z) throws zzaz {
        this.zzg = zzekVar;
        this.zzf = zzekVar2;
        this.zze = z;
        zzekVar2.zzL(12);
        this.zza = zzekVar2.zzp();
        zzekVar.zzL(12);
        this.zzi = zzekVar.zzp();
        zzadr.zzb(zzekVar.zzg() == 1, "first_chunk must be 1");
        this.zzb = -1;
    }

    public final boolean zza() {
        long zzu;
        int i = this.zzb + 1;
        this.zzb = i;
        if (i == this.zza) {
            return false;
        }
        if (this.zze) {
            zzu = this.zzf.zzw();
        } else {
            zzu = this.zzf.zzu();
        }
        this.zzd = zzu;
        if (this.zzb == this.zzh) {
            zzek zzekVar = this.zzg;
            this.zzc = zzekVar.zzp();
            zzekVar.zzM(4);
            int i2 = -1;
            int i3 = this.zzi - 1;
            this.zzi = i3;
            if (i3 > 0) {
                i2 = (-1) + zzekVar.zzp();
            }
            this.zzh = i2;
        }
        return true;
    }
}
