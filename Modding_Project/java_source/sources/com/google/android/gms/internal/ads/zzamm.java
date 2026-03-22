package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamm implements zzadn {
    private final zzamn zza;
    private final zzek zzb;
    private final zzek zzc;
    private final zzej zzd;
    private zzadq zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private boolean zzi;

    public zzamm() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        zzdc.zzb(this.zze);
        zzek zzekVar = this.zzb;
        int zza = zzadoVar.zza(zzekVar.zzN(), 0, 2048);
        if (!this.zzi) {
            this.zze.zzP(new zzael(-9223372036854775807L, 0L));
            this.zzi = true;
        }
        if (zza == -1) {
            return -1;
        }
        zzekVar.zzL(0);
        zzekVar.zzK(zza);
        if (!this.zzh) {
            this.zza.zzd(this.zzf, 4);
            this.zzh = true;
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
        this.zze = zzadqVar;
        this.zza.zzb(zzadqVar, new zzaof(Integer.MIN_VALUE, 0, 1));
        zzadqVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzh = false;
        this.zza.zze();
        this.zzf = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzek zzekVar;
        int i = 0;
        while (true) {
            zzekVar = this.zzc;
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
        if (this.zzg == -1) {
            this.zzg = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            zzaddVar2.zzm(zzekVar.zzN(), 0, 2, false);
            zzekVar.zzL(0);
            if (!zzamn.zzf(zzekVar.zzq())) {
                i4++;
                zzadoVar.zzj();
                zzaddVar2.zzl(i4, false);
            } else {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                zzaddVar2.zzm(zzekVar.zzN(), 0, 4, false);
                zzej zzejVar = this.zzd;
                zzejVar.zzl(14);
                int zzd = zzejVar.zzd(13);
                if (zzd <= 6) {
                    i4++;
                    zzadoVar.zzj();
                    zzaddVar2.zzl(i4, false);
                } else {
                    zzaddVar2.zzl(zzd - 6, false);
                    i3 += zzd;
                }
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    public zzamm(int i) {
        this.zza = new zzamn(true, null, 0, "audio/mp4a-latm");
        this.zzb = new zzek(2048);
        this.zzg = -1L;
        zzek zzekVar = new zzek(10);
        this.zzc = zzekVar;
        byte[] zzN = zzekVar.zzN();
        this.zzd = new zzej(zzN, zzN.length);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
