package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzahr {
    private final zzek zza = new zzek(8);
    private int zzb;

    private final long zzb(zzado zzadoVar) throws IOException {
        int i;
        zzek zzekVar = this.zza;
        zzadd zzaddVar = (zzadd) zzadoVar;
        int i2 = 0;
        zzaddVar.zzm(zzekVar.zzN(), 0, 1, false);
        int i3 = zzekVar.zzN()[0] & 255;
        if (i3 != 0) {
            int i4 = 128;
            int i5 = 0;
            while (true) {
                i = i5 + 1;
                if ((i3 & i4) != 0) {
                    break;
                }
                i4 >>= 1;
                i5 = i;
            }
            int i6 = i3 & (~i4);
            zzaddVar.zzm(zzekVar.zzN(), 1, i5, false);
            while (i2 < i5) {
                i2++;
                i6 = (zzekVar.zzN()[i2] & 255) + (i6 << 8);
            }
            this.zzb += i;
            return i6;
        }
        return Long.MIN_VALUE;
    }

    public final boolean zza(zzado zzadoVar) throws IOException {
        long zzb;
        int i;
        long zzd = zzadoVar.zzd();
        int i2 = (zzd > (-1L) ? 1 : (zzd == (-1L) ? 0 : -1));
        long j = 1024;
        if (i2 != 0 && zzd <= 1024) {
            j = zzd;
        }
        zzek zzekVar = this.zza;
        zzadd zzaddVar = (zzadd) zzadoVar;
        zzaddVar.zzm(zzekVar.zzN(), 0, 4, false);
        this.zzb = 4;
        for (long zzu = zzekVar.zzu(); zzu != 440786851; zzu = ((zzu << 8) & (-256)) | (zzekVar.zzN()[0] & 255)) {
            int i3 = (int) j;
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zzaddVar.zzm(zzekVar.zzN(), 0, 1, false);
        }
        long zzb2 = zzb(zzadoVar);
        long j2 = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            long j3 = j2 + zzb2;
            if (i2 == 0 || j3 < zzd) {
                while (true) {
                    int i5 = (this.zzb > j3 ? 1 : (this.zzb == j3 ? 0 : -1));
                    if (i5 < 0) {
                        if (zzb(zzadoVar) == Long.MIN_VALUE || (zzb(zzadoVar)) < 0) {
                            return false;
                        }
                        if (i != 0) {
                            int i6 = (int) zzb;
                            zzaddVar.zzl(i6, false);
                            this.zzb += i6;
                        }
                    } else if (i5 == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
