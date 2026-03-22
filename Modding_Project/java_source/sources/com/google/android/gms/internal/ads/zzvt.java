package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzvt extends zzuj {
    private static final zzap zza;
    private final zzvd[] zzb;
    private final List zzc;
    private final zzbl[] zzd;
    private final ArrayList zze;
    private int zzf = -1;
    private long[][] zzg;
    @Nullable
    private zzvq zzh;
    private final zzum zzi;

    static {
        zzad zzadVar = new zzad();
        zzadVar.zza("MergingMediaSource");
        zza = zzadVar.zzc();
    }

    public zzvt(boolean z, boolean z2, zzum zzumVar, zzvd... zzvdVarArr) {
        this.zzb = zzvdVarArr;
        this.zzi = zzumVar;
        this.zze = new ArrayList(Arrays.asList(zzvdVarArr));
        this.zzc = new ArrayList(zzvdVarArr.length);
        int i = 0;
        while (true) {
            int length = zzvdVarArr.length;
            if (i < length) {
                this.zzc.add(new ArrayList());
                i++;
            } else {
                this.zzd = new zzbl[length];
                this.zzg = new long[0];
                new HashMap();
                zzfzi.zzb(8).zzb(2).zza();
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final /* bridge */ /* synthetic */ void zzA(Object obj, zzvd zzvdVar, zzbl zzblVar) {
        int i;
        Integer num = (Integer) obj;
        if (this.zzh == null) {
            if (this.zzf == -1) {
                i = zzblVar.zzb();
                this.zzf = i;
            } else {
                int zzb = zzblVar.zzb();
                int i2 = this.zzf;
                if (zzb != i2) {
                    this.zzh = new zzvq(0);
                    return;
                }
                i = i2;
            }
            if (this.zzg.length == 0) {
                this.zzg = (long[][]) Array.newInstance(Long.TYPE, i, this.zzd.length);
            }
            ArrayList arrayList = this.zze;
            arrayList.remove(zzvdVar);
            zzbl[] zzblVarArr = this.zzd;
            zzblVarArr[num.intValue()] = zzblVar;
            if (arrayList.isEmpty()) {
                zzo(zzblVarArr[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzG(zzuz zzuzVar) {
        zzuz zzuzVar2;
        zzvp zzvpVar = (zzvp) zzuzVar;
        int i = 0;
        while (true) {
            zzvd[] zzvdVarArr = this.zzb;
            if (i < zzvdVarArr.length) {
                List list = (List) this.zzc.get(i);
                zzuz zzn = zzvpVar.zzn(i);
                int i2 = 0;
                while (true) {
                    if (i2 < list.size()) {
                        zzuzVar2 = ((zzvr) list.get(i2)).zzb;
                        if (zzuzVar2.equals(zzn)) {
                            list.remove(i2);
                            break;
                        }
                        i2++;
                    }
                }
                zzvdVarArr[i].zzG(zzvpVar.zzn(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final zzuz zzI(zzvb zzvbVar, zzzg zzzgVar, long j) {
        zzbl[] zzblVarArr = this.zzd;
        zzvd[] zzvdVarArr = this.zzb;
        int length = zzvdVarArr.length;
        zzuz[] zzuzVarArr = new zzuz[length];
        int zza2 = zzblVarArr[0].zza(zzvbVar.zza);
        for (int i = 0; i < length; i++) {
            zzvb zza3 = zzvbVar.zza(zzblVarArr[i].zzf(zza2));
            zzuzVarArr[i] = zzvdVarArr[i].zzI(zza3, zzzgVar, j - this.zzg[zza2][i]);
            ((List) this.zzc.get(i)).add(new zzvr(zza3, zzuzVarArr[i], null));
        }
        return new zzvp(this.zzi, this.zzg[zza2], zzuzVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final zzap zzJ() {
        zzvd[] zzvdVarArr = this.zzb;
        if (zzvdVarArr.length > 0) {
            return zzvdVarArr[0].zzJ();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzuj, com.google.android.gms.internal.ads.zzua
    public final void zzn(@Nullable zzhg zzhgVar) {
        super.zzn(zzhgVar);
        int i = 0;
        while (true) {
            zzvd[] zzvdVarArr = this.zzb;
            if (i < zzvdVarArr.length) {
                zzB(Integer.valueOf(i), zzvdVarArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuj, com.google.android.gms.internal.ads.zzua
    public final void zzq() {
        super.zzq();
        Arrays.fill(this.zzd, (Object) null);
        this.zzf = -1;
        this.zzh = null;
        ArrayList arrayList = this.zze;
        arrayList.clear();
        Collections.addAll(arrayList, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzua, com.google.android.gms.internal.ads.zzvd
    public final void zzt(zzap zzapVar) {
        this.zzb[0].zzt(zzapVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    @Nullable
    public final /* bridge */ /* synthetic */ zzvb zzy(Object obj, zzvb zzvbVar) {
        zzvb zzvbVar2;
        zzvb zzvbVar3;
        int intValue = ((Integer) obj).intValue();
        List list = this.zzc;
        List list2 = (List) list.get(intValue);
        for (int i = 0; i < list2.size(); i++) {
            zzvbVar2 = ((zzvr) list2.get(i)).zza;
            if (zzvbVar2.equals(zzvbVar)) {
                zzvbVar3 = ((zzvr) ((List) list.get(0)).get(i)).zza;
                return zzvbVar3;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzuj, com.google.android.gms.internal.ads.zzvd
    public final void zzz() throws IOException {
        zzvq zzvqVar = this.zzh;
        if (zzvqVar == null) {
            super.zzz();
            return;
        }
        throw zzvqVar;
    }
}
