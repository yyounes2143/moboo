package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzami implements zzadn {
    private final zzamj zza = new zzamj(null, 0, "audio/ac3");
    private final zzek zzb = new zzek(2786);
    private boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        zzek zzekVar = this.zzb;
        int zza = zzadoVar.zza(zzekVar.zzN(), 0, 2786);
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
        zzek zzekVar = new zzek(10);
        int i = 0;
        while (true) {
            zzadd zzaddVar = (zzadd) zzadoVar;
            zzaddVar.zzm(zzekVar.zzN(), 0, 10, false);
            zzekVar.zzL(0);
            if (zzekVar.zzo() != 4801587) {
                break;
            }
            zzekVar.zzM(3);
            int zzl = zzekVar.zzl();
            i += zzl + 10;
            zzaddVar.zzl(zzl, false);
        }
        zzadoVar.zzj();
        zzadd zzaddVar2 = (zzadd) zzadoVar;
        zzaddVar2.zzl(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            zzaddVar2.zzm(zzekVar.zzN(), 0, 6, false);
            zzekVar.zzL(0);
            if (zzekVar.zzq() != 2935) {
                zzadoVar.zzj();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                zzaddVar2.zzl(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int zzb = zzacn.zzb(zzekVar.zzN());
                if (zzb == -1) {
                    return false;
                }
                zzaddVar2.zzl(zzb - 6, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
