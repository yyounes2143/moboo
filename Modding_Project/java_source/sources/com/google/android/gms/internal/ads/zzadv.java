package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadv {
    @Nullable
    public static zzav zza(zzado zzadoVar, boolean z) throws IOException {
        zzagu zzaguVar;
        if (z) {
            zzaguVar = null;
        } else {
            zzaguVar = zzagw.zza;
        }
        zzav zza = new zzaed().zza(zzadoVar, zzaguVar);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzadx zzb(zzek zzekVar) {
        zzekVar.zzM(1);
        int zzo = zzekVar.zzo();
        long zzc = zzekVar.zzc();
        long j = zzo;
        int i = zzo / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long zzt = zzekVar.zzt();
            if (zzt == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = zzt;
            jArr2[i2] = zzekVar.zzt();
            zzekVar.zzM(2);
            i2++;
        }
        zzekVar.zzM((int) ((zzc + j) - zzekVar.zzc()));
        return new zzadx(jArr, jArr2);
    }
}
