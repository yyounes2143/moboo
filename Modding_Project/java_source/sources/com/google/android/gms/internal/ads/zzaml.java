package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import com.google.common.primitives.SignedBytes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaml implements zzamr {
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

    public zzaml(@Nullable String str, int i, String str2) {
        zzej zzejVar = new zzej(new byte[16], 16);
        this.zza = zzejVar;
        this.zzb = new zzek(zzejVar.zza);
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
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
            if (i != 0) {
                if (i != 1) {
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
                    zzek zzekVar2 = this.zzb;
                    byte[] zzN = zzekVar2.zzN();
                    int min2 = Math.min(zzekVar.zza(), 16 - this.zzi);
                    zzekVar.zzH(zzN, this.zzi, min2);
                    int i3 = this.zzi + min2;
                    this.zzi = i3;
                    if (i3 == 16) {
                        zzej zzejVar = this.zza;
                        zzejVar.zzl(0);
                        zzacp zzb = zzacr.zzb(zzejVar);
                        zzz zzzVar = this.zzl;
                        if (zzzVar == null || zzzVar.zzE != 2 || zzb.zza != zzzVar.zzF || !MimeTypes.AUDIO_AC4.equals(zzzVar.zzo)) {
                            zzx zzxVar = new zzx();
                            zzxVar.zzO(this.zzf);
                            zzxVar.zzE(this.zze);
                            zzxVar.zzad(MimeTypes.AUDIO_AC4);
                            zzxVar.zzB(2);
                            zzxVar.zzae(zzb.zza);
                            zzxVar.zzS(this.zzc);
                            zzxVar.zzab(this.zzd);
                            zzz zzaj = zzxVar.zzaj();
                            this.zzl = zzaj;
                            this.zzg.zzm(zzaj);
                        }
                        this.zzm = zzb.zzb;
                        this.zzk = (zzb.zzc * 1000000) / this.zzl.zzF;
                        zzekVar2.zzL(0);
                        this.zzg.zzr(zzekVar2, 16);
                        this.zzh = 2;
                    }
                }
            } else {
                while (zzekVar.zza() > 0) {
                    if (!this.zzj) {
                        if (zzekVar.zzm() == 172) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.zzj = z;
                    } else {
                        int zzm = zzekVar.zzm();
                        if (zzm == 172) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.zzj = z2;
                        byte b = SignedBytes.MAX_POWER_OF_TWO;
                        if (zzm != 64) {
                            if (zzm == 65) {
                                zzm = 65;
                            }
                        }
                        this.zzh = 1;
                        zzek zzekVar3 = this.zzb;
                        zzekVar3.zzN()[0] = -84;
                        if (zzm == 65) {
                            b = 65;
                        }
                        zzekVar3.zzN()[1] = b;
                        this.zzi = 2;
                    }
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
