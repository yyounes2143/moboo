package com.google.android.gms.internal.ads;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzxl extends zzxn {
    public zzxl(zzbm zzbmVar, int[] iArr, int i, zzzf zzzfVar, long j, long j2, long j3, int i2, int i3, float f, float f2, List list, zzdg zzdgVar) {
        super(zzbmVar, iArr, 0);
        zzfyc.zzl(list);
    }

    public static /* bridge */ /* synthetic */ zzfyc zzd(zzyp[] zzypVarArr) {
        zzfyc zzi;
        int i;
        long[][] jArr;
        double d;
        long j;
        int i2 = 1;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (int i4 = 0; i4 < 2; i4++) {
            zzyp zzypVar = zzypVarArr[i4];
            if (zzypVar != null && zzypVar.zzb.length > 1) {
                int i5 = zzfyc.zzd;
                zzfxz zzfxzVar = new zzfxz();
                zzfxzVar.zzf(new zzxj(0L, 0L));
                arrayList.add(zzfxzVar);
            } else {
                arrayList.add(null);
            }
        }
        long[][] jArr2 = new long[2];
        for (int i6 = 0; i6 < 2; i6++) {
            zzyp zzypVar2 = zzypVarArr[i6];
            if (zzypVar2 == null) {
                jArr2[i6] = new long[0];
            } else {
                int[] iArr = zzypVar2.zzb;
                jArr2[i6] = new long[iArr.length];
                for (int i7 = 0; i7 < iArr.length; i7++) {
                    long j2 = zzypVar2.zza.zzb(iArr[i7]).zzj;
                    long[] jArr3 = jArr2[i6];
                    if (j2 == -1) {
                        j2 = 0;
                    }
                    jArr3[i7] = j2;
                }
                Arrays.sort(jArr2[i6]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr4 = new long[2];
        for (int i8 = 0; i8 < 2; i8++) {
            long[] jArr5 = jArr2[i8];
            if (jArr5.length == 0) {
                j = 0;
            } else {
                j = jArr5[0];
            }
            jArr4[i8] = j;
        }
        zzi(arrayList, jArr4);
        zzfyn zza = zzfzi.zzc(zzfzn.zzc()).zzb(2).zza();
        int i9 = 0;
        while (i9 < 2) {
            int length = jArr2[i9].length;
            if (length <= i2) {
                i = i3;
                jArr = jArr2;
            } else {
                double[] dArr = new double[length];
                int i10 = i3;
                while (true) {
                    long[] jArr6 = jArr2[i9];
                    int length2 = jArr6.length;
                    double d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    if (i10 >= length2) {
                        break;
                    }
                    int i11 = i3;
                    long[][] jArr7 = jArr2;
                    long j3 = jArr6[i10];
                    if (j3 != -1) {
                        d2 = Math.log(j3);
                    }
                    dArr[i10] = d2;
                    i10 += i2;
                    i3 = i11;
                    jArr2 = jArr7;
                }
                i = i3;
                jArr = jArr2;
                int i12 = length - 1;
                double d3 = dArr[i12] - dArr[i];
                int i13 = i;
                while (i13 < i12) {
                    double d4 = dArr[i13];
                    i13 += i2;
                    double d5 = d4 + dArr[i13];
                    if (d3 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                        d = 1.0d;
                    } else {
                        d = ((d5 * 0.5d) - dArr[i]) / d3;
                    }
                    zza.zzq(Double.valueOf(d), Integer.valueOf(i9));
                    i2 = i2;
                }
            }
            i9++;
            i3 = i;
            jArr2 = jArr;
            i2 = i2;
        }
        int i14 = i3;
        long[][] jArr8 = jArr2;
        zzfyc zzl = zzfyc.zzl(zza.zzr());
        while (i3 < zzl.size()) {
            int intValue = ((Integer) zzl.get(i3)).intValue();
            int i15 = iArr2[intValue] + 1;
            iArr2[intValue] = i15;
            jArr4[intValue] = jArr8[intValue][i15];
            zzi(arrayList, jArr4);
            i3++;
        }
        for (int i16 = i14; i16 < 2; i16++) {
            if (arrayList.get(i16) != null) {
                long j4 = jArr4[i16];
                jArr4[i16] = j4 + j4;
            }
        }
        zzi(arrayList, jArr4);
        zzfxz zzfxzVar2 = new zzfxz();
        for (int i17 = i14; i17 < arrayList.size(); i17++) {
            zzfxz zzfxzVar3 = (zzfxz) arrayList.get(i17);
            if (zzfxzVar3 == null) {
                zzi = zzfyc.zzn();
            } else {
                zzi = zzfxzVar3.zzi();
            }
            zzfxzVar2.zzf(zzi);
        }
        return zzfxzVar2.zzi();
    }

    private static void zzi(List list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzfxz zzfxzVar = (zzfxz) list.get(i2);
            if (zzfxzVar != null) {
                zzfxzVar.zzf(new zzxj(j, jArr[i2]));
            }
        }
    }
}
