package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzand implements zzamr {
    private final zzek zza;
    private final zzaef zzb;
    @Nullable
    private final String zzc;
    private final int zzd;
    private final String zze;
    private zzaet zzf;
    private String zzg;
    private int zzh = 0;
    private int zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzand(@Nullable String str, int i, String str2) {
        zzek zzekVar = new zzek(4);
        this.zza = zzekVar;
        zzekVar.zzN()[0] = -1;
        this.zzb = new zzaef();
        this.zzn = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i;
        this.zze = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) {
        boolean z;
        boolean z2;
        zzdc.zzb(this.zzf);
        while (zzekVar.zza() > 0) {
            int i = this.zzh;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(zzekVar.zza(), this.zzm - this.zzi);
                    this.zzf.zzr(zzekVar, min);
                    int i2 = this.zzi + min;
                    this.zzi = i2;
                    if (i2 >= this.zzm) {
                        if (this.zzn == -9223372036854775807L) {
                            z3 = false;
                        }
                        zzdc.zzf(z3);
                        this.zzf.zzt(this.zzn, 1, this.zzm, 0, null);
                        this.zzn += this.zzl;
                        this.zzi = 0;
                        this.zzh = 0;
                    }
                } else {
                    int min2 = Math.min(zzekVar.zza(), 4 - this.zzi);
                    zzek zzekVar2 = this.zza;
                    zzekVar.zzH(zzekVar2.zzN(), this.zzi, min2);
                    int i3 = this.zzi + min2;
                    this.zzi = i3;
                    if (i3 >= 4) {
                        zzekVar2.zzL(0);
                        zzaef zzaefVar = this.zzb;
                        if (!zzaefVar.zza(zzekVar2.zzg())) {
                            this.zzi = 0;
                            this.zzh = 1;
                        } else {
                            this.zzm = zzaefVar.zzc;
                            if (!this.zzj) {
                                this.zzl = (zzaefVar.zzg * 1000000) / zzaefVar.zzd;
                                zzx zzxVar = new zzx();
                                zzxVar.zzO(this.zzg);
                                zzxVar.zzE(this.zze);
                                zzxVar.zzad(zzaefVar.zzb);
                                zzxVar.zzT(4096);
                                zzxVar.zzB(zzaefVar.zze);
                                zzxVar.zzae(zzaefVar.zzd);
                                zzxVar.zzS(this.zzc);
                                zzxVar.zzab(this.zzd);
                                this.zzf.zzm(zzxVar.zzaj());
                                this.zzj = true;
                            }
                            zzekVar2.zzL(0);
                            this.zzf.zzr(zzekVar2, 4);
                            this.zzh = 2;
                        }
                    }
                }
            } else {
                byte[] zzN = zzekVar.zzN();
                int zzc = zzekVar.zzc();
                int zzd = zzekVar.zzd();
                while (true) {
                    if (zzc < zzd) {
                        int i4 = zzc + 1;
                        byte b = zzN[zzc];
                        if ((b & 255) == 255) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (this.zzk && (b & 224) == 224) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.zzk = z;
                        if (z2) {
                            zzekVar.zzL(i4);
                            this.zzk = false;
                            this.zza.zzN()[1] = zzN[zzc];
                            this.zzi = 2;
                            this.zzh = 1;
                            break;
                        }
                        zzc = i4;
                    } else {
                        zzekVar.zzL(zzd);
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzg = zzaofVar.zzb();
        this.zzf = zzadqVar.zzw(zzaofVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzn = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzk = false;
        this.zzn = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
