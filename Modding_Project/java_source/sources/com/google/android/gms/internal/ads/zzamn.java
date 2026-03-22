package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamn implements zzamr {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    @Nullable
    private final String zze;
    private final int zzf;
    private final String zzg;
    private String zzh;
    private zzaet zzi;
    private zzaet zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzr;
    private boolean zzs;
    private int zzu;
    private zzaet zzw;
    private long zzx;
    private final zzej zzc = new zzej(new byte[7], 7);
    private final zzek zzd = new zzek(Arrays.copyOf(zza, 10));
    private int zzp = -1;
    private int zzq = -1;
    private long zzt = -9223372036854775807L;
    private long zzv = -9223372036854775807L;

    public zzamn(boolean z, @Nullable String str, int i, String str2) {
        this.zzb = z;
        this.zze = str;
        this.zzf = i;
        this.zzg = str2;
        zzh();
    }

    public static boolean zzf(int i) {
        if ((i & 65526) == 65520) {
            return true;
        }
        return false;
    }

    private final void zzg() {
        this.zzo = false;
        zzh();
    }

    private final void zzh() {
        this.zzk = 0;
        this.zzl = 0;
        this.zzm = 256;
    }

    private final void zzi() {
        this.zzk = 3;
        this.zzl = 0;
    }

    private final void zzj(zzaet zzaetVar, long j, int i, int i2) {
        this.zzk = 4;
        this.zzl = i;
        this.zzw = zzaetVar;
        this.zzx = j;
        this.zzu = i2;
    }

    private final boolean zzk(zzek zzekVar, byte[] bArr, int i) {
        int min = Math.min(zzekVar.zza(), i - this.zzl);
        zzekVar.zzH(bArr, this.zzl, min);
        int i2 = this.zzl + min;
        this.zzl = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzek zzekVar, byte[] bArr, int i) {
        if (zzekVar.zza() < i) {
            return false;
        }
        zzekVar.zzH(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) throws zzaz {
        boolean z;
        int i;
        int i2;
        byte b;
        int i3;
        char c;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        int i8 = 0;
        int i9 = 2;
        this.zzi.getClass();
        String str = zzeu.zza;
        while (zzekVar.zza() > 0) {
            int i10 = this.zzk;
            char c2 = 7;
            int i11 = 3;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != i9) {
                        if (i10 != 3) {
                            int min = Math.min(zzekVar.zza(), this.zzu - this.zzl);
                            this.zzw.zzr(zzekVar, min);
                            int i12 = this.zzl + min;
                            this.zzl = i12;
                            if (i12 == this.zzu) {
                                if (this.zzv != -9223372036854775807L) {
                                    z = 1;
                                } else {
                                    z = i8;
                                }
                                zzdc.zzf(z);
                                this.zzw.zzt(this.zzv, 1, this.zzu, 0, null);
                                this.zzv += this.zzx;
                                zzh();
                            }
                        } else {
                            if (true != this.zzn) {
                                i = 5;
                            } else {
                                i = 7;
                            }
                            zzej zzejVar = this.zzc;
                            if (zzk(zzekVar, zzejVar.zza, i)) {
                                zzejVar.zzl(i8);
                                if (!this.zzs) {
                                    int zzd = zzejVar.zzd(i9) + 1;
                                    if (zzd != i9) {
                                        zzdx.zzf("AdtsReader", "Detected audio object type: " + zzd + ", but assuming AAC LC.");
                                    }
                                    zzejVar.zzn(5);
                                    int zzd2 = zzejVar.zzd(3);
                                    int i13 = this.zzq;
                                    byte[] bArr = new byte[i9];
                                    bArr[i8] = (byte) (((i13 >> 1) & 7) | 16);
                                    bArr[1] = (byte) (((zzd2 << 3) & 120) | ((i13 << 7) & 128));
                                    zzaci zza2 = zzack.zza(bArr);
                                    zzx zzxVar = new zzx();
                                    zzxVar.zzO(this.zzh);
                                    zzxVar.zzE(this.zzg);
                                    zzxVar.zzad("audio/mp4a-latm");
                                    zzxVar.zzC(zza2.zzc);
                                    zzxVar.zzB(zza2.zzb);
                                    zzxVar.zzae(zza2.zza);
                                    zzxVar.zzP(Collections.singletonList(bArr));
                                    zzxVar.zzS(this.zze);
                                    zzxVar.zzab(this.zzf);
                                    zzz zzaj = zzxVar.zzaj();
                                    this.zzt = 1024000000 / zzaj.zzF;
                                    this.zzi.zzm(zzaj);
                                    this.zzs = true;
                                } else {
                                    zzejVar.zzn(10);
                                }
                                zzejVar.zzn(4);
                                int zzd3 = zzejVar.zzd(13);
                                int i14 = zzd3 - 7;
                                if (this.zzn) {
                                    i14 = zzd3 - 9;
                                }
                                zzj(this.zzi, this.zzt, 0, i14);
                            }
                        }
                    } else {
                        zzek zzekVar2 = this.zzd;
                        if (zzk(zzekVar, zzekVar2.zzN(), 10)) {
                            this.zzj.zzr(zzekVar2, 10);
                            zzekVar2.zzL(6);
                            zzj(this.zzj, 0L, 10, zzekVar2.zzl() + 10);
                        }
                    }
                } else if (zzekVar.zza() != 0) {
                    zzej zzejVar2 = this.zzc;
                    zzejVar2.zza[i8] = zzekVar.zzN()[zzekVar.zzc()];
                    zzejVar2.zzl(i9);
                    int zzd4 = zzejVar2.zzd(4);
                    int i15 = this.zzq;
                    if (i15 != -1 && zzd4 != i15) {
                        zzg();
                    } else {
                        if (!this.zzo) {
                            this.zzo = true;
                            this.zzp = this.zzr;
                            this.zzq = zzd4;
                        }
                        zzi();
                    }
                }
            } else {
                byte[] zzN = zzekVar.zzN();
                int zzc = zzekVar.zzc();
                int zzd5 = zzekVar.zzd();
                while (true) {
                    if (zzc < zzd5) {
                        i2 = zzc + 1;
                        b = zzN[zzc];
                        int i16 = b & 255;
                        int i17 = i11;
                        if (this.zzm == 512 && zzl((byte) -1, (byte) i16)) {
                            if (this.zzo) {
                                break;
                            }
                            int i18 = zzc - 1;
                            zzekVar.zzL(zzc);
                            zzej zzejVar3 = this.zzc;
                            if (zzm(zzekVar, zzejVar3.zza, 1)) {
                                zzejVar3.zzl(4);
                                int zzd6 = zzejVar3.zzd(1);
                                int i19 = this.zzp;
                                if (i19 == -1 || zzd6 == i19) {
                                    if (this.zzq != -1) {
                                        if (!zzm(zzekVar, zzejVar3.zza, 1)) {
                                            break;
                                        }
                                        zzejVar3.zzl(i9);
                                        i3 = i9;
                                        if (zzejVar3.zzd(4) == this.zzq) {
                                            zzekVar.zzL(zzc + 1);
                                        }
                                        c = 7;
                                    } else {
                                        i3 = i9;
                                    }
                                    if (!zzm(zzekVar, zzejVar3.zza, 4)) {
                                        break;
                                    }
                                    zzejVar3.zzl(14);
                                    int zzd7 = zzejVar3.zzd(13);
                                    c = 7;
                                    if (zzd7 >= 7) {
                                        byte[] zzN2 = zzekVar.zzN();
                                        int zzd8 = zzekVar.zzd();
                                        int i20 = i18 + zzd7;
                                        if (i20 < zzd8) {
                                            byte b2 = zzN2[i20];
                                            if (b2 == -1) {
                                                int i21 = i20 + 1;
                                                if (i21 == zzd8) {
                                                    break;
                                                }
                                                byte b3 = zzN2[i21];
                                                if (zzl((byte) -1, b3) && ((b3 & 8) >> 3) == zzd6) {
                                                    break;
                                                }
                                            } else if (b2 == 73) {
                                                int i22 = i20 + 1;
                                                if (i22 == zzd8) {
                                                    break;
                                                } else if (zzN2[i22] == 68) {
                                                    int i23 = i20 + 2;
                                                    if (i23 == zzd8) {
                                                        break;
                                                    } else if (zzN2[i23] == 51) {
                                                        break;
                                                    }
                                                }
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                }
                            }
                            i3 = i9;
                            c = 7;
                        } else {
                            i3 = i9;
                            c = c2;
                        }
                        int i24 = this.zzm;
                        int i25 = i24 | i16;
                        if (i25 != 329) {
                            if (i25 != 511) {
                                if (i25 != 836) {
                                    if (i25 != 1075) {
                                        if (i24 != 256) {
                                            this.zzm = 256;
                                            c2 = c;
                                            i11 = i17;
                                            i9 = i3;
                                            i8 = 0;
                                        } else {
                                            i4 = i17;
                                            i5 = i3;
                                            i6 = 0;
                                            i8 = i6;
                                            zzc = i2;
                                            i11 = i4;
                                            c2 = c;
                                            i9 = i5;
                                        }
                                    } else {
                                        int i26 = i3;
                                        this.zzk = i26;
                                        this.zzl = i17;
                                        this.zzu = 0;
                                        this.zzd.zzL(0);
                                        zzekVar.zzL(i2);
                                        i9 = i26;
                                        i8 = 0;
                                        break;
                                    }
                                } else {
                                    i4 = i17;
                                    i5 = i3;
                                    i6 = 0;
                                    i7 = 1024;
                                }
                            } else {
                                i4 = i17;
                                i5 = i3;
                                i6 = 0;
                                i7 = 512;
                            }
                        } else {
                            i4 = i17;
                            i5 = i3;
                            i6 = 0;
                            i7 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                        }
                        this.zzm = i7;
                        i8 = i6;
                        zzc = i2;
                        i11 = i4;
                        c2 = c;
                        i9 = i5;
                    } else {
                        zzekVar.zzL(zzc);
                        break;
                    }
                }
                i3 = i9;
                this.zzr = (b & 8) >> 3;
                if (1 != ((b & 1) ^ 1)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                this.zzn = z2;
                if (!this.zzo) {
                    this.zzk = 1;
                    this.zzl = 0;
                } else {
                    zzi();
                }
                zzekVar.zzL(i2);
                i9 = i3;
                i8 = 0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzh = zzaofVar.zzb();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 1);
        this.zzi = zzw;
        this.zzw = zzw;
        if (this.zzb) {
            zzaofVar.zzc();
            zzaet zzw2 = zzadqVar.zzw(zzaofVar.zza(), 5);
            this.zzj = zzw2;
            zzx zzxVar = new zzx();
            zzxVar.zzO(zzaofVar.zzb());
            zzxVar.zzE(this.zzg);
            zzxVar.zzad("application/id3");
            zzw2.zzm(zzxVar.zzaj());
            return;
        }
        this.zzj = new zzadj();
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzv = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzv = -9223372036854775807L;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
