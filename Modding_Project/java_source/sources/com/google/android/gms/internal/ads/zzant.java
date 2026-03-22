package com.google.android.gms.internal.ads;

import androidx.core.view.InputDeviceCompat;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzant implements zzaog {
    private final zzans zza;
    private final zzek zzb = new zzek(32);
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    public zzant(zzans zzansVar) {
        this.zza = zzansVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza(zzek zzekVar, int i) {
        int i2;
        boolean z;
        int i3 = i & 1;
        if (i3 != 0) {
            i2 = zzekVar.zzc() + zzekVar.zzm();
        } else {
            i2 = -1;
        }
        if (this.zzf) {
            if (i3 != 0) {
                this.zzf = false;
                zzekVar.zzL(i2);
                this.zzd = 0;
            } else {
                return;
            }
        }
        while (zzekVar.zza() > 0) {
            int i4 = this.zzd;
            if (i4 < 3) {
                if (i4 == 0) {
                    int zzm = zzekVar.zzm();
                    zzekVar.zzL(zzekVar.zzc() - 1);
                    if (zzm == 255) {
                        this.zzf = true;
                        return;
                    }
                }
                int min = Math.min(zzekVar.zza(), 3 - this.zzd);
                zzek zzekVar2 = this.zzb;
                zzekVar.zzH(zzekVar2.zzN(), this.zzd, min);
                int i5 = this.zzd + min;
                this.zzd = i5;
                if (i5 == 3) {
                    zzekVar2.zzL(0);
                    zzekVar2.zzK(3);
                    zzekVar2.zzM(1);
                    int zzm2 = zzekVar2.zzm();
                    if ((zzm2 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int zzm3 = zzekVar2.zzm();
                    this.zze = z;
                    this.zzc = (((zzm2 & 15) << 8) | zzm3) + 3;
                    int zzb = zzekVar2.zzb();
                    int i6 = this.zzc;
                    if (zzb < i6) {
                        int zzb2 = zzekVar2.zzb();
                        zzekVar2.zzF(Math.min((int) InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i6, zzb2 + zzb2)));
                    }
                }
            } else {
                int min2 = Math.min(zzekVar.zza(), this.zzc - this.zzd);
                zzek zzekVar3 = this.zzb;
                zzekVar.zzH(zzekVar3.zzN(), this.zzd, min2);
                int i7 = this.zzd + min2;
                this.zzd = i7;
                int i8 = this.zzc;
                if (i7 != i8) {
                    continue;
                } else {
                    if (this.zze) {
                        if (zzeu.zzf(zzekVar3.zzN(), 0, i8, -1) == 0) {
                            zzekVar3.zzK(this.zzc - 4);
                        } else {
                            this.zzf = true;
                            return;
                        }
                    } else {
                        zzekVar3.zzK(i8);
                    }
                    zzekVar3.zzL(0);
                    this.zza.zza(zzekVar3);
                    this.zzd = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zzb(zzer zzerVar, zzadq zzadqVar, zzaof zzaofVar) {
        this.zza.zzb(zzerVar, zzadqVar, zzaofVar);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zzc() {
        this.zzf = true;
    }
}
