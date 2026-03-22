package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.extractor.mp4.Atom;
import androidx.media3.extractor.mp4.Sniffer;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzajg {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Atom.TYPE_avc1, Atom.TYPE_hvc1, Atom.TYPE_hev1, Atom.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    @Nullable
    public static zzaeq zza(zzado zzadoVar) throws IOException {
        return zzc(zzadoVar, true, false);
    }

    @Nullable
    public static zzaeq zzb(zzado zzadoVar, boolean z) throws IOException {
        return zzc(zzadoVar, false, z);
    }

    @Nullable
    private static zzaeq zzc(zzado zzadoVar, boolean z, boolean z2) throws IOException {
        zzaeq zzaeqVar;
        long j;
        zzek zzekVar;
        int i;
        boolean z3;
        int i2;
        int[] iArr;
        long zzd = zzadoVar.zzd();
        long j2 = -1;
        int i3 = (zzd > (-1L) ? 1 : (zzd == (-1L) ? 0 : -1));
        long j3 = 4096;
        if (i3 != 0 && zzd <= 4096) {
            j3 = zzd;
        }
        zzek zzekVar2 = new zzek(64);
        int i4 = (int) j3;
        int i5 = 0;
        int i6 = 0;
        boolean z4 = false;
        while (i6 < i4) {
            zzekVar2.zzI(8);
            boolean z5 = true;
            if (!zzadoVar.zzm(zzekVar2.zzN(), i5, 8, true)) {
                break;
            }
            long zzu = zzekVar2.zzu();
            int zzg = zzekVar2.zzg();
            if (zzu == 1) {
                j = j2;
                zzadoVar.zzh(zzekVar2.zzN(), 8, 8);
                i = 16;
                zzekVar2.zzK(16);
                zzu = zzekVar2.zzt();
                zzekVar = zzekVar2;
            } else {
                j = j2;
                if (zzu == 0) {
                    long zzd2 = zzadoVar.zzd();
                    if (zzd2 != j) {
                        zzu = (zzd2 - zzadoVar.zze()) + 8;
                    }
                }
                zzekVar = zzekVar2;
                i = 8;
            }
            long j4 = zzu;
            zzaeqVar = null;
            long j5 = i;
            if (j4 < j5) {
                return new zzaic(zzg, j4, i);
            }
            i6 += i;
            if (zzg == 1836019574) {
                i4 += (int) j4;
                if (i3 != 0 && i4 > zzd) {
                    i4 = (int) zzd;
                }
                zzekVar2 = zzekVar;
                j2 = j;
                i5 = 0;
            } else if (zzg == 1836019558 || zzg == 1836475768) {
                i5 = 1;
                break;
            } else {
                if (zzg == 1835295092) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                z4 |= !z3;
                long j6 = zzd;
                if ((i6 + j4) - j5 >= i4) {
                    i5 = 0;
                    break;
                }
                int i7 = (int) (j4 - j5);
                i6 += i7;
                if (zzg == 1718909296) {
                    if (i7 < 8) {
                        return new zzaic(Atom.TYPE_ftyp, i7, 8);
                    }
                    zzekVar.zzI(i7);
                    i2 = 0;
                    zzadoVar.zzh(zzekVar.zzN(), 0, i7);
                    int zzg2 = zzekVar.zzg();
                    boolean zzd3 = zzd(zzg2, z2) | z4;
                    zzekVar.zzM(4);
                    int zza2 = zzekVar.zza() / 4;
                    if (!zzd3 && zza2 > 0) {
                        iArr = new int[zza2];
                        int i8 = 0;
                        while (true) {
                            if (i8 < zza2) {
                                int zzg3 = zzekVar.zzg();
                                iArr[i8] = zzg3;
                                if (zzd(zzg3, z2)) {
                                    break;
                                }
                                i8++;
                            } else {
                                z5 = zzd3;
                                break;
                            }
                        }
                    } else {
                        z5 = zzd3;
                        iArr = null;
                    }
                    if (z5) {
                        z4 = z5;
                    } else {
                        return new zzajl(zzg2, iArr);
                    }
                } else {
                    i2 = 0;
                    if (i7 != 0) {
                        zzadoVar.zzg(i7);
                    }
                }
                i5 = i2;
                zzekVar2 = zzekVar;
                j2 = j;
                zzd = j6;
            }
        }
        zzaeqVar = null;
        if (!z4) {
            return zzajc.zza;
        }
        if (z != i5) {
            if (i5 != 0) {
                return zzaiw.zza;
            }
            return zzaiw.zzb;
        }
        return zzaeqVar;
    }

    private static boolean zzd(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        int[] iArr = zza;
        for (int i2 = 0; i2 < 29; i2++) {
            if (iArr[i2] == i) {
                return true;
            }
        }
        return false;
    }
}
