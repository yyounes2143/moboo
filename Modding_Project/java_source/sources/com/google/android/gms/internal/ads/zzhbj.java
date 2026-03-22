package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhbj {
    private static final zzhbj zza = new zzhbj(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhbj(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhbj zzc() {
        return zza;
    }

    public static zzhbj zze(zzhbj zzhbjVar, zzhbj zzhbjVar2) {
        int i = zzhbjVar.zzb + zzhbjVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhbjVar.zzc, i);
        System.arraycopy(zzhbjVar2.zzc, 0, copyOf, zzhbjVar.zzb, zzhbjVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhbjVar.zzd, i);
        System.arraycopy(zzhbjVar2.zzd, 0, copyOf2, zzhbjVar.zzb, zzhbjVar2.zzb);
        return new zzhbj(i, copyOf, copyOf2, true);
    }

    public static zzhbj zzf() {
        return new zzhbj();
    }

    private final void zzn(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhbj)) {
            return false;
        }
        zzhbj zzhbjVar = (zzhbj) obj;
        int i = this.zzb;
        if (i == zzhbjVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhbjVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhbjVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + 527;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzD;
        int zzE;
        int i;
        int i2 = this.zze;
        if (i2 == -1) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzb; i4++) {
                int i5 = this.zzc[i4];
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                if (i7 != 0) {
                    if (i7 != 1) {
                        if (i7 != 2) {
                            if (i7 != 3) {
                                if (i7 == 5) {
                                    ((Integer) this.zzd[i4]).getClass();
                                    i = zzgxx.zzD(i6 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zzgzg("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                int zzD2 = zzgxx.zzD(i6 << 3);
                                zzD = zzD2 + zzD2;
                                zzE = ((zzhbj) this.zzd[i4]).zza();
                            }
                        } else {
                            int zzD3 = zzgxx.zzD(i6 << 3);
                            int zzd = ((zzgxk) this.zzd[i4]).zzd();
                            i = zzD3 + zzgxx.zzD(zzd) + zzd;
                        }
                    } else {
                        ((Long) this.zzd[i4]).getClass();
                        i = zzgxx.zzD(i6 << 3) + 8;
                    }
                    i3 += i;
                } else {
                    int i8 = i6 << 3;
                    long longValue = ((Long) this.zzd[i4]).longValue();
                    zzD = zzgxx.zzD(i8);
                    zzE = zzgxx.zzE(longValue);
                }
                i = zzD + zzE;
                i3 += i;
            }
            this.zze = i3;
            return i3;
        }
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int zzD = zzgxx.zzD(8);
                int zzD2 = zzgxx.zzD(16) + zzgxx.zzD(this.zzc[i3] >>> 3);
                int zzD3 = zzgxx.zzD(24);
                int zzd = ((zzgxk) this.zzd[i3]).zzd();
                i2 += zzD + zzD + zzD2 + zzD3 + zzgxx.zzD(zzd) + zzd;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final zzhbj zzd(zzhbj zzhbjVar) {
        if (zzhbjVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhbjVar.zzb;
        zzn(i);
        System.arraycopy(zzhbjVar.zzc, 0, this.zzc, this.zzb, zzhbjVar.zzb);
        System.arraycopy(zzhbjVar.zzd, 0, this.zzd, this.zzb, zzhbjVar.zzb);
        this.zzb = i;
        return this;
    }

    public final void zzg() {
        if (this.zzf) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzhaf.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzj(int i, Object obj) {
        zzg();
        zzn(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzk(zzhbx zzhbxVar) throws IOException {
        for (int i = 0; i < this.zzb; i++) {
            zzhbxVar.zzw(this.zzc[i] >>> 3, this.zzd[i]);
        }
    }

    public final void zzl(zzhbx zzhbxVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 == 5) {
                                    zzhbxVar.zzk(i4, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zzgzg("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                zzhbxVar.zzF(i4);
                                ((zzhbj) obj).zzl(zzhbxVar);
                                zzhbxVar.zzh(i4);
                            }
                        } else {
                            zzhbxVar.zzd(i4, (zzgxk) obj);
                        }
                    } else {
                        zzhbxVar.zzm(i4, ((Long) obj).longValue());
                    }
                } else {
                    zzhbxVar.zzt(i4, ((Long) obj).longValue());
                }
            }
        }
    }

    public final boolean zzm(int i, zzgxq zzgxqVar) throws IOException {
        int zzl;
        zzg();
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                zzj(i, Integer.valueOf(zzgxqVar.zzf()));
                                return true;
                            }
                            throw new zzgzg("Protocol message tag had invalid wire type.");
                        }
                        zzgxqVar.zzy(0);
                        return false;
                    }
                    zzhbj zzhbjVar = new zzhbj();
                    do {
                        zzl = zzgxqVar.zzl();
                        if (zzl == 0) {
                            break;
                        }
                    } while (zzhbjVar.zzm(zzl, zzgxqVar));
                    zzgxqVar.zzy(4 | ((i >>> 3) << 3));
                    zzj(i, zzhbjVar);
                    return true;
                }
                zzj(i, zzgxqVar.zzv());
                return true;
            }
            zzj(i, Long.valueOf(zzgxqVar.zzn()));
            return true;
        }
        zzj(i, Long.valueOf(zzgxqVar.zzo()));
        return true;
    }

    private zzhbj() {
        this(0, new int[8], new Object[8], true);
    }
}
