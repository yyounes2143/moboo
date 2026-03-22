package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajq extends zzajz {
    @Nullable
    private zzady zza;
    @Nullable
    private zzajp zzb;

    private static boolean zzd(byte[] bArr) {
        if (bArr[0] != -1) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final long zza(zzek zzekVar) {
        if (zzd(zzekVar.zzN())) {
            int i = (zzekVar.zzN()[2] & 255) >> 4;
            if (i != 6) {
                if (i == 7) {
                    i = 7;
                }
                int zza = zzadu.zza(zzekVar, i);
                zzekVar.zzL(0);
                return zza;
            }
            zzekVar.zzM(4);
            zzekVar.zzx();
            int zza2 = zzadu.zza(zzekVar, i);
            zzekVar.zzL(0);
            return zza2;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    @EnsuresNonNullIf
    public final boolean zzc(zzek zzekVar, long j, zzajw zzajwVar) {
        byte[] zzN = zzekVar.zzN();
        zzady zzadyVar = this.zza;
        if (zzadyVar == null) {
            zzady zzadyVar2 = new zzady(zzN, 17);
            this.zza = zzadyVar2;
            zzx zzb = zzadyVar2.zzc(Arrays.copyOfRange(zzN, 9, zzekVar.zzd()), null).zzb();
            zzb.zzE(MimeTypes.AUDIO_OGG);
            zzajwVar.zza = zzb.zzaj();
            return true;
        } else if ((zzN[0] & Byte.MAX_VALUE) == 3) {
            zzadx zzb2 = zzadv.zzb(zzekVar);
            zzady zzf = zzadyVar.zzf(zzb2);
            this.zza = zzf;
            this.zzb = new zzajp(zzf, zzb2);
            return true;
        } else if (!zzd(zzN)) {
            return true;
        } else {
            zzajp zzajpVar = this.zzb;
            if (zzajpVar != null) {
                zzajpVar.zza(j);
                zzajwVar.zzb = this.zzb;
            }
            zzajwVar.zza.getClass();
            return false;
        }
    }
}
