package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaoa implements zzans {
    final /* synthetic */ zzaob zza;
    private final zzej zzb = new zzej(new byte[5], 5);
    private final SparseArray zzc = new SparseArray();
    private final SparseIntArray zzd = new SparseIntArray();
    private final int zze;

    public zzaoa(zzaob zzaobVar, int i) {
        this.zza = zzaobVar;
        this.zze = i;
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zza(zzek zzekVar) {
        List list;
        SparseArray sparseArray;
        int i;
        zzadq zzadqVar;
        SparseBooleanArray sparseBooleanArray;
        SparseBooleanArray sparseBooleanArray2;
        zzadq zzadqVar2;
        SparseArray sparseArray2;
        SparseBooleanArray sparseBooleanArray3;
        zzaoe zzaoeVar;
        zzaob zzaobVar;
        int i2;
        zzej zzejVar;
        int i3;
        int i4;
        if (zzekVar.zzm() == 2) {
            zzaob zzaobVar2 = this.zza;
            list = zzaobVar2.zzb;
            zzer zzerVar = (zzer) list.get(0);
            if ((zzekVar.zzm() & 128) != 0) {
                zzekVar.zzM(1);
                int zzq = zzekVar.zzq();
                int i5 = 3;
                zzekVar.zzM(3);
                zzej zzejVar2 = this.zzb;
                zzekVar.zzG(zzejVar2, 2);
                zzejVar2.zzn(3);
                int i6 = 13;
                zzaobVar2.zzr = zzejVar2.zzd(13);
                zzekVar.zzG(zzejVar2, 2);
                int i7 = 4;
                zzejVar2.zzn(4);
                int i8 = 12;
                zzekVar.zzM(zzejVar2.zzd(12));
                SparseArray sparseArray3 = this.zzc;
                sparseArray3.clear();
                SparseIntArray sparseIntArray = this.zzd;
                sparseIntArray.clear();
                int zza = zzekVar.zza();
                while (zza > 0) {
                    int i9 = 5;
                    zzekVar.zzG(zzejVar2, 5);
                    int zzd = zzejVar2.zzd(8);
                    zzejVar2.zzn(i5);
                    int zzd2 = zzejVar2.zzd(i6);
                    zzejVar2.zzn(i7);
                    int zzd3 = zzejVar2.zzd(i8);
                    int zzc = zzekVar.zzc();
                    int i10 = zzc + zzd3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i11 = -1;
                    int i12 = 0;
                    while (zzekVar.zzc() < i10) {
                        int zzm = zzekVar.zzm();
                        int zzc2 = zzekVar.zzc() + zzekVar.zzm();
                        if (zzc2 > i10) {
                            break;
                        }
                        if (zzm == i9) {
                            long zzu = zzekVar.zzu();
                            if (zzu != 1094921523) {
                                if (zzu != 1161904947) {
                                    if (zzu != 1094921524) {
                                        if (zzu == 1212503619) {
                                            i4 = 36;
                                            zzaobVar = zzaobVar2;
                                            i11 = i4;
                                            i2 = zzc2;
                                            zzejVar = zzejVar2;
                                            i3 = zza;
                                        }
                                        zzaobVar = zzaobVar2;
                                        i2 = zzc2;
                                        zzejVar = zzejVar2;
                                        i3 = zza;
                                    }
                                    zzaobVar = zzaobVar2;
                                    i2 = zzc2;
                                    zzejVar = zzejVar2;
                                    i3 = zza;
                                    i11 = 172;
                                }
                                zzaobVar = zzaobVar2;
                                zzejVar = zzejVar2;
                                i3 = zza;
                                i11 = 135;
                                i2 = zzc2;
                                zzekVar.zzM(i2 - zzekVar.zzc());
                                zza = i3;
                                zzejVar2 = zzejVar;
                                zzaobVar2 = zzaobVar;
                                i9 = 5;
                            }
                            zzaobVar = zzaobVar2;
                            i2 = zzc2;
                            zzejVar = zzejVar2;
                            i3 = zza;
                            i11 = 129;
                        } else {
                            if (zzm != 106) {
                                if (zzm != 122) {
                                    if (zzm == 127) {
                                        int zzm2 = zzekVar.zzm();
                                        if (zzm2 != 21) {
                                            if (zzm2 == 14) {
                                                i4 = 136;
                                            } else {
                                                if (zzm2 == 33) {
                                                    i4 = 139;
                                                }
                                                zzaobVar = zzaobVar2;
                                                i2 = zzc2;
                                                zzejVar = zzejVar2;
                                                i3 = zza;
                                            }
                                        }
                                        zzaobVar = zzaobVar2;
                                        i2 = zzc2;
                                        zzejVar = zzejVar2;
                                        i3 = zza;
                                        i11 = 172;
                                    } else if (zzm == 123) {
                                        i4 = 138;
                                    } else if (zzm == 10) {
                                        String trim = zzekVar.zzB(3, StandardCharsets.UTF_8).trim();
                                        i12 = zzekVar.zzm();
                                        zzaobVar = zzaobVar2;
                                        str = trim;
                                        i2 = zzc2;
                                        zzejVar = zzejVar2;
                                        i3 = zza;
                                    } else {
                                        if (zzm == 89) {
                                            ArrayList arrayList2 = new ArrayList();
                                            while (zzekVar.zzc() < zzc2) {
                                                int i13 = zzc2;
                                                String trim2 = zzekVar.zzB(3, StandardCharsets.UTF_8).trim();
                                                int zzm3 = zzekVar.zzm();
                                                int i14 = zza;
                                                byte[] bArr = new byte[4];
                                                zzekVar.zzH(bArr, 0, 4);
                                                arrayList2.add(new zzaoc(trim2, zzm3, bArr));
                                                zza = i14;
                                                zzc2 = i13;
                                                zzejVar2 = zzejVar2;
                                                zzaobVar2 = zzaobVar2;
                                            }
                                            zzaobVar = zzaobVar2;
                                            i2 = zzc2;
                                            zzejVar = zzejVar2;
                                            i3 = zza;
                                            arrayList = arrayList2;
                                            i11 = 89;
                                        } else {
                                            zzaobVar = zzaobVar2;
                                            i2 = zzc2;
                                            zzejVar = zzejVar2;
                                            i3 = zza;
                                            if (zzm == 111) {
                                                i11 = 257;
                                            }
                                        }
                                        zzekVar.zzM(i2 - zzekVar.zzc());
                                        zza = i3;
                                        zzejVar2 = zzejVar;
                                        zzaobVar2 = zzaobVar;
                                        i9 = 5;
                                    }
                                    zzaobVar = zzaobVar2;
                                    i11 = i4;
                                    i2 = zzc2;
                                    zzejVar = zzejVar2;
                                    i3 = zza;
                                }
                                zzaobVar = zzaobVar2;
                                zzejVar = zzejVar2;
                                i3 = zza;
                                i11 = 135;
                                i2 = zzc2;
                                zzekVar.zzM(i2 - zzekVar.zzc());
                                zza = i3;
                                zzejVar2 = zzejVar;
                                zzaobVar2 = zzaobVar;
                                i9 = 5;
                            }
                            zzaobVar = zzaobVar2;
                            i2 = zzc2;
                            zzejVar = zzejVar2;
                            i3 = zza;
                            i11 = 129;
                        }
                        zzekVar.zzM(i2 - zzekVar.zzc());
                        zza = i3;
                        zzejVar2 = zzejVar;
                        zzaobVar2 = zzaobVar;
                        i9 = 5;
                    }
                    zzaob zzaobVar3 = zzaobVar2;
                    zzej zzejVar3 = zzejVar2;
                    int i15 = zza;
                    zzekVar.zzL(i10);
                    zzaod zzaodVar = new zzaod(i11, str, i12, arrayList, Arrays.copyOfRange(zzekVar.zzN(), zzc, i10));
                    if (zzd == 6 || zzd == 5) {
                        zzd = zzaodVar.zza;
                    }
                    zza = i15 - (zzd3 + 5);
                    sparseBooleanArray3 = zzaobVar3.zzh;
                    if (!sparseBooleanArray3.get(zzd2)) {
                        zzaoeVar = zzaobVar3.zze;
                        zzaog zzb = zzaoeVar.zzb(zzd, zzaodVar);
                        sparseIntArray.put(zzd2, zzd2);
                        sparseArray3.put(zzd2, zzb);
                    }
                    i7 = 4;
                    zzejVar2 = zzejVar3;
                    zzaobVar2 = zzaobVar3;
                    i5 = 3;
                    i6 = 13;
                    i8 = 12;
                }
                zzaob zzaobVar4 = zzaobVar2;
                int size = sparseIntArray.size();
                for (int i16 = 0; i16 < size; i16++) {
                    int keyAt = sparseIntArray.keyAt(i16);
                    int valueAt = sparseIntArray.valueAt(i16);
                    sparseBooleanArray = zzaobVar4.zzh;
                    sparseBooleanArray.put(keyAt, true);
                    sparseBooleanArray2 = zzaobVar4.zzi;
                    sparseBooleanArray2.put(valueAt, true);
                    zzaog zzaogVar = (zzaog) sparseArray3.valueAt(i16);
                    if (zzaogVar != null) {
                        zzadqVar2 = zzaobVar4.zzl;
                        zzaogVar.zzb(zzerVar, zzadqVar2, new zzaof(zzq, keyAt, 8192));
                        sparseArray2 = zzaobVar4.zzg;
                        sparseArray2.put(valueAt, zzaogVar);
                    }
                }
                int i17 = this.zze;
                sparseArray = zzaobVar4.zzg;
                sparseArray.remove(i17);
                zzaobVar4.zzm = 0;
                i = zzaobVar4.zzm;
                if (i == 0) {
                    zzadqVar = zzaobVar4.zzl;
                    zzadqVar.zzG();
                    zzaobVar4.zzn = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzans
    public final void zzb(zzer zzerVar, zzadq zzadqVar, zzaof zzaofVar) {
    }
}
