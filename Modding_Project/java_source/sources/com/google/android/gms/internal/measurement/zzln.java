package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzln implements zzov {
    private final zzlm zza;

    private zzln(zzlm zzlmVar) {
        byte[] bArr = zzmp.zzb;
        this.zza = zzlmVar;
        zzlmVar.zza = this;
    }

    public static zzln zza(zzlm zzlmVar) {
        zzln zzlnVar = zzlmVar.zza;
        if (zzlnVar != null) {
            return zzlnVar;
        }
        return new zzln(zzlmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzA(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zznaVar.size(); i4++) {
                    zznaVar.zzc(i4);
                    i3 += 8;
                }
                zzlmVar.zzr(i3);
                while (i2 < zznaVar.size()) {
                    zzlmVar.zzu(zznaVar.zzc(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zznaVar.size()) {
                this.zza.zzf(i, zznaVar.zzc(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzB(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzly) {
            zzly zzlyVar = (zzly) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzlyVar.size(); i4++) {
                    zzlyVar.zze(i4);
                    i3 += 4;
                }
                zzlmVar.zzr(i3);
                while (i2 < zzlyVar.size()) {
                    zzlmVar.zzs(Float.floatToRawIntBits(zzlyVar.zze(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzlyVar.size()) {
                this.zza.zzd(i, Float.floatToRawIntBits(zzlyVar.zze(i2)));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Float) list.get(i6)).getClass();
                i5 += 4;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzs(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzd(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzC(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzlo) {
            zzlo zzloVar = (zzlo) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzloVar.size(); i4++) {
                    zzloVar.zze(i4);
                    i3 += 8;
                }
                zzlmVar.zzr(i3);
                while (i2 < zzloVar.size()) {
                    zzlmVar.zzu(Double.doubleToRawLongBits(zzloVar.zze(i2)));
                    i2++;
                }
                return;
            }
            while (i2 < zzloVar.size()) {
                this.zza.zzf(i, Double.doubleToRawLongBits(zzloVar.zze(i2)));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Double) list.get(i6)).getClass();
                i5 += 8;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzu(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzD(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    i3 += zzlm.zzA(zzmgVar.zzf(i4));
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    zzlmVar.zzq(zzmgVar.zzf(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                this.zza.zzb(i, zzmgVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzlm.zzA(((Integer) list.get(i6)).intValue());
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzq(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzE(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzkyVar.size(); i4++) {
                    zzkyVar.zze(i4);
                    i3++;
                }
                zzlmVar.zzr(i3);
                while (i2 < zzkyVar.size()) {
                    zzlmVar.zzp(zzkyVar.zze(i2) ? (byte) 1 : (byte) 0);
                    i2++;
                }
                return;
            }
            while (i2 < zzkyVar.size()) {
                this.zza.zzg(i, zzkyVar.zze(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Boolean) list.get(i6)).getClass();
                i5++;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzp(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzg(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzF(int i, List list) throws IOException {
        int i2 = 0;
        if (list instanceof zzmx) {
            zzmx zzmxVar = (zzmx) list;
            while (i2 < list.size()) {
                Object zzc = zzmxVar.zzc();
                if (zzc instanceof String) {
                    this.zza.zzh(i, (String) zzc);
                } else {
                    this.zza.zzi(i, (zzlh) zzc);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzh(i, (String) list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzG(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzi(i, (zzlh) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzH(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    i3 += zzlm.zzz(zzmgVar.zzf(i4));
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    zzlmVar.zzr(zzmgVar.zzf(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                this.zza.zzc(i, zzmgVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzlm.zzz(((Integer) list.get(i6)).intValue());
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzr(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzc(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzI(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    zzmgVar.zzf(i4);
                    i3 += 4;
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    zzlmVar.zzs(zzmgVar.zzf(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                this.zza.zzd(i, zzmgVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzJ(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zznaVar.size(); i4++) {
                    zznaVar.zzc(i4);
                    i3 += 8;
                }
                zzlmVar.zzr(i3);
                while (i2 < zznaVar.size()) {
                    zzlmVar.zzu(zznaVar.zzc(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zznaVar.size()) {
                this.zza.zzf(i, zznaVar.zzc(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Long) list.get(i6)).getClass();
                i5 += 8;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzK(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    int zzf = zzmgVar.zzf(i4);
                    i3 += zzlm.zzz((zzf >> 31) ^ (zzf + zzf));
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    int zzf2 = zzmgVar.zzf(i2);
                    zzlmVar.zzr((zzf2 >> 31) ^ (zzf2 + zzf2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                zzlm zzlmVar2 = this.zza;
                int zzf3 = zzmgVar.zzf(i2);
                zzlmVar2.zzc(i, (zzf3 >> 31) ^ (zzf3 + zzf3));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar3 = this.zza;
            zzlmVar3.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                int intValue = ((Integer) list.get(i6)).intValue();
                i5 += zzlm.zzz((intValue >> 31) ^ (intValue + intValue));
            }
            zzlmVar3.zzr(i5);
            while (i2 < list.size()) {
                int intValue2 = ((Integer) list.get(i2)).intValue();
                zzlmVar3.zzr((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzlm zzlmVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzlmVar4.zzc(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzL(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zznaVar.size(); i4++) {
                    long zzc = zznaVar.zzc(i4);
                    i3 += zzlm.zzA((zzc >> 63) ^ (zzc + zzc));
                }
                zzlmVar.zzr(i3);
                while (i2 < zznaVar.size()) {
                    long zzc2 = zznaVar.zzc(i2);
                    zzlmVar.zzt((zzc2 >> 63) ^ (zzc2 + zzc2));
                    i2++;
                }
                return;
            }
            while (i2 < zznaVar.size()) {
                zzlm zzlmVar2 = this.zza;
                long zzc3 = zznaVar.zzc(i2);
                zzlmVar2.zze(i, (zzc3 >> 63) ^ (zzc3 + zzc3));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar3 = this.zza;
            zzlmVar3.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                long longValue = ((Long) list.get(i6)).longValue();
                i5 += zzlm.zzA((longValue >> 63) ^ (longValue + longValue));
            }
            zzlmVar3.zzr(i5);
            while (i2 < list.size()) {
                long longValue2 = ((Long) list.get(i2)).longValue();
                zzlmVar3.zzt((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                zzlm zzlmVar4 = this.zza;
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzlmVar4.zze(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzM(int i, zzne zzneVar, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            zzlm zzlmVar = this.zza;
            zzlmVar.zza(i, 2);
            zzlmVar.zzr(zznf.zzc(zzneVar, entry.getKey(), entry.getValue()));
            zznf.zzb(zzlmVar, zzneVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzc(int i, long j) throws IOException {
        this.zza.zze(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zze(int i, float f) throws IOException {
        this.zza.zzd(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzf(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzg(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzh(int i, long j) throws IOException {
        this.zza.zze(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzj(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzl(int i, boolean z) throws IOException {
        this.zza.zzg(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzm(int i, String str) throws IOException {
        this.zza.zzh(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzn(int i, zzlh zzlhVar) throws IOException {
        this.zza.zzi(i, zzlhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzo(int i, int i2) throws IOException {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzp(int i, int i2) throws IOException {
        this.zza.zzc(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzq(int i, long j) throws IOException {
        this.zza.zze(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzr(int i, Object obj, zznx zznxVar) throws IOException {
        this.zza.zzl(i, (zznm) obj, zznxVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzs(int i, Object obj, zznx zznxVar) throws IOException {
        zzlm zzlmVar = this.zza;
        zzlmVar.zza(i, 3);
        zznxVar.zzf((zznm) obj, zzlmVar.zza);
        zzlmVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    @Deprecated
    public final void zzt(int i) throws IOException {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    @Deprecated
    public final void zzu(int i) throws IOException {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzv(int i, Object obj) throws IOException {
        if (obj instanceof zzlh) {
            this.zza.zzn(i, (zzlh) obj);
        } else {
            this.zza.zzm(i, (zznm) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzw(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    i3 += zzlm.zzA(zzmgVar.zzf(i4));
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    zzlmVar.zzq(zzmgVar.zzf(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                this.zza.zzb(i, zzmgVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzlm.zzA(((Integer) list.get(i6)).intValue());
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzq(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzx(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zzmgVar.size(); i4++) {
                    zzmgVar.zzf(i4);
                    i3 += 4;
                }
                zzlmVar.zzr(i3);
                while (i2 < zzmgVar.size()) {
                    zzlmVar.zzs(zzmgVar.zzf(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zzmgVar.size()) {
                this.zza.zzd(i, zzmgVar.zzf(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                ((Integer) list.get(i6)).getClass();
                i5 += 4;
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzy(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zznaVar.size(); i4++) {
                    i3 += zzlm.zzA(zznaVar.zzc(i4));
                }
                zzlmVar.zzr(i3);
                while (i2 < zznaVar.size()) {
                    zzlmVar.zzt(zznaVar.zzc(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zznaVar.size()) {
                this.zza.zze(i, zznaVar.zzc(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzlm.zzA(((Long) list.get(i6)).longValue());
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzt(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zze(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzz(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < zznaVar.size(); i4++) {
                    i3 += zzlm.zzA(zznaVar.zzc(i4));
                }
                zzlmVar.zzr(i3);
                while (i2 < zznaVar.size()) {
                    zzlmVar.zzt(zznaVar.zzc(i2));
                    i2++;
                }
                return;
            }
            while (i2 < zznaVar.size()) {
                this.zza.zze(i, zznaVar.zzc(i2));
                i2++;
            }
        } else if (z) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i, 2);
            int i5 = 0;
            for (int i6 = 0; i6 < list.size(); i6++) {
                i5 += zzlm.zzA(((Long) list.get(i6)).longValue());
            }
            zzlmVar2.zzr(i5);
            while (i2 < list.size()) {
                zzlmVar2.zzt(((Long) list.get(i2)).longValue());
                i2++;
            }
        } else {
            while (i2 < list.size()) {
                this.zza.zze(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }
}
