package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzyu extends zzyx {
    public abstract Pair zzd(zzyt zzytVar, int[][][] iArr, int[] iArr2, zzvb zzvbVar, zzbl zzblVar) throws zzik;

    @Override // com.google.android.gms.internal.ads.zzyx
    public final zzyy zzo(zzly[] zzlyVarArr, zzxe zzxeVar, zzvb zzvbVar, zzbl zzblVar) throws zzik {
        boolean z;
        List[] listArr;
        boolean z2;
        zzfyc zzn;
        int[] iArr;
        boolean z3;
        int[] iArr2 = new int[3];
        zzbm[][] zzbmVarArr = new zzbm[3];
        int[][][] iArr3 = new int[3][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzxeVar.zzb;
            zzbmVarArr[i] = new zzbm[i2];
            iArr3[i] = new int[i2];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzlyVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzxeVar.zzb) {
            zzbm zzb = zzxeVar.zzb(i5);
            int i6 = zzb.zzc;
            int i7 = i3;
            int i8 = 0;
            int i9 = 0;
            boolean z4 = true;
            while (i8 < i3) {
                zzly zzlyVar = zzlyVarArr[i8];
                int i10 = 0;
                for (int i11 = 0; i11 < zzb.zza; i11++) {
                    i10 = Math.max(i10, zzlyVar.zzY(zzb.zzb(i11)) & 7);
                }
                if (iArr2[i8] == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i10 <= i9) {
                    if (i10 == i9 && i6 == 5 && !z4 && z3) {
                        i7 = i8;
                        i9 = i10;
                        z4 = true;
                    }
                } else {
                    z4 = z3;
                    i7 = i8;
                    i9 = i10;
                }
                i8++;
                i3 = 2;
            }
            if (i7 == i3) {
                iArr = new int[zzb.zza];
            } else {
                zzly zzlyVar2 = zzlyVarArr[i7];
                int i12 = zzb.zza;
                int[] iArr5 = new int[i12];
                for (int i13 = 0; i13 < i12; i13++) {
                    iArr5[i13] = zzlyVar2.zzY(zzb.zzb(i13));
                }
                iArr = iArr5;
            }
            int i14 = iArr2[i7];
            zzbmVarArr[i7][i14] = zzb;
            iArr3[i7][i14] = iArr;
            iArr2[i7] = i14 + 1;
            i5++;
            i3 = 2;
        }
        zzxe[] zzxeVarArr = new zzxe[i3];
        String[] strArr = new String[i3];
        int[] iArr6 = new int[i3];
        int i15 = 0;
        while (i15 < i3) {
            int i16 = iArr2[i15];
            zzxeVarArr[i15] = new zzxe((zzbm[]) zzeu.zzQ(zzbmVarArr[i15], i16));
            iArr3[i15] = (int[][]) zzeu.zzQ(iArr3[i15], i16);
            strArr[i15] = zzlyVarArr[i15].zzU();
            iArr6[i15] = zzlyVarArr[i15].zzb();
            i15++;
            i3 = 2;
        }
        int i17 = i3;
        zzyt zzytVar = new zzyt(strArr, iArr6, zzxeVarArr, iArr4, iArr3, new zzxe((zzbm[]) zzeu.zzQ(zzbmVarArr[i17], iArr2[i17])));
        Pair zzd = zzd(zzytVar, iArr3, iArr4, zzvbVar, zzblVar);
        zzyv[] zzyvVarArr = (zzyv[]) zzd.second;
        List[] listArr2 = new List[zzyvVarArr.length];
        for (int i18 = 0; i18 < zzyvVarArr.length; i18++) {
            zzyv zzyvVar = zzyvVarArr[i18];
            if (zzyvVar != null) {
                zzn = zzfyc.zzo(zzyvVar);
            } else {
                zzn = zzfyc.zzn();
            }
            listArr2[i18] = zzn;
        }
        zzfxz zzfxzVar = new zzfxz();
        for (int i19 = 0; i19 < 2; i19++) {
            zzxe zzd2 = zzytVar.zzd(i19);
            List list = listArr2[i19];
            int i20 = 0;
            while (i20 < zzd2.zzb) {
                zzbm zzb2 = zzd2.zzb(i20);
                if (zzytVar.zza(i19, i20, false) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i21 = zzb2.zza;
                int[] iArr7 = new int[i21];
                boolean[] zArr = new boolean[i21];
                int i22 = 0;
                while (i22 < i21) {
                    iArr7[i22] = zzytVar.zzb(i19, i20, i22) & 7;
                    int i23 = 0;
                    while (true) {
                        if (i23 < list.size()) {
                            zzyv zzyvVar2 = (zzyv) list.get(i23);
                            listArr = listArr2;
                            if (zzyvVar2.zzc().equals(zzb2) && zzyvVar2.zzg(i22) != -1) {
                                z2 = true;
                                break;
                            }
                            i23++;
                            listArr2 = listArr;
                        } else {
                            listArr = listArr2;
                            z2 = false;
                            break;
                        }
                    }
                    zArr[i22] = z2;
                    i22++;
                    listArr2 = listArr;
                }
                zzfxzVar.zzf(new zzbs(zzb2, z, iArr7, zArr));
                i20++;
                listArr2 = listArr2;
            }
        }
        zzxe zze = zzytVar.zze();
        for (int i24 = 0; i24 < zze.zzb; i24++) {
            zzbm zzb3 = zze.zzb(i24);
            int i25 = zzb3.zza;
            int[] iArr8 = new int[i25];
            Arrays.fill(iArr8, 0);
            zzfxzVar.zzf(new zzbs(zzb3, false, iArr8, new boolean[i25]));
        }
        return new zzyy((zzlz[]) zzd.first, (zzyq[]) zzd.second, new zzbt(zzfxzVar.zzi()), zzytVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final void zzp(@Nullable Object obj) {
        zzyt zzytVar = (zzyt) obj;
    }
}
