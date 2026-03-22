package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgs implements zzjw {
    private final zzgr zza;

    private zzgs(zzgr zzgrVar) {
        byte[] bArr = zzhp.zzb;
        this.zza = zzgrVar;
        zzgrVar.zza = this;
    }

    public static zzgs zza(zzgr zzgrVar) {
        zzgs zzgsVar = zzgrVar.zza;
        if (zzgsVar != null) {
            return zzgsVar;
        }
        return new zzgs(zzgrVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzA(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzibVar.size(); i4++) {
                    zzibVar.zze(i4);
                    i3 += 8;
                }
                this.zza.zzt(i3);
                while (i2 < zzibVar.size()) {
                    this.zza.zzi(zzibVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzibVar.size()) {
                this.zza.zzh(i, zzibVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzi(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzB(int i, int i2) throws IOException {
        this.zza.zzs(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzC(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    int zze = zzhlVar.zze(i4);
                    i3 += zzgr.zzz((zze >> 31) ^ (zze + zze));
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    zzgr zzgrVar = this.zza;
                    int zze2 = zzhlVar.zze(i2);
                    zzgrVar.zzt((zze2 >> 31) ^ (zze2 + zze2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                zzgr zzgrVar2 = this.zza;
                int zze3 = zzhlVar.zze(i2);
                zzgrVar2.zzs(i, (zze3 >> 31) ^ (zze3 + zze3));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                int intValue = ((Integer) list.get(i6)).intValue();
                i5 += zzgr.zzz((intValue >> 31) ^ (intValue + intValue));
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                zzgr zzgrVar3 = this.zza;
                int intValue2 = ((Integer) list.get(i2)).intValue();
                zzgrVar3.zzt((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzgr zzgrVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzgrVar4.zzs(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzD(int i, long j) throws IOException {
        this.zza.zzu(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzE(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzibVar.size(); i4++) {
                    long zze = zzibVar.zze(i4);
                    i3 += zzgr.zzA((zze >> 63) ^ (zze + zze));
                }
                this.zza.zzt(i3);
                while (i2 < zzibVar.size()) {
                    zzgr zzgrVar = this.zza;
                    long zze2 = zzibVar.zze(i2);
                    zzgrVar.zzv((zze2 >> 63) ^ (zze2 + zze2));
                    i2++;
                }
                return;
            }
            while (i2 < zzibVar.size()) {
                zzgr zzgrVar2 = this.zza;
                long zze3 = zzibVar.zze(i2);
                zzgrVar2.zzu(i, (zze3 >> 63) ^ (zze3 + zze3));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                long longValue = ((Long) list.get(i6)).longValue();
                i5 += zzgr.zzA((longValue >> 63) ^ (longValue + longValue));
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                zzgr zzgrVar3 = this.zza;
                long longValue2 = ((Long) list.get(i2)).longValue();
                zzgrVar3.zzv((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzgr zzgrVar4 = this.zza;
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzgrVar4.zzu(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    @Deprecated
    public final void zzF(int i) throws IOException {
        this.zza.zzr(i, 3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzG(int i, String str) throws IOException {
        this.zza.zzp(i, str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzH(int i, List list) throws IOException {
        int i2 = 0;
        if (list instanceof zzhy) {
            zzhy zzhyVar = (zzhy) list;
            while (i2 < list.size()) {
                Object zzc = zzhyVar.zzc();
                if (zzc instanceof String) {
                    this.zza.zzp(i, (String) zzc);
                } else {
                    this.zza.zze(i, (zzgk) zzc);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzp(i, (String) list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzI(int i, int i2) throws IOException {
        this.zza.zzs(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzJ(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    i3 += zzgr.zzz(zzhlVar.zze(i4));
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    this.zza.zzt(zzhlVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                this.zza.zzs(i, zzhlVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgr.zzz(((Integer) list.get(i6)).intValue());
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzt(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzs(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzK(int i, long j) throws IOException {
        this.zza.zzu(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzL(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzibVar.size(); i4++) {
                    i3 += zzgr.zzA(zzibVar.zze(i4));
                }
                this.zza.zzt(i3);
                while (i2 < zzibVar.size()) {
                    this.zza.zzv(zzibVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzibVar.size()) {
                this.zza.zzu(i, zzibVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgr.zzA(((Long) list.get(i6)).longValue());
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzu(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzd(i, z);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzc(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgb) {
            zzgb zzgbVar = (zzgb) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgbVar.size(); i4++) {
                    zzgbVar.zzf(i4);
                    i3++;
                }
                this.zza.zzt(i3);
                while (i2 < zzgbVar.size()) {
                    this.zza.zzb(zzgbVar.zzf(i2) ? (byte) 1 : (byte) 0);
                    i2++;
                }
                return;
            }
            while (i2 < zzgbVar.size()) {
                this.zza.zzd(i, zzgbVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Boolean) list.get(i6)).getClass();
                i5++;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzb(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzd(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzd(int i, zzgk zzgkVar) throws IOException {
        this.zza.zze(i, zzgkVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zze(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zze(i, (zzgk) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzh(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzg(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzgt) {
            zzgt zzgtVar = (zzgt) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzgtVar.size(); i4++) {
                    zzgtVar.zze(i4);
                    i3 += 8;
                }
                this.zza.zzt(i3);
                while (i2 < zzgtVar.size()) {
                    this.zza.zzi(Double.doubleToRawLongBits(zzgtVar.zze(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzgtVar.size()) {
                this.zza.zzh(i, Double.doubleToRawLongBits(zzgtVar.zze(i2)));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Double) list.get(i6)).getClass();
                i5 += 8;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    @Deprecated
    public final void zzh(int i) throws IOException {
        this.zza.zzr(i, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzj(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    i3 += zzgr.zzA(zzhlVar.zze(i4));
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    this.zza.zzk(zzhlVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                this.zza.zzj(i, zzhlVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgr.zzA(((Integer) list.get(i6)).intValue());
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzk(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzl(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    zzhlVar.zze(i4);
                    i3 += 4;
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    this.zza.zzg(zzhlVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                this.zza.zzf(i, zzhlVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzg(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzm(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzn(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzibVar.size(); i4++) {
                    zzibVar.zze(i4);
                    i3 += 8;
                }
                this.zza.zzt(i3);
                while (i2 < zzibVar.size()) {
                    this.zza.zzi(zzibVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzibVar.size()) {
                this.zza.zzh(i, zzibVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzi(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzo(int i, float f) throws IOException {
        this.zza.zzf(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzp(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhd) {
            zzhd zzhdVar = (zzhd) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhdVar.size(); i4++) {
                    zzhdVar.zze(i4);
                    i3 += 4;
                }
                this.zza.zzt(i3);
                while (i2 < zzhdVar.size()) {
                    this.zza.zzg(Float.floatToRawIntBits(zzhdVar.zze(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzhdVar.size()) {
                this.zza.zzf(i, Float.floatToRawIntBits(zzhdVar.zze(i2)));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Float) list.get(i6)).getClass();
                i5 += 4;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzq(int i, Object obj, zzix zzixVar) throws IOException {
        zzgr zzgrVar = this.zza;
        zzgrVar.zzr(i, 3);
        zzixVar.zzi((zzim) obj, zzgrVar.zza);
        zzgrVar.zzr(i, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzs(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    i3 += zzgr.zzA(zzhlVar.zze(i4));
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    this.zza.zzk(zzhlVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                this.zza.zzj(i, zzhlVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgr.zzA(((Integer) list.get(i6)).intValue());
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzk(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzt(int i, long j) throws IOException {
        this.zza.zzu(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzu(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzibVar.size(); i4++) {
                    i3 += zzgr.zzA(zzibVar.zze(i4));
                }
                this.zza.zzt(i3);
                while (i2 < zzibVar.size()) {
                    this.zza.zzv(zzibVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzibVar.size()) {
                this.zza.zzu(i, zzibVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzgr.zzA(((Long) list.get(i6)).longValue());
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzu(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzv(int i, Object obj, zzix zzixVar) throws IOException {
        this.zza.zzm(i, (zzim) obj, zzixVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzw(int i, Object obj) throws IOException {
        if (obj instanceof zzgk) {
            this.zza.zzo(i, (zzgk) obj);
        } else {
            this.zza.zzn(i, (zzim) obj);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzx(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzy(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            if (z) {
                this.zza.zzr(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzhlVar.size(); i4++) {
                    zzhlVar.zze(i4);
                    i3 += 4;
                }
                this.zza.zzt(i3);
                while (i2 < zzhlVar.size()) {
                    this.zza.zzg(zzhlVar.zze(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzhlVar.size()) {
                this.zza.zzf(i, zzhlVar.zze(i2));
                i2++;
            }
        } else if (z) {
            this.zza.zzr(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            this.zza.zzt(i5);
            while (i2 < list.size()) {
                this.zza.zzg(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjw
    public final void zzz(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }
}
