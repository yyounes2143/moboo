package com.google.android.gms.internal.ads;

import android.util.Pair;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzhq extends zzbl {
    private final int zzb;
    private final zzww zzc;

    public zzhq(boolean z, zzww zzwwVar) {
        this.zzc = zzwwVar;
        this.zzb = zzwwVar.zzc();
    }

    private final int zzw(int i, boolean z) {
        if (z) {
            return this.zzc.zzd(i);
        }
        if (i >= this.zzb - 1) {
            return -1;
        }
        return i + 1;
    }

    private final int zzx(int i, boolean z) {
        if (z) {
            return this.zzc.zze(i);
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        int zza;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int zzp = zzp(obj2);
            if (zzp != -1 && (zza = zzu(zzp).zza(obj3)) != -1) {
                return zzs(zzp) + zza;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i, zzbj zzbjVar, boolean z) {
        int zzq = zzq(i);
        int zzt = zzt(zzq);
        zzu(zzq).zzd(i - zzs(zzq), zzbjVar, z);
        zzbjVar.zzc += zzt;
        if (z) {
            Object zzv = zzv(zzq);
            Object obj = zzbjVar.zzb;
            obj.getClass();
            zzbjVar.zzb = Pair.create(zzv, obj);
        }
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i, zzbk zzbkVar, long j) {
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzs = zzs(zzr);
        zzu(zzr).zze(i - zzt, zzbkVar, j);
        Object zzv = zzv(zzr);
        if (!zzbk.zza.equals(zzbkVar.zzb)) {
            zzv = Pair.create(zzv, zzbkVar.zzb);
        }
        zzbkVar.zzb = zzv;
        zzbkVar.zzn += zzs;
        zzbkVar.zzo += zzs;
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i) {
        int zzq = zzq(i);
        return Pair.create(zzv(zzq), zzu(zzq).zzf(i - zzs(zzq)));
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzg(boolean z) {
        int i;
        if (this.zzb == 0) {
            return -1;
        }
        if (z) {
            i = this.zzc.zza();
        } else {
            i = 0;
        }
        while (zzu(i).zzo()) {
            i = zzw(i, z);
            if (i == -1) {
                return -1;
            }
        }
        return zzt(i) + zzu(i).zzg(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzh(boolean z) {
        int i;
        int i2 = this.zzb;
        if (i2 == 0) {
            return -1;
        }
        if (z) {
            i = this.zzc.zzb();
        } else {
            i = i2 - 1;
        }
        while (zzu(i).zzo()) {
            i = zzx(i, z);
            if (i == -1) {
                return -1;
            }
        }
        return zzt(i) + zzu(i).zzh(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzj(int i, int i2, boolean z) {
        int i3;
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        zzbl zzu = zzu(zzr);
        int i4 = i - zzt;
        if (i2 == 2) {
            i3 = 0;
        } else {
            i3 = i2;
        }
        int zzj = zzu.zzj(i4, i3, z);
        if (zzj != -1) {
            return zzt + zzj;
        }
        int zzw = zzw(zzr, z);
        while (zzw != -1 && zzu(zzw).zzo()) {
            zzw = zzw(zzw, z);
        }
        if (zzw != -1) {
            return zzt(zzw) + zzu(zzw).zzg(z);
        }
        if (i2 != 2) {
            return -1;
        }
        return zzg(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzk(int i, int i2, boolean z) {
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzk = zzu(zzr).zzk(i - zzt, 0, false);
        if (zzk != -1) {
            return zzt + zzk;
        }
        int zzx = zzx(zzr, false);
        while (zzx != -1 && zzu(zzx).zzo()) {
            zzx = zzx(zzx, false);
        }
        if (zzx == -1) {
            return -1;
        }
        return zzt(zzx) + zzu(zzx).zzh(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbj zzn(Object obj, zzbj zzbjVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int zzp = zzp(obj2);
        int zzt = zzt(zzp);
        zzu(zzp).zzn(obj3, zzbjVar);
        zzbjVar.zzc += zzt;
        zzbjVar.zzb = obj;
        return zzbjVar;
    }

    public abstract int zzp(Object obj);

    public abstract int zzq(int i);

    public abstract int zzr(int i);

    public abstract int zzs(int i);

    public abstract int zzt(int i);

    public abstract zzbl zzu(int i);

    public abstract Object zzv(int i);
}
