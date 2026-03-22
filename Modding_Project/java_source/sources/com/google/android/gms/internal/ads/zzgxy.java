package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgxy implements zzhbx {
    private final zzgxx zza;

    private zzgxy(zzgxx zzgxxVar) {
        zzgzf.zzc(zzgxxVar, "output");
        this.zza = zzgxxVar;
        zzgxxVar.zze = this;
    }

    public static zzgxy zza(zzgxx zzgxxVar) {
        zzgxy zzgxyVar = zzgxxVar.zze;
        if (zzgxyVar != null) {
            return zzgxyVar;
        }
        return new zzgxy(zzgxxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzA(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgzsVar.size(); i4++) {
                    zzgzsVar.zza(i4);
                    i3 += 8;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgzsVar.size()) {
                    zzgxxVar.zzk(zzgzsVar.zza(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgzsVar.size()) {
                this.zza.zzj(i, zzgzsVar.zza(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzB(int i, int i2) throws IOException {
        this.zza.zzt(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzC(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    int zzd = zzgytVar.zzd(i4);
                    i3 += zzgxx.zzD((zzd >> 31) ^ (zzd + zzd));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    int zzd2 = zzgytVar.zzd(i2);
                    zzgxxVar.zzu((zzd2 >> 31) ^ (zzd2 + zzd2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                zzgxx zzgxxVar2 = this.zza;
                int zzd3 = zzgytVar.zzd(i2);
                zzgxxVar2.zzt(i, (zzd3 >> 31) ^ (zzd3 + zzd3));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar3 = this.zza;
            zzgxxVar3.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                int intValue = ((Integer) list.get(i6)).intValue();
                i5 += zzgxx.zzD((intValue >> 31) ^ (intValue + intValue));
            }
            zzgxxVar3.zzu(i5);
            while (i2 < list.size()) {
                int intValue2 = ((Integer) list.get(i2)).intValue();
                zzgxxVar3.zzu((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzgxx zzgxxVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzgxxVar4.zzt(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzD(int i, long j) throws IOException {
        this.zza.zzv(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzE(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgzsVar.size(); i4++) {
                    long zza = zzgzsVar.zza(i4);
                    i3 += zzgxx.zzE((zza >> 63) ^ (zza + zza));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgzsVar.size()) {
                    long zza2 = zzgzsVar.zza(i2);
                    zzgxxVar.zzw((zza2 >> 63) ^ (zza2 + zza2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgzsVar.size()) {
                zzgxx zzgxxVar2 = this.zza;
                long zza3 = zzgzsVar.zza(i2);
                zzgxxVar2.zzv(i, (zza3 >> 63) ^ (zza3 + zza3));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar3 = this.zza;
            zzgxxVar3.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                long longValue = ((Long) list.get(i6)).longValue();
                i5 += zzgxx.zzE((longValue >> 63) ^ (longValue + longValue));
            }
            zzgxxVar3.zzu(i5);
            while (i2 < list.size()) {
                long longValue2 = ((Long) list.get(i2)).longValue();
                zzgxxVar3.zzw((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzgxx zzgxxVar4 = this.zza;
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzgxxVar4.zzv(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    @Deprecated
    public final void zzF(int i) throws IOException {
        this.zza.zzs(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzG(int i, String str) throws IOException {
        this.zza.zzq(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzH(int i, List list) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzp) {
            zzgzp zzgzpVar = (zzgzp) list;
            while (i2 < list.size()) {
                Object zzc = zzgzpVar.zzc();
                if (zzc instanceof String) {
                    this.zza.zzq(i, (String) zzc);
                } else {
                    this.zza.zzN(i, (zzgxk) zzc);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzq(i, (String) list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzI(int i, int i2) throws IOException {
        this.zza.zzt(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzJ(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    i3 += zzgxx.zzD(zzgytVar.zzd(i4));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    zzgxxVar.zzu(zzgytVar.zzd(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                this.zza.zzt(i, zzgytVar.zzd(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgxx.zzD(((Integer) list.get(i6)).intValue());
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzt(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzK(int i, long j) throws IOException {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzL(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgzsVar.size(); i4++) {
                    i3 += zzgxx.zzE(zzgzsVar.zza(i4));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgzsVar.size()) {
                    zzgxxVar.zzw(zzgzsVar.zza(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgzsVar.size()) {
                this.zza.zzv(i, zzgzsVar.zza(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgxx.zzE(((Long) list.get(i6)).longValue());
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzM(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzc(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgxa) {
            zzgxa zzgxaVar = (zzgxa) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgxaVar.size(); i4++) {
                    zzgxaVar.zzh(i4);
                    i3++;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgxaVar.size()) {
                    zzgxxVar.zzL(zzgxaVar.zzh(i2) ? (byte) 1 : (byte) 0);
                    i2++;
                }
                return;
            }
            while (i2 < zzgxaVar.size()) {
                this.zza.zzM(i, zzgxaVar.zzh(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Boolean) list.get(i6)).getClass();
                i5++;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzL(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzM(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzd(int i, zzgxk zzgxkVar) throws IOException {
        this.zza.zzN(i, zzgxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zze(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzN(i, (zzgxk) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzj(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzg(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgxz) {
            zzgxz zzgxzVar = (zzgxz) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgxzVar.size(); i4++) {
                    zzgxzVar.zzd(i4);
                    i3 += 8;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgxzVar.size()) {
                    zzgxxVar.zzk(Double.doubleToRawLongBits(zzgxzVar.zzd(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzgxzVar.size()) {
                this.zza.zzj(i, Double.doubleToRawLongBits(zzgxzVar.zzd(i2)));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Double) list.get(i6)).getClass();
                i5 += 8;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    @Deprecated
    public final void zzh(int i) throws IOException {
        this.zza.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzj(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    i3 += zzgxx.zzE(zzgytVar.zzd(i4));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    zzgxxVar.zzm(zzgytVar.zzd(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                this.zza.zzl(i, zzgytVar.zzd(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgxx.zzE(((Integer) list.get(i6)).intValue());
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzl(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    zzgytVar.zzd(i4);
                    i3 += 4;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    zzgxxVar.zzi(zzgytVar.zzd(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                this.zza.zzh(i, zzgytVar.zzd(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzm(int i, long j) throws IOException {
        this.zza.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzn(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgzsVar.size(); i4++) {
                    zzgzsVar.zza(i4);
                    i3 += 8;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgzsVar.size()) {
                    zzgxxVar.zzk(zzgzsVar.zza(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgzsVar.size()) {
                this.zza.zzj(i, zzgzsVar.zza(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzo(int i, float f) throws IOException {
        this.zza.zzh(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzp(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyj) {
            zzgyj zzgyjVar = (zzgyj) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgyjVar.size(); i4++) {
                    zzgyjVar.zzd(i4);
                    i3 += 4;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgyjVar.size()) {
                    zzgxxVar.zzi(Float.floatToRawIntBits(zzgyjVar.zzd(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzgyjVar.size()) {
                this.zza.zzh(i, Float.floatToRawIntBits(zzgyjVar.zzd(i2)));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Float) list.get(i6)).getClass();
                i5 += 4;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzq(int i, Object obj, zzhaw zzhawVar) throws IOException {
        zzgxx zzgxxVar = this.zza;
        zzgxxVar.zzs(i, 3);
        zzhawVar.zzj((zzhad) obj, zzgxxVar.zze);
        zzgxxVar.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzs(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    i3 += zzgxx.zzE(zzgytVar.zzd(i4));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    zzgxxVar.zzm(zzgytVar.zzd(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                this.zza.zzl(i, zzgytVar.zzd(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgxx.zzE(((Integer) list.get(i6)).intValue());
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzt(int i, long j) throws IOException {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzu(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgzsVar.size(); i4++) {
                    i3 += zzgxx.zzE(zzgzsVar.zza(i4));
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgzsVar.size()) {
                    zzgxxVar.zzw(zzgzsVar.zza(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgzsVar.size()) {
                this.zza.zzv(i, zzgzsVar.zza(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgxx.zzE(((Long) list.get(i6)).longValue());
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzv(int i, Object obj, zzhaw zzhawVar) throws IOException {
        this.zza.zzn(i, (zzhad) obj, zzhawVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzw(int i, Object obj) throws IOException {
        if (obj instanceof zzgxk) {
            this.zza.zzp(i, (zzgxk) obj);
        } else {
            this.zza.zzo(i, (zzhad) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzx(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzy(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            if (z) {
                zzgxx zzgxxVar = this.zza;
                zzgxxVar.zzs(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgytVar.size(); i4++) {
                    zzgytVar.zzd(i4);
                    i3 += 4;
                }
                zzgxxVar.zzu(i3);
                while (i2 < zzgytVar.size()) {
                    zzgxxVar.zzi(zzgytVar.zzd(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzgytVar.size()) {
                this.zza.zzh(i, zzgytVar.zzd(i2));
                i2++;
            }
        } else if (z) {
            zzgxx zzgxxVar2 = this.zza;
            zzgxxVar2.zzs(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            zzgxxVar2.zzu(i5);
            while (i2 < list.size()) {
                zzgxxVar2.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbx
    public final void zzz(int i, long j) throws IOException {
        this.zza.zzj(i, j);
    }
}
