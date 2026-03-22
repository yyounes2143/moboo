package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhay {
    public static final /* synthetic */ int zza = 0;
    private static final zzhbi zzb;

    static {
        int i = zzhan.zza;
        zzb = new zzhbk();
    }

    public static void zzA(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzu(i, list, z);
        }
    }

    public static void zzB(int i, List list, zzhbx zzhbxVar, zzhaw zzhawVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ((zzgxy) zzhbxVar).zzv(i, list.get(i2), zzhawVar);
            }
        }
    }

    public static void zzC(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzy(i, list, z);
        }
    }

    public static void zzD(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzA(i, list, z);
        }
    }

    public static void zzE(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzC(i, list, z);
        }
    }

    public static void zzF(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzE(i, list, z);
        }
    }

    public static void zzG(int i, List list, zzhbx zzhbxVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzH(i, list);
        }
    }

    public static void zzH(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzJ(i, list, z);
        }
    }

    public static void zzI(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzL(i, list, z);
        }
    }

    public static boolean zzJ(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static int zza(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgxx.zzE(zzgytVar.zzd(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgxx.zzE(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgxx.zzD(i << 3) + 4);
    }

    public static int zzc(List list) {
        return list.size() * 4;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgxx.zzD(i << 3) + 8);
    }

    public static int zze(List list) {
        return list.size() * 8;
    }

    public static int zzf(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgxx.zzE(zzgytVar.zzd(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgxx.zzE(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int zzg(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgxx.zzE(zzgzsVar.zza(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgxx.zzE(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int zzh(int i, Object obj, zzhaw zzhawVar) {
        int i2 = i << 3;
        if (obj instanceof zzgzo) {
            int zzD = zzgxx.zzD(i2);
            int zza2 = ((zzgzo) obj).zza();
            return zzD + zzgxx.zzD(zza2) + zza2;
        }
        return zzgxx.zzD(i2) + zzgxx.zzA((zzhad) obj, zzhawVar);
    }

    public static int zzi(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = 0;
            while (i < size) {
                int zzd = zzgytVar.zzd(i);
                i2 += zzgxx.zzD((zzd >> 31) ^ (zzd + zzd));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzgxx.zzD((intValue >> 31) ^ (intValue + intValue));
            i++;
        }
        return i3;
    }

    public static int zzj(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = 0;
            while (i < size) {
                long zza2 = zzgzsVar.zza(i);
                i2 += zzgxx.zzE((zza2 >> 63) ^ (zza2 + zza2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzgxx.zzE((longValue >> 63) ^ (longValue + longValue));
            i++;
        }
        return i3;
    }

    public static int zzk(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgxx.zzD(zzgytVar.zzd(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgxx.zzD(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int zzl(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgxx.zzE(zzgzsVar.zza(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgxx.zzE(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static zzhbi zzm() {
        return zzb;
    }

    public static Object zzn(Object obj, int i, List list, zzgyy zzgyyVar, Object obj2, zzhbi zzhbiVar) {
        if (zzgyyVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int intValue = num.intValue();
                if (zzgyyVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj2 = zzo(obj, i, intValue, obj2, zzhbiVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
            return obj2;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int intValue2 = ((Integer) it.next()).intValue();
            if (!zzgyyVar.zza(intValue2)) {
                obj2 = zzo(obj, i, intValue2, obj2, zzhbiVar);
                it.remove();
            }
        }
        return obj2;
    }

    public static Object zzo(Object obj, int i, int i2, Object obj2, zzhbi zzhbiVar) {
        if (obj2 == null) {
            obj2 = zzhbiVar.zza(obj);
        }
        zzhbiVar.zzh(obj2, i, i2);
        return obj2;
    }

    public static void zzp(zzgyd zzgydVar, Object obj, Object obj2) {
        if (((zzgyo) obj2).zza.zza.isEmpty()) {
            return;
        }
        zzgyo zzgyoVar = (zzgyo) obj;
        throw null;
    }

    public static void zzq(zzhbi zzhbiVar, Object obj, Object obj2) {
        zzgys zzgysVar = (zzgys) obj;
        zzhbj zzhbjVar = zzgysVar.zzt;
        zzhbj zzhbjVar2 = ((zzgys) obj2).zzt;
        if (!zzhbj.zzc().equals(zzhbjVar2)) {
            if (zzhbj.zzc().equals(zzhbjVar)) {
                zzhbjVar = zzhbj.zze(zzhbjVar, zzhbjVar2);
            } else {
                zzhbjVar.zzd(zzhbjVar2);
            }
        }
        zzgysVar.zzt = zzhbjVar;
    }

    public static void zzr(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzc(i, list, z);
        }
    }

    public static void zzs(int i, List list, zzhbx zzhbxVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zze(i, list);
        }
    }

    public static void zzt(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzg(i, list, z);
        }
    }

    public static void zzu(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzj(i, list, z);
        }
    }

    public static void zzv(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzl(i, list, z);
        }
    }

    public static void zzw(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzn(i, list, z);
        }
    }

    public static void zzx(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzp(i, list, z);
        }
    }

    public static void zzy(int i, List list, zzhbx zzhbxVar, zzhaw zzhawVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ((zzgxy) zzhbxVar).zzq(i, list.get(i2), zzhawVar);
            }
        }
    }

    public static void zzz(int i, List list, zzhbx zzhbxVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhbxVar.zzs(i, list, z);
        }
    }
}
