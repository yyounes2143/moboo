package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanl implements zzaog {
    private final zzamr zza;
    private final zzej zzb = new zzej(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzer zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzanl(zzamr zzamrVar) {
        this.zza = zzamrVar;
    }

    private final void zze(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zzf(zzek zzekVar, @Nullable byte[] bArr, int i) {
        int min = Math.min(zzekVar.zza(), i - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzekVar.zzM(min);
        } else {
            zzekVar.zzH(bArr, this.zzd, min);
        }
        int i2 = this.zzd + min;
        this.zzd = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza(zzek zzekVar, int i) throws zzaz {
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        long j2;
        boolean z;
        zzdc.zzb(this.zze);
        int i6 = -1;
        int i7 = 2;
        if ((i & 1) != 0) {
            int i8 = this.zzc;
            if (i8 != 0 && i8 != 1) {
                if (i8 != 2) {
                    int i9 = this.zzj;
                    if (i9 != -1) {
                        zzdx.zzf("PesReader", "Unexpected start indicator: expected " + i9 + " more bytes");
                    }
                    if (zzekVar.zzd() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.zza.zzc(z);
                } else {
                    zzdx.zzf("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            zze(1);
        }
        int i10 = i;
        while (zzekVar.zza() > 0) {
            int i11 = this.zzc;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != i7) {
                        int zza = zzekVar.zza();
                        int i12 = this.zzj;
                        if (i12 == i6) {
                            i4 = 0;
                        } else {
                            i4 = zza - i12;
                        }
                        if (i4 > 0) {
                            zza -= i4;
                            zzekVar.zzK(zzekVar.zzc() + zza);
                        }
                        zzamr zzamrVar = this.zza;
                        zzamrVar.zza(zzekVar);
                        int i13 = this.zzj;
                        if (i13 != i6) {
                            int i14 = i13 - zza;
                            this.zzj = i14;
                            if (i14 == 0) {
                                zzamrVar.zzc(false);
                                zze(1);
                            }
                        }
                    } else {
                        int min = Math.min(10, this.zzi);
                        zzej zzejVar = this.zzb;
                        if (zzf(zzekVar, zzejVar.zza, min) && zzf(zzekVar, null, this.zzi)) {
                            zzejVar.zzl(0);
                            if (this.zzf) {
                                zzejVar.zzn(4);
                                long zzd = zzejVar.zzd(3);
                                zzejVar.zzn(1);
                                int zzd2 = zzejVar.zzd(15) << 15;
                                zzejVar.zzn(1);
                                long zzd3 = zzejVar.zzd(15);
                                zzejVar.zzn(1);
                                if (!this.zzh && this.zzg) {
                                    zzejVar.zzn(4);
                                    j2 = zzd;
                                    zzejVar.zzn(1);
                                    zzejVar.zzn(1);
                                    long zzd4 = zzejVar.zzd(15);
                                    zzejVar.zzn(1);
                                    this.zze.zzb(zzd4 | (zzejVar.zzd(3) << 30) | (zzejVar.zzd(15) << 15));
                                    this.zzh = true;
                                } else {
                                    j2 = zzd;
                                }
                                j = this.zze.zzb(zzd3 | (j2 << 30) | zzd2);
                            } else {
                                j = -9223372036854775807L;
                            }
                            if (true != this.zzk) {
                                i5 = 0;
                            } else {
                                i5 = 4;
                            }
                            i10 |= i5;
                            this.zza.zzd(j, i10);
                            zze(3);
                            i6 = -1;
                            i7 = 2;
                        }
                    }
                    i2 = i7;
                } else {
                    zzej zzejVar2 = this.zzb;
                    if (zzf(zzekVar, zzejVar2.zza, 9)) {
                        zzejVar2.zzl(0);
                        int zzd5 = zzejVar2.zzd(24);
                        if (zzd5 != 1) {
                            zzdx.zzf("PesReader", "Unexpected start code prefix: " + zzd5);
                            i6 = -1;
                            this.zzj = -1;
                            i3 = 0;
                            i2 = 2;
                        } else {
                            zzejVar2.zzn(8);
                            int zzd6 = zzejVar2.zzd(16);
                            zzejVar2.zzn(5);
                            this.zzk = zzejVar2.zzp();
                            i2 = 2;
                            zzejVar2.zzn(2);
                            this.zzf = zzejVar2.zzp();
                            this.zzg = zzejVar2.zzp();
                            zzejVar2.zzn(6);
                            int zzd7 = zzejVar2.zzd(8);
                            this.zzi = zzd7;
                            if (zzd6 == 0) {
                                this.zzj = -1;
                                i6 = -1;
                            } else {
                                int i15 = (zzd6 - 3) - zzd7;
                                this.zzj = i15;
                                if (i15 < 0) {
                                    zzdx.zzf("PesReader", "Found negative packet payload size: " + i15);
                                    i6 = -1;
                                    this.zzj = -1;
                                } else {
                                    i6 = -1;
                                }
                            }
                            i3 = 2;
                        }
                        zze(i3);
                    } else {
                        i6 = -1;
                        i2 = 2;
                    }
                }
            } else {
                i2 = i7;
                zzekVar.zzM(zzekVar.zza());
            }
            i7 = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zzb(zzer zzerVar, zzadq zzadqVar, zzaof zzaofVar) {
        this.zze = zzerVar;
        this.zza.zzb(zzadqVar, zzaofVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }

    public final boolean zzd(boolean z) {
        if (this.zzc == 3 && this.zzj == -1) {
            return true;
        }
        return false;
    }
}
