package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zziz {
    public static final /* synthetic */ int zza = 0;
    private static final zzjj zzb;

    static {
        int i = zziu.zza;
        zzb = new zzjl();
    }

    public static void zzA(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzC(i, list, z);
        }
    }

    public static void zzB(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzE(i, list, z);
        }
    }

    public static void zzC(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzJ(i, list, z);
        }
    }

    public static void zzD(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzL(i, list, z);
        }
    }

    public static boolean zzE(Object obj, Object obj2) {
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
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgr.zzA(zzhlVar.zze(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgr.zzA(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgr.zzz(i << 3) + 4);
    }

    public static int zzc(List list) {
        return list.size() * 4;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgr.zzz(i << 3) + 8);
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
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgr.zzA(zzhlVar.zze(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgr.zzA(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgr.zzA(zzibVar.zze(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgr.zzA(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int zzh(int i, Object obj, zzix zzixVar) {
        int i2 = i << 3;
        if (obj instanceof zzhx) {
            int zzz = zzgr.zzz(i2);
            int zza2 = ((zzhx) obj).zza();
            return zzz + zzgr.zzz(zza2) + zza2;
        }
        return zzgr.zzz(i2) + zzgr.zzx((zzim) obj, zzixVar);
    }

    public static int zzi(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            int i2 = 0;
            while (i < size) {
                int zze = zzhlVar.zze(i);
                i2 += zzgr.zzz((zze >> 31) ^ (zze + zze));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzgr.zzz((intValue >> 31) ^ (intValue + intValue));
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
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            int i2 = 0;
            while (i < size) {
                long zze = zzibVar.zze(i);
                i2 += zzgr.zzA((zze >> 63) ^ (zze + zze));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzgr.zzA((longValue >> 63) ^ (longValue + longValue));
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
        if (list instanceof zzhl) {
            zzhl zzhlVar = (zzhl) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgr.zzz(zzhlVar.zze(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgr.zzz(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzib) {
            zzib zzibVar = (zzib) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzgr.zzA(zzibVar.zze(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzgr.zzA(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static zzjj zzm() {
        return zzb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r5 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object zzn(java.lang.Object r2, int r3, int r4, java.lang.Object r5, com.google.android.gms.internal.play_billing.zzjj r6) {
        /*
            if (r5 != 0) goto L12
            com.google.android.gms.internal.play_billing.zzhk r2 = (com.google.android.gms.internal.play_billing.zzhk) r2
            com.google.android.gms.internal.play_billing.zzjk r5 = r2.zzc
            com.google.android.gms.internal.play_billing.zzjk r6 = com.google.android.gms.internal.play_billing.zzjk.zzc()
            if (r5 != r6) goto L12
            com.google.android.gms.internal.play_billing.zzjk r5 = com.google.android.gms.internal.play_billing.zzjk.zzf()
            r2.zzc = r5
        L12:
            long r0 = (long) r4
            int r2 = r3 << 3
            r3 = r5
            com.google.android.gms.internal.play_billing.zzjk r3 = (com.google.android.gms.internal.play_billing.zzjk) r3
            java.lang.Long r4 = java.lang.Long.valueOf(r0)
            r3.zzj(r2, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zziz.zzn(java.lang.Object, int, int, java.lang.Object, com.google.android.gms.internal.play_billing.zzjj):java.lang.Object");
    }

    public static void zzo(zzgx zzgxVar, Object obj, Object obj2) {
        if (((zzhh) obj2).zzb.zza.isEmpty()) {
            return;
        }
        zzhh zzhhVar = (zzhh) obj;
        throw null;
    }

    public static void zzp(zzjj zzjjVar, Object obj, Object obj2) {
        zzhk zzhkVar = (zzhk) obj;
        zzjk zzjkVar = zzhkVar.zzc;
        zzjk zzjkVar2 = ((zzhk) obj2).zzc;
        if (!zzjk.zzc().equals(zzjkVar2)) {
            if (zzjk.zzc().equals(zzjkVar)) {
                zzjkVar = zzjk.zze(zzjkVar, zzjkVar2);
            } else {
                zzjkVar.zzd(zzjkVar2);
            }
        }
        zzhkVar.zzc = zzjkVar;
    }

    public static void zzq(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzc(i, list, z);
        }
    }

    public static void zzr(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzg(i, list, z);
        }
    }

    public static void zzs(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzj(i, list, z);
        }
    }

    public static void zzt(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzl(i, list, z);
        }
    }

    public static void zzu(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzn(i, list, z);
        }
    }

    public static void zzv(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzp(i, list, z);
        }
    }

    public static void zzw(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzs(i, list, z);
        }
    }

    public static void zzx(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzu(i, list, z);
        }
    }

    public static void zzy(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzy(i, list, z);
        }
    }

    public static void zzz(int i, List list, zzjw zzjwVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzjwVar.zzA(i, list, z);
        }
    }
}
