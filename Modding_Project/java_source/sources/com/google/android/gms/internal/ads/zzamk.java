package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamk implements zzadn {
    private final zzaml zza = new zzaml(null, 0, MimeTypes.AUDIO_AC4);
    private final zzek zzb = new zzek(16384);
    private boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        zzek zzekVar = this.zzb;
        int zza = zzadoVar.zza(zzekVar.zzN(), 0, 16384);
        if (zza == -1) {
            return -1;
        }
        zzekVar.zzL(0);
        zzekVar.zzK(zza);
        if (!this.zzc) {
            this.zza.zzd(0L, 4);
            this.zzc = true;
        }
        this.zza.zza(zzekVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zza.zzb(zzadqVar, new zzaof(Integer.MIN_VALUE, 0, 1));
        zzadqVar.zzG();
        zzadqVar.zzP(new zzael(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzc = false;
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        char c;
        int i;
        char c2 = 2;
        zzek zzekVar = new zzek(10);
        int i2 = 0;
        while (true) {
            zzadd zzaddVar = (zzadd) zzadoVar;
            zzaddVar.zzm(zzekVar.zzN(), 0, 10, false);
            zzekVar.zzL(0);
            if (zzekVar.zzo() != 4801587) {
                break;
            }
            char c3 = c2;
            zzekVar.zzM(3);
            int zzl = zzekVar.zzl();
            i2 += zzl + 10;
            zzaddVar.zzl(zzl, false);
            c2 = c3;
        }
        zzadoVar.zzj();
        zzadd zzaddVar2 = (zzadd) zzadoVar;
        zzaddVar2.zzl(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            zzaddVar2.zzm(zzekVar.zzN(), 0, 7, false);
            zzekVar.zzL(0);
            int zzq = zzekVar.zzq();
            if (zzq != 44096 && zzq != 44097) {
                zzadoVar.zzj();
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                zzaddVar2.zzl(i4, false);
                i3 = 0;
            } else {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] zzN = zzekVar.zzN();
                int i6 = zzacr.zza;
                if (zzN.length < 7) {
                    c = c2;
                    i = -1;
                } else {
                    c = c2;
                    int i7 = (zzN[3] & 255) | ((zzN[c2] & 255) << 8);
                    if (i7 == 65535) {
                        i7 = ((zzN[4] & 255) << 16) | ((zzN[5] & 255) << 8) | (zzN[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (zzq == 44097) {
                        i5 += 2;
                    }
                    i = i7 + i5;
                }
                if (i == -1) {
                    return false;
                }
                zzaddVar2.zzl(i - 7, false);
                c2 = c;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
