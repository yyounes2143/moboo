package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajv extends zzajz {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    public static boolean zzd(zzek zzekVar) {
        return zzk(zzekVar, zza);
    }

    private static boolean zzk(zzek zzekVar, byte[] bArr) {
        if (zzekVar.zza() < 8) {
            return false;
        }
        int zzc = zzekVar.zzc();
        byte[] bArr2 = new byte[8];
        zzekVar.zzH(bArr2, 0, 8);
        zzekVar.zzL(zzc);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final long zza(zzek zzekVar) {
        return zzg(zzaei.zzd(zzekVar.zzN()));
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    @EnsuresNonNullIf
    public final boolean zzc(zzek zzekVar, long j, zzajw zzajwVar) throws zzaz {
        if (zzk(zzekVar, zza)) {
            byte[] copyOf = Arrays.copyOf(zzekVar.zzN(), zzekVar.zzd());
            int i = copyOf[9] & 255;
            List zze = zzaei.zze(copyOf);
            if (zzajwVar.zza == null) {
                zzx zzxVar = new zzx();
                zzxVar.zzE(MimeTypes.AUDIO_OGG);
                zzxVar.zzad("audio/opus");
                zzxVar.zzB(i);
                zzxVar.zzae(48000);
                zzxVar.zzP(zze);
                zzajwVar.zza = zzxVar.zzaj();
                return true;
            }
        } else if (zzk(zzekVar, zzb)) {
            zzdc.zzb(zzajwVar.zza);
            if (!this.zzc) {
                this.zzc = true;
                zzekVar.zzM(8);
                zzav zzb2 = zzaez.zzb(zzfyc.zzm(zzaez.zzc(zzekVar, false, false).zza));
                if (zzb2 != null) {
                    zzx zzb3 = zzajwVar.zza.zzb();
                    zzb3.zzW(zzb2.zzd(zzajwVar.zza.zzl));
                    zzajwVar.zza = zzb3.zzaj();
                }
            }
        } else {
            zzdc.zzb(zzajwVar.zza);
            return false;
        }
        return true;
    }
}
