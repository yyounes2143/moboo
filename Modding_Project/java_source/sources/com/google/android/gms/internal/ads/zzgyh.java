package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgyh {
    private static final zzgyh zzb = new zzgyh(true);
    final zzhbe zza = new zzhaz();
    private boolean zzc;
    private boolean zzd;

    private zzgyh() {
    }

    public static int zza(zzhbv zzhbvVar, int i, Object obj) {
        int zzD = zzgxx.zzD(i << 3);
        if (zzhbvVar == zzhbv.zzj) {
            byte[] bArr = zzgzf.zzb;
            if (!(((zzhad) obj) instanceof zzgwu)) {
                zzD += zzD;
            } else {
                throw null;
            }
        }
        return zzD + zzb(zzhbvVar, obj);
    }

    public static int zzb(zzhbv zzhbvVar, Object obj) {
        int zzd;
        int zzD;
        zzhbv zzhbvVar2 = zzhbv.zza;
        zzhbw zzhbwVar = zzhbw.INT;
        switch (zzhbvVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                int i = zzgxx.zzf;
                return 8;
            case 1:
                ((Float) obj).getClass();
                int i2 = zzgxx.zzf;
                return 4;
            case 2:
                return zzgxx.zzE(((Long) obj).longValue());
            case 3:
                return zzgxx.zzE(((Long) obj).longValue());
            case 4:
                return zzgxx.zzE(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                int i3 = zzgxx.zzf;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                int i4 = zzgxx.zzf;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                int i5 = zzgxx.zzf;
                return 1;
            case 8:
                if (obj instanceof zzgxk) {
                    int i6 = zzgxx.zzf;
                    zzd = ((zzgxk) obj).zzd();
                    zzD = zzgxx.zzD(zzd);
                    break;
                } else {
                    return zzgxx.zzC((String) obj);
                }
            case 9:
                int i7 = zzgxx.zzf;
                return ((zzhad) obj).zzaY();
            case 10:
                if (obj instanceof zzgzn) {
                    int i8 = zzgxx.zzf;
                    zzd = ((zzgzn) obj).zza();
                    zzD = zzgxx.zzD(zzd);
                    break;
                } else {
                    return zzgxx.zzz((zzhad) obj);
                }
            case 11:
                if (obj instanceof zzgxk) {
                    int i9 = zzgxx.zzf;
                    zzd = ((zzgxk) obj).zzd();
                    zzD = zzgxx.zzD(zzd);
                    break;
                } else {
                    int i10 = zzgxx.zzf;
                    zzd = ((byte[]) obj).length;
                    zzD = zzgxx.zzD(zzd);
                    break;
                }
            case 12:
                return zzgxx.zzD(((Integer) obj).intValue());
            case 13:
                if (obj instanceof zzgyw) {
                    return zzgxx.zzE(((zzgyw) obj).zza());
                }
                return zzgxx.zzE(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                int i11 = zzgxx.zzf;
                return 4;
            case 15:
                ((Long) obj).getClass();
                int i12 = zzgxx.zzf;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return zzgxx.zzD((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return zzgxx.zzE((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzD + zzd;
    }

    public static int zzc(zzgyg zzgygVar, Object obj) {
        zzhbv zzb2 = zzgygVar.zzb();
        int zza = zzgygVar.zza();
        if (zzgygVar.zze()) {
            List list = (List) obj;
            int size = list.size();
            int i = 0;
            if (zzgygVar.zzd()) {
                if (list.isEmpty()) {
                    return 0;
                }
                int i2 = 0;
                while (i < size) {
                    i2 += zzb(zzb2, list.get(i));
                    i++;
                }
                return zzgxx.zzD(zza << 3) + i2 + zzgxx.zzD(i2);
            }
            int i3 = 0;
            while (i < size) {
                i3 += zza(zzb2, zza, list.get(i));
                i++;
            }
            return i3;
        }
        return zza(zzb2, zza, obj);
    }

    public static zzgyh zze() {
        return zzb;
    }

    private static boolean zzj(Map.Entry entry) {
        zzgyg zzgygVar = (zzgyg) entry.getKey();
        if (zzgygVar.zzc() == zzhbw.MESSAGE) {
            if (zzgygVar.zze()) {
                List list = (List) entry.getValue();
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (!zzk(list.get(i))) {
                        return false;
                    }
                }
                return true;
            }
            return zzk(entry.getValue());
        }
        return true;
    }

    private static boolean zzk(Object obj) {
        if (obj instanceof zzhae) {
            return ((zzhae) obj).zzbw();
        }
        if (obj instanceof zzgzn) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzl(Map.Entry entry) {
        int i;
        int zzD;
        int zzD2;
        zzgyg zzgygVar = (zzgyg) entry.getKey();
        Object value = entry.getValue();
        if (zzgygVar.zzc() == zzhbw.MESSAGE && !zzgygVar.zze() && !zzgygVar.zzd()) {
            if (value instanceof zzgzn) {
                int zza = ((zzgyg) entry.getKey()).zza();
                int zzD3 = zzgxx.zzD(8);
                i = zzD3 + zzD3;
                zzD = zzgxx.zzD(16) + zzgxx.zzD(zza);
                int zzD4 = zzgxx.zzD(24);
                int zza2 = ((zzgzn) value).zza();
                zzD2 = zzD4 + zzgxx.zzD(zza2) + zza2;
            } else {
                int zza3 = ((zzgyg) entry.getKey()).zza();
                int zzD5 = zzgxx.zzD(8);
                i = zzD5 + zzD5;
                zzD = zzgxx.zzD(16) + zzgxx.zzD(zza3);
                zzD2 = zzgxx.zzD(24) + zzgxx.zzz((zzhad) value);
            }
            return i + zzD + zzD2;
        }
        return zzc(zzgygVar, value);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0047 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzm(com.google.android.gms.internal.ads.zzgyg r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.ads.zzhbv r0 = r4.zzb()
            byte[] r1 = com.google.android.gms.internal.ads.zzgzf.zzb
            r5.getClass()
            com.google.android.gms.internal.ads.zzhbv r1 = com.google.android.gms.internal.ads.zzhbv.zza
            com.google.android.gms.internal.ads.zzhbw r1 = com.google.android.gms.internal.ads.zzhbw.INT
            com.google.android.gms.internal.ads.zzhbw r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L43;
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L2b;
                case 7: goto L22;
                case 8: goto L19;
                default: goto L18;
            }
        L18:
            goto L48
        L19:
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzhad
            if (r0 != 0) goto L21
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgzn
            if (r0 == 0) goto L48
        L21:
            return
        L22:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L2a
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgyw
            if (r0 == 0) goto L48
        L2a:
            return
        L2b:
            boolean r0 = r5 instanceof com.google.android.gms.internal.ads.zzgxk
            if (r0 != 0) goto L33
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L48
        L33:
            return
        L34:
            boolean r0 = r5 instanceof java.lang.String
            goto L45
        L37:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L45
        L3a:
            boolean r0 = r5 instanceof java.lang.Double
            goto L45
        L3d:
            boolean r0 = r5 instanceof java.lang.Float
            goto L45
        L40:
            boolean r0 = r5 instanceof java.lang.Long
            goto L45
        L43:
            boolean r0 = r5 instanceof java.lang.Integer
        L45:
            if (r0 == 0) goto L48
            return
        L48:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r4.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.ads.zzhbv r4 = r4.zzb()
            com.google.android.gms.internal.ads.zzhbw r4 = r4.zza()
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            r2[r3] = r1
            r1 = 1
            r2[r1] = r4
            r4 = 2
            r2[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r2)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgyh.zzm(com.google.android.gms.internal.ads.zzgyg, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzgyh zzgyhVar = new zzgyh();
        zzhbe zzhbeVar = this.zza;
        int zzc = zzhbeVar.zzc();
        for (int i = 0; i < zzc; i++) {
            Map.Entry zzg = zzhbeVar.zzg(i);
            zzgyhVar.zzh((zzgyg) ((zzhba) zzg).zza(), zzg.getValue());
        }
        for (Map.Entry entry : zzhbeVar.zzd()) {
            zzgyhVar.zzh((zzgyg) entry.getKey(), entry.getValue());
        }
        zzgyhVar.zzd = this.zzd;
        return zzgyhVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgyh)) {
            return false;
        }
        return this.zza.equals(((zzgyh) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzd() {
        zzhbe zzhbeVar = this.zza;
        int zzc = zzhbeVar.zzc();
        int i = 0;
        for (int i2 = 0; i2 < zzc; i2++) {
            i += zzl(zzhbeVar.zzg(i2));
        }
        for (Map.Entry entry : zzhbeVar.zzd()) {
            i += zzl(entry);
        }
        return i;
    }

    public final Iterator zzf() {
        zzhbe zzhbeVar = this.zza;
        if (zzhbeVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzd) {
            return new zzgzl(zzhbeVar.entrySet().iterator());
        }
        return zzhbeVar.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzc) {
            return;
        }
        zzhbe zzhbeVar = this.zza;
        int zzc = zzhbeVar.zzc();
        for (int i = 0; i < zzc; i++) {
            Object value = zzhbeVar.zzg(i).getValue();
            if (value instanceof zzgys) {
                ((zzgys) value).zzbU();
            }
        }
        for (Map.Entry entry : zzhbeVar.zzd()) {
            Object value2 = entry.getValue();
            if (value2 instanceof zzgys) {
                ((zzgys) value2).zzbU();
            }
        }
        zzhbeVar.zza();
        this.zzc = true;
    }

    public final void zzh(zzgyg zzgygVar, Object obj) {
        if (zzgygVar.zze()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    Object obj2 = list.get(i);
                    zzm(zzgygVar, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzm(zzgygVar, obj);
        }
        if (obj instanceof zzgzn) {
            this.zzd = true;
        }
        this.zza.put(zzgygVar, obj);
    }

    public final boolean zzi() {
        zzhbe zzhbeVar = this.zza;
        int zzc = zzhbeVar.zzc();
        for (int i = 0; i < zzc; i++) {
            if (!zzj(zzhbeVar.zzg(i))) {
                return false;
            }
        }
        for (Map.Entry entry : zzhbeVar.zzd()) {
            if (!zzj(entry)) {
                return false;
            }
        }
        return true;
    }

    private zzgyh(boolean z) {
        zzg();
        zzg();
    }
}
