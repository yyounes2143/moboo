package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaef {
    public int zza;
    @Nullable
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public int zzg;

    public zzaef() {
    }

    public final boolean zza(int i) {
        boolean zzm;
        int i2;
        int i3;
        int i4;
        int i5;
        String[] strArr;
        int[] iArr;
        int zzl;
        int[] iArr2;
        int[] iArr3;
        int i6;
        int[] iArr4;
        int[] iArr5;
        int i7;
        int[] iArr6;
        zzm = zzaeg.zzm(i);
        if (zzm && (i2 = (i >>> 19) & 3) != 1 && (i3 = (i >>> 17) & 3) != 0 && (i4 = (i >>> 12) & 15) != 0 && i4 != 15 && (i5 = (i >>> 10) & 3) != 3) {
            int i8 = i4 - 1;
            this.zza = i2;
            strArr = zzaeg.zza;
            this.zzb = strArr[3 - i3];
            iArr = zzaeg.zzb;
            int i9 = iArr[i5];
            this.zzd = i9;
            int i10 = 2;
            if (i2 == 2) {
                i9 /= 2;
                this.zzd = i9;
            } else if (i2 == 0) {
                i9 /= 4;
                this.zzd = i9;
            }
            int i11 = (i >>> 9) & 1;
            zzl = zzaeg.zzl(i2, i3);
            this.zzg = zzl;
            if (i3 == 3) {
                if (i2 == 3) {
                    iArr6 = zzaeg.zzc;
                    i7 = iArr6[i8];
                } else {
                    iArr5 = zzaeg.zzd;
                    i7 = iArr5[i8];
                }
                this.zzf = i7;
                this.zzc = (((i7 * 12) / i9) + i11) * 4;
            } else {
                int i12 = 144;
                if (i2 != 3) {
                    iArr2 = zzaeg.zzg;
                    int i13 = iArr2[i8];
                    this.zzf = i13;
                    if (i3 == 1) {
                        i12 = 72;
                    }
                    this.zzc = ((i12 * i13) / i9) + i11;
                } else {
                    if (i3 == 2) {
                        iArr4 = zzaeg.zze;
                        i6 = iArr4[i8];
                    } else {
                        iArr3 = zzaeg.zzf;
                        i6 = iArr3[i8];
                    }
                    this.zzf = i6;
                    this.zzc = ((i6 * 144) / i9) + i11;
                }
            }
            if (((i >> 6) & 3) == 3) {
                i10 = 1;
            }
            this.zze = i10;
            return true;
        }
        return false;
    }

    public zzaef(zzaef zzaefVar) {
        this.zza = zzaefVar.zza;
        this.zzb = zzaefVar.zzb;
        this.zzc = zzaefVar.zzc;
        this.zzd = zzaefVar.zzd;
        this.zze = zzaefVar.zze;
        this.zzf = zzaefVar.zzf;
        this.zzg = zzaefVar.zzg;
    }
}
