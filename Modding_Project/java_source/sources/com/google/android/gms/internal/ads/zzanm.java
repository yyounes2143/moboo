package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanm implements zzacy {
    private final zzer zza;
    private final zzek zzb = new zzek();

    public /* synthetic */ zzanm(zzer zzerVar, zzann zzannVar) {
        this.zza = zzerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacy
    public final zzacx zza(zzado zzadoVar, long j) throws IOException {
        int zzh;
        long zzf = zzadoVar.zzf();
        int min = (int) Math.min(20000L, zzadoVar.zzd() - zzf);
        zzek zzekVar = this.zzb;
        zzekVar.zzI(min);
        zzadoVar.zzh(zzekVar.zzN(), 0, min);
        int i = -1;
        int i2 = -1;
        long j2 = -9223372036854775807L;
        while (zzekVar.zza() >= 4) {
            if (zzano.zzh(zzekVar.zzN(), zzekVar.zzc()) != 442) {
                zzekVar.zzM(1);
            } else {
                zzekVar.zzM(4);
                long zzc = zzanp.zzc(zzekVar);
                if (zzc != -9223372036854775807L) {
                    long zzb = this.zza.zzb(zzc);
                    if (zzb > j) {
                        if (j2 == -9223372036854775807L) {
                            return zzacx.zzd(zzb, zzf);
                        }
                        return zzacx.zze(zzf + i2);
                    } else if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + zzb > j) {
                        return zzacx.zze(zzf + zzekVar.zzc());
                    } else {
                        i2 = zzekVar.zzc();
                        j2 = zzb;
                    }
                }
                int zzd = zzekVar.zzd();
                if (zzekVar.zza() < 10) {
                    zzekVar.zzL(zzd);
                } else {
                    zzekVar.zzM(9);
                    int zzm = zzekVar.zzm() & 7;
                    if (zzekVar.zza() < zzm) {
                        zzekVar.zzL(zzd);
                    } else {
                        zzekVar.zzM(zzm);
                        if (zzekVar.zza() < 4) {
                            zzekVar.zzL(zzd);
                        } else {
                            if (zzano.zzh(zzekVar.zzN(), zzekVar.zzc()) == 443) {
                                zzekVar.zzM(4);
                                int zzq = zzekVar.zzq();
                                if (zzekVar.zza() < zzq) {
                                    zzekVar.zzL(zzd);
                                } else {
                                    zzekVar.zzM(zzq);
                                }
                            }
                            while (true) {
                                if (zzekVar.zza() < 4 || (zzh = zzano.zzh(zzekVar.zzN(), zzekVar.zzc())) == 442 || zzh == 441 || (zzh >>> 8) != 1) {
                                    break;
                                }
                                zzekVar.zzM(4);
                                if (zzekVar.zza() < 2) {
                                    zzekVar.zzL(zzd);
                                    break;
                                }
                                zzekVar.zzL(Math.min(zzekVar.zzd(), zzekVar.zzc() + zzekVar.zzq()));
                            }
                        }
                    }
                }
                i = zzekVar.zzc();
            }
        }
        if (j2 != -9223372036854775807L) {
            return zzacx.zzf(j2, zzf + i);
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
