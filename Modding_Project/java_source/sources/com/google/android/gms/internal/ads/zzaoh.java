package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaoh {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzek zzekVar, int i, int i2) {
        zzekVar.zzL(i);
        if (zzekVar.zza() >= 5) {
            int zzg = zzekVar.zzg();
            if ((8388608 & zzg) == 0 && ((zzg >> 8) & 8191) == i2 && (zzg & 32) != 0 && zzekVar.zzm() >= 7 && zzekVar.zza() >= 7 && (zzekVar.zzm() & 16) == 16) {
                byte[] bArr = new byte[6];
                zzekVar.zzH(bArr, 0, 6);
                long j = bArr[3] & 255;
                return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }
}
