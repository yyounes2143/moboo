package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamj implements zzamr {
    private final zzej zza;
    private final zzek zzb;
    @Nullable
    private final String zzc;
    private final int zzd;
    private final String zze;
    private String zzf;
    private zzaet zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;
    private long zzk;
    private zzz zzl;
    private int zzm;
    private long zzn;

    public zzamj(@Nullable String str, int i, String str2) {
        zzej zzejVar = new zzej(new byte[128], 128);
        this.zza = zzejVar;
        this.zzb = new zzek(zzejVar.zza);
        this.zzh = 0;
        this.zzn = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i;
        this.zze = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) {
        boolean z;
        boolean z2;
        zzdc.zzb(this.zzg);
        while (zzekVar.zza() > 0) {
            int i = this.zzh;
            boolean z3 = true;
            if (i == 0) {
                while (true) {
                    if (zzekVar.zza() <= 0) {
                        break;
                    } else if (!this.zzj) {
                        if (zzekVar.zzm() == 11) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.zzj = z;
                    } else {
                        int zzm = zzekVar.zzm();
                        if (zzm == 119) {
                            this.zzj = false;
                            this.zzh = 1;
                            zzek zzekVar2 = this.zzb;
                            zzekVar2.zzN()[0] = Ascii.VT;
                            zzekVar2.zzN()[1] = 119;
                            this.zzi = 2;
                            break;
                        }
                        if (zzm == 11) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.zzj = z2;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzekVar.zza(), this.zzm - this.zzi);
                this.zzg.zzr(zzekVar, min);
                int i2 = this.zzi + min;
                this.zzi = i2;
                if (i2 == this.zzm) {
                    if (this.zzn == -9223372036854775807L) {
                        z3 = false;
                    }
                    zzdc.zzf(z3);
                    this.zzg.zzt(this.zzn, 1, this.zzm, 0, null);
                    this.zzn += this.zzk;
                    this.zzh = 0;
                }
            } else {
                zzek zzekVar3 = this.zzb;
                byte[] zzN = zzekVar3.zzN();
                int min2 = Math.min(zzekVar.zza(), 128 - this.zzi);
                zzekVar.zzH(zzN, this.zzi, min2);
                int i3 = this.zzi + min2;
                this.zzi = i3;
                if (i3 == 128) {
                    zzej zzejVar = this.zza;
                    zzejVar.zzl(0);
                    zzacl zze = zzacn.zze(zzejVar);
                    zzz zzzVar = this.zzl;
                    if (zzzVar == null || zze.zzc != zzzVar.zzE || zze.zzb != zzzVar.zzF || !Objects.equals(zze.zza, zzzVar.zzo)) {
                        zzx zzxVar = new zzx();
                        zzxVar.zzO(this.zzf);
                        zzxVar.zzE(this.zze);
                        String str = zze.zza;
                        zzxVar.zzad(str);
                        zzxVar.zzB(zze.zzc);
                        zzxVar.zzae(zze.zzb);
                        zzxVar.zzS(this.zzc);
                        zzxVar.zzab(this.zzd);
                        int i4 = zze.zzf;
                        zzxVar.zzY(i4);
                        if ("audio/ac3".equals(str)) {
                            zzxVar.zzA(i4);
                        }
                        zzz zzaj = zzxVar.zzaj();
                        this.zzl = zzaj;
                        this.zzg.zzm(zzaj);
                    }
                    this.zzm = zze.zzd;
                    this.zzk = (zze.zze * 1000000) / this.zzl.zzF;
                    zzekVar3.zzL(0);
                    this.zzg.zzr(zzekVar3, 128);
                    this.zzh = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzf = zzaofVar.zzb();
        this.zzg = zzadqVar.zzw(zzaofVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzn = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
        this.zzn = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
