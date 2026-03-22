package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaeo implements zzadn {
    private final int zza;
    private final int zzb;
    private final String zzc;
    private int zzd;
    private int zze;
    private zzadq zzf;
    private zzaet zzg;

    public zzaeo(int i, int i2, String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        int i = this.zze;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        zzaet zzaetVar = this.zzg;
        zzaetVar.getClass();
        int zzf = zzaetVar.zzf(zzadoVar, 1024, true);
        if (zzf == -1) {
            this.zze = 2;
            this.zzg.zzt(0L, 1, this.zzd, 0, null);
            this.zzd = 0;
        } else {
            this.zzd += zzf;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzf = zzadqVar;
        zzaet zzw = zzadqVar.zzw(1024, 4);
        this.zzg = zzw;
        zzx zzxVar = new zzx();
        String str = this.zzc;
        zzxVar.zzE(str);
        zzxVar.zzad(str);
        zzw.zzm(zzxVar.zzaj());
        this.zzf.zzG();
        this.zzf.zzP(new zzaep(-9223372036854775807L));
        this.zze = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        if (j != 0 && this.zze != 1) {
            return;
        }
        this.zze = 1;
        this.zzd = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        boolean z;
        int i = this.zza;
        if (i != -1 && this.zzb != -1) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        int i2 = this.zzb;
        zzek zzekVar = new zzek(i2);
        ((zzadd) zzadoVar).zzm(zzekVar.zzN(), 0, i2, false);
        if (zzekVar.zzq() == i) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
