package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzanw implements zzacy {
    private final zzer zza;
    private final zzek zzb = new zzek();
    private final int zzc;

    public zzanw(int i, zzer zzerVar, int i2) {
        this.zzc = i;
        this.zza = zzerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacy
    public final zzacx zza(zzado zzadoVar, long j) throws IOException {
        int zza;
        int zza2;
        long zzf = zzadoVar.zzf();
        int min = (int) Math.min(112800L, zzadoVar.zzd() - zzf);
        zzek zzekVar = this.zzb;
        zzekVar.zzI(min);
        zzadoVar.zzh(zzekVar.zzN(), 0, min);
        int zzd = zzekVar.zzd();
        long j2 = -1;
        long j3 = -9223372036854775807L;
        long j4 = -1;
        while (zzekVar.zza() >= 188 && (zza2 = (zza = zzaoh.zza(zzekVar.zzN(), zzekVar.zzc(), zzd)) + TsExtractor.TS_PACKET_SIZE) <= zzd) {
            long zzb = zzaoh.zzb(zzekVar, zza, this.zzc);
            if (zzb != -9223372036854775807L) {
                long zzb2 = this.zza.zzb(zzb);
                if (zzb2 > j) {
                    if (j3 == -9223372036854775807L) {
                        return zzacx.zzd(zzb2, zzf);
                    }
                    return zzacx.zze(zzf + j4);
                }
                j4 = zza;
                if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + zzb2 > j) {
                    return zzacx.zze(zzf + j4);
                }
                j3 = zzb2;
            }
            zzekVar.zzL(zza2);
            j2 = zza2;
        }
        if (j3 != -9223372036854775807L) {
            return zzacx.zzf(j3, zzf + j2);
        }
        return zzacx.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacy
    public final void zzb() {
        byte[] bArr = zzeu.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
    }
}
