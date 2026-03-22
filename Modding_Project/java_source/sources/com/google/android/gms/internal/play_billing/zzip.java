package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzip<T> implements zzix<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzjq.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzim zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzjj zzl;
    private final zzgx zzm;

    private zzip(int[] iArr, Object[] objArr, int i, int i2, zzim zzimVar, boolean z, int[] iArr2, int i3, int i4, zzir zzirVar, zzhz zzhzVar, zzjj zzjjVar, zzgx zzgxVar, zzih zzihVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzgxVar != null && (zzimVar instanceof zzhh)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzjjVar;
        this.zzm = zzgxVar;
        this.zzg = zzimVar;
    }

    private static void zzA(Object obj) {
        if (zzL(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void zzB(Object obj, Object obj2, int i) {
        if (!zzI(obj2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzs = zzs(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzs);
        if (object != null) {
            zzix zzv = zzv(i);
            if (!zzI(obj, i)) {
                if (!zzL(object)) {
                    unsafe.putObject(obj, zzs, object);
                } else {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, zzs, zze);
                }
                zzD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzs);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, zzs, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
    }

    private final void zzC(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (!zzM(obj2, i2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzs = zzs(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzs);
        if (object != null) {
            zzix zzv = zzv(i);
            if (!zzM(obj, i2, i)) {
                if (!zzL(object)) {
                    unsafe.putObject(obj, zzs, object);
                } else {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, zzs, zze);
                }
                zzE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzs);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, zzs, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
    }

    private final void zzD(Object obj, int i) {
        int zzp = zzp(i);
        long j = 1048575 & zzp;
        if (j == 1048575) {
            return;
        }
        zzjq.zzq(obj, j, (1 << (zzp >>> 20)) | zzjq.zzc(obj, j));
    }

    private final void zzE(Object obj, int i, int i2) {
        zzjq.zzq(obj, zzp(i2) & 1048575, i);
    }

    private final void zzF(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzs(i) & 1048575, obj2);
        zzD(obj, i);
    }

    private final void zzG(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzs(i2) & 1048575, obj2);
        zzE(obj, i, i2);
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        if (zzI(obj, i) == zzI(obj2, i)) {
            return true;
        }
        return false;
    }

    private final boolean zzI(Object obj, int i) {
        int zzp = zzp(i);
        long j = zzp & 1048575;
        if (j == 1048575) {
            int zzs = zzs(i);
            long j2 = zzs & 1048575;
            switch (zzr(zzs)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzjq.zza(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzjq.zzb(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzjq.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzjq.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzjq.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzjq.zzw(obj, j2);
                case 8:
                    Object zzf = zzjq.zzf(obj, j2);
                    if (zzf instanceof String) {
                        if (((String) zzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzf instanceof zzgk) {
                        if (zzgk.zzb.equals(zzf)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzjq.zzf(obj, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzgk.zzb.equals(zzjq.zzf(obj, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzjq.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzjq.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzjq.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzjq.zzf(obj, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzjq.zzc(obj, j) & (1 << (zzp >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzJ(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzI(obj, i);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzK(Object obj, int i, zzix zzixVar) {
        return zzixVar.zzk(zzjq.zzf(obj, i & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzhk) {
            return ((zzhk) obj).zzA();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i, int i2) {
        if (zzjq.zzc(obj, zzp(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    private static boolean zzN(Object obj, long j) {
        return ((Boolean) zzjq.zzf(obj, j)).booleanValue();
    }

    private static final void zzO(int i, Object obj, zzjw zzjwVar) throws IOException {
        if (obj instanceof String) {
            zzjwVar.zzG(i, (String) obj);
        } else {
            zzjwVar.zzd(i, (zzgk) obj);
        }
    }

    public static zzjk zzd(Object obj) {
        zzhk zzhkVar = (zzhk) obj;
        zzjk zzjkVar = zzhkVar.zzc;
        if (zzjkVar == zzjk.zzc()) {
            zzjk zzf = zzjk.zzf();
            zzhkVar.zzc = zzf;
            return zzf;
        }
        return zzjkVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.play_billing.zzip zzl(java.lang.Class r32, com.google.android.gms.internal.play_billing.zzij r33, com.google.android.gms.internal.play_billing.zzir r34, com.google.android.gms.internal.play_billing.zzhz r35, com.google.android.gms.internal.play_billing.zzjj r36, com.google.android.gms.internal.play_billing.zzgx r37, com.google.android.gms.internal.play_billing.zzih r38) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzl(java.lang.Class, com.google.android.gms.internal.play_billing.zzij, com.google.android.gms.internal.play_billing.zzir, com.google.android.gms.internal.play_billing.zzhz, com.google.android.gms.internal.play_billing.zzjj, com.google.android.gms.internal.play_billing.zzgx, com.google.android.gms.internal.play_billing.zzih):com.google.android.gms.internal.play_billing.zzip");
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzjq.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzjq.zzf(obj, j)).floatValue();
    }

    private static int zzo(Object obj, long j) {
        return ((Integer) zzjq.zzf(obj, j)).intValue();
    }

    private final int zzp(int i) {
        return this.zzc[i + 2];
    }

    private final int zzq(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzr(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzs(int i) {
        return this.zzc[i + 1];
    }

    private static long zzt(Object obj, long j) {
        return ((Long) zzjq.zzf(obj, j)).longValue();
    }

    private final zzhm zzu(int i) {
        int i2 = i / 3;
        return (zzhm) this.zzd[i2 + i2 + 1];
    }

    private final zzix zzv(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzix zzixVar = (zzix) objArr[i3];
        if (zzixVar != null) {
            return zzixVar;
        }
        zzix zzb2 = zziu.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzx(Object obj, int i) {
        zzix zzv = zzv(i);
        int zzs = zzs(i) & 1048575;
        if (!zzI(obj, i)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzy(Object obj, int i, int i2) {
        zzix zzv = zzv(i2);
        if (!zzM(obj, i, i2)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i2) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zza(Object obj) {
        int i;
        int i2;
        int zzz;
        int zzz2;
        int zzA;
        int zzz3;
        int zzz4;
        int zzz5;
        int zzd;
        int zzz6;
        int zzh;
        int zzg;
        int size;
        int zzl;
        int zzz7;
        int zzz8;
        int zzz9;
        int zze;
        int zzz10;
        int zzz11;
        int i3;
        int zzz12;
        int zzz13;
        int zzz14;
        int zzA2;
        int zzz15;
        int zzz16;
        int zzd2;
        int zzz17;
        zzip<T> zzipVar = this;
        Object obj2 = obj;
        int i4 = 1;
        Unsafe unsafe = zzb;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 1048575;
        while (i6 < zzipVar.zzc.length) {
            int zzs = zzipVar.zzs(i6);
            int zzr = zzr(zzs);
            int[] iArr = zzipVar.zzc;
            int i10 = iArr[i6];
            int i11 = iArr[i6 + 2];
            int i12 = i11 & i5;
            if (zzr <= 17) {
                if (i12 != i9) {
                    i7 = i12 == i5 ? 0 : unsafe.getInt(obj2, i12);
                    i9 = i12;
                }
                i = i4 << (i11 >>> 20);
            } else {
                i = 0;
            }
            int i13 = zzs & i5;
            if (zzr >= zzhc.zzJ.zza()) {
                zzhc.zzW.zza();
            }
            int i14 = i8;
            long j = i13;
            switch (zzr) {
                case 0:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        i8 = i14 + zzgr.zzz(i10 << 3) + 8;
                        break;
                    }
                    i8 = i14;
                    break;
                case 1:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz = zzgr.zzz(i10 << 3);
                        zzz4 = zzz + 4;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 2:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        long j2 = unsafe.getLong(obj2, j);
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzA(j2);
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 3:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        long j3 = unsafe.getLong(obj2, j);
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzA(j3);
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 4:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzA(unsafe.getInt(obj2, j));
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 5:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz3 = zzgr.zzz(i10 << 3);
                        zzz4 = zzz3 + 8;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 6:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz = zzgr.zzz(i10 << 3);
                        zzz4 = zzz + 4;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 7:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz4 = zzgr.zzz(i10 << 3) + 1;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 8:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        int i15 = i10 << 3;
                        Object object = unsafe.getObject(obj2, j);
                        if (object instanceof zzgk) {
                            zzz5 = zzgr.zzz(i15);
                            zzd = ((zzgk) object).zzd();
                            zzz6 = zzgr.zzz(zzd);
                            zzz4 = zzz5 + zzz6 + zzd;
                            i8 = i14 + zzz4;
                            zzipVar = this;
                            break;
                        } else {
                            zzz2 = zzgr.zzz(i15);
                            zzA = zzgr.zzy((String) object);
                            zzz4 = zzz2 + zzA;
                            i8 = i14 + zzz4;
                            zzipVar = this;
                        }
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 9:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzh = zziz.zzh(i10, unsafe.getObject(obj2, j), zzipVar.zzv(i6));
                        i8 = i14 + zzh;
                        break;
                    }
                    i8 = i14;
                    break;
                case 10:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz5 = zzgr.zzz(i10 << 3);
                        zzd = ((zzgk) unsafe.getObject(obj2, j)).zzd();
                        zzz6 = zzgr.zzz(zzd);
                        zzz4 = zzz5 + zzz6 + zzd;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 11:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        int i16 = unsafe.getInt(obj2, j);
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzz(i16);
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 12:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzA(unsafe.getInt(obj2, j));
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 13:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz = zzgr.zzz(i10 << 3);
                        zzz4 = zzz + 4;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 14:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzz3 = zzgr.zzz(i10 << 3);
                        zzz4 = zzz3 + 8;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 15:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        int i17 = unsafe.getInt(obj2, j);
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzz((i17 >> 31) ^ (i17 + i17));
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 16:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        long j4 = unsafe.getLong(obj2, j);
                        zzz2 = zzgr.zzz(i10 << 3);
                        zzA = zzgr.zzA((j4 >> 63) ^ (j4 + j4));
                        zzz4 = zzz2 + zzA;
                        i8 = i14 + zzz4;
                        zzipVar = this;
                        break;
                    }
                    zzipVar = this;
                    i8 = i14;
                    break;
                case 17:
                    i2 = i4;
                    if (zzipVar.zzJ(obj2, i6, i9, i7, i)) {
                        zzh = zzgr.zzw(i10, (zzim) unsafe.getObject(obj2, j), zzipVar.zzv(i6));
                        i8 = i14 + zzh;
                        break;
                    }
                    i8 = i14;
                    break;
                case 18:
                    i2 = i4;
                    zzh = zziz.zzd(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 19:
                    i2 = i4;
                    zzh = zziz.zzb(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 20:
                    i2 = i4;
                    List list = (List) unsafe.getObject(obj2, j);
                    int i18 = zziz.zza;
                    if (list.size() != 0) {
                        zzg = zziz.zzg(list) + (list.size() * zzgr.zzz(i10 << 3));
                        i8 = i14 + zzg;
                        break;
                    }
                    zzg = 0;
                    i8 = i14 + zzg;
                case 21:
                    i2 = i4;
                    List list2 = (List) unsafe.getObject(obj2, j);
                    int i19 = zziz.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzl = zziz.zzl(list2);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 22:
                    i2 = i4;
                    List list3 = (List) unsafe.getObject(obj2, j);
                    int i20 = zziz.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzl = zziz.zzf(list3);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 23:
                    i2 = i4;
                    zzh = zziz.zzd(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 24:
                    i2 = i4;
                    zzh = zziz.zzb(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 25:
                    i2 = i4;
                    int i21 = zziz.zza;
                    int size2 = ((List) unsafe.getObject(obj2, j)).size();
                    if (size2 != 0) {
                        zzh = size2 * (zzgr.zzz(i10 << 3) + 1);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 26:
                    i2 = i4;
                    List list4 = (List) unsafe.getObject(obj2, j);
                    int i22 = zziz.zza;
                    int size3 = list4.size();
                    if (size3 != 0) {
                        zzg = zzgr.zzz(i10 << 3) * size3;
                        if (list4 instanceof zzhy) {
                            zzhy zzhyVar = (zzhy) list4;
                            for (int i23 = 0; i23 < size3; i23++) {
                                Object zzc = zzhyVar.zzc();
                                if (zzc instanceof zzgk) {
                                    int zzd3 = ((zzgk) zzc).zzd();
                                    zzg += zzgr.zzz(zzd3) + zzd3;
                                } else {
                                    zzg += zzgr.zzy((String) zzc);
                                }
                            }
                        } else {
                            for (int i24 = 0; i24 < size3; i24++) {
                                Object obj3 = list4.get(i24);
                                if (obj3 instanceof zzgk) {
                                    int zzd4 = ((zzgk) obj3).zzd();
                                    zzg += zzgr.zzz(zzd4) + zzd4;
                                } else {
                                    zzg += zzgr.zzy((String) obj3);
                                }
                            }
                        }
                        i8 = i14 + zzg;
                        break;
                    }
                    zzg = 0;
                    i8 = i14 + zzg;
                case 27:
                    i2 = i4;
                    List list5 = (List) unsafe.getObject(obj2, j);
                    zzix zzv = zzipVar.zzv(i6);
                    int i25 = zziz.zza;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        zzz8 = 0;
                    } else {
                        zzz8 = zzgr.zzz(i10 << 3) * size4;
                        for (int i26 = 0; i26 < size4; i26++) {
                            Object obj4 = list5.get(i26);
                            if (obj4 instanceof zzhx) {
                                int zza2 = ((zzhx) obj4).zza();
                                zzz8 += zzgr.zzz(zza2) + zza2;
                            } else {
                                zzz8 += zzgr.zzx((zzim) obj4, zzv);
                            }
                        }
                    }
                    i8 = zzz8 + i14;
                    break;
                case 28:
                    i2 = i4;
                    List list6 = (List) unsafe.getObject(obj2, j);
                    int i27 = zziz.zza;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        zzz9 = 0;
                    } else {
                        zzz9 = size5 * zzgr.zzz(i10 << 3);
                        for (int i28 = 0; i28 < list6.size(); i28++) {
                            int zzd5 = ((zzgk) list6.get(i28)).zzd();
                            zzz9 += zzgr.zzz(zzd5) + zzd5;
                        }
                    }
                    i8 = i14 + zzz9;
                    break;
                case 29:
                    i2 = i4;
                    List list7 = (List) unsafe.getObject(obj2, j);
                    int i29 = zziz.zza;
                    size = list7.size();
                    if (size != 0) {
                        zzl = zziz.zzk(list7);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 30:
                    i2 = i4;
                    List list8 = (List) unsafe.getObject(obj2, j);
                    int i30 = zziz.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzl = zziz.zza(list8);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 31:
                    i2 = i4;
                    zzh = zziz.zzb(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 32:
                    i2 = i4;
                    zzh = zziz.zzd(i10, (List) unsafe.getObject(obj2, j), false);
                    i8 = i14 + zzh;
                    break;
                case 33:
                    i2 = i4;
                    List list9 = (List) unsafe.getObject(obj2, j);
                    int i31 = zziz.zza;
                    size = list9.size();
                    if (size != 0) {
                        zzl = zziz.zzi(list9);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 34:
                    i2 = i4;
                    List list10 = (List) unsafe.getObject(obj2, j);
                    int i32 = zziz.zza;
                    size = list10.size();
                    if (size != 0) {
                        zzl = zziz.zzj(list10);
                        zzz7 = zzgr.zzz(i10 << 3);
                        zzh = zzl + (size * zzz7);
                        i8 = i14 + zzh;
                        break;
                    }
                    zzh = 0;
                    i8 = i14 + zzh;
                case 35:
                    i2 = i4;
                    zze = zziz.zze((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 36:
                    i2 = i4;
                    zze = zziz.zzc((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 37:
                    i2 = i4;
                    zze = zziz.zzg((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 38:
                    i2 = i4;
                    zze = zziz.zzl((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 39:
                    i2 = i4;
                    zze = zziz.zzf((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 40:
                    i2 = i4;
                    zze = zziz.zze((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 41:
                    i2 = i4;
                    zze = zziz.zzc((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 42:
                    i2 = i4;
                    int i33 = zziz.zza;
                    zze = ((List) unsafe.getObject(obj2, j)).size();
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 43:
                    i2 = i4;
                    zze = zziz.zzk((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 44:
                    i2 = i4;
                    zze = zziz.zza((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 45:
                    i2 = i4;
                    zze = zziz.zzc((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 46:
                    i2 = i4;
                    zze = zziz.zze((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 47:
                    i2 = i4;
                    zze = zziz.zzi((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 48:
                    i2 = i4;
                    zze = zziz.zzj((List) unsafe.getObject(obj2, j));
                    if (zze > 0) {
                        zzz10 = zzgr.zzz(i10 << 3);
                        zzz11 = zzgr.zzz(zze);
                        zzz9 = zzz10 + zzz11 + zze;
                        i8 = i14 + zzz9;
                        break;
                    }
                    i8 = i14;
                    break;
                case 49:
                    List list11 = (List) unsafe.getObject(obj2, j);
                    zzix zzv2 = zzipVar.zzv(i6);
                    int i34 = zziz.zza;
                    int size6 = list11.size();
                    if (size6 == 0) {
                        i3 = 0;
                    } else {
                        int i35 = 0;
                        i3 = 0;
                        while (i35 < size6) {
                            i3 += zzgr.zzw(i10, (zzim) list11.get(i35), zzv2);
                            i35++;
                            i4 = i4;
                        }
                    }
                    i2 = i4;
                    i8 = i14 + i3;
                    break;
                case 50:
                    zzig zzigVar = (zzig) unsafe.getObject(obj2, j);
                    zzif zzifVar = (zzif) zzipVar.zzw(i6);
                    if (!zzigVar.isEmpty()) {
                        Iterator it = zzigVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 51:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz12 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz12 + 8;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 52:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz13 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz13 + 4;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 53:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        long zzt = zzt(obj2, j);
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzA(zzt);
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 54:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        long zzt2 = zzt(obj2, j);
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzA(zzt2);
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 55:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzA(zzo(obj2, j));
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 56:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz12 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz12 + 8;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 57:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz13 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz13 + 4;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 58:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz15 = zzgr.zzz(i10 << 3) + i4;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 59:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        int i36 = i10 << 3;
                        Object object2 = unsafe.getObject(obj2, j);
                        if (object2 instanceof zzgk) {
                            zzz16 = zzgr.zzz(i36);
                            zzd2 = ((zzgk) object2).zzd();
                            zzz17 = zzgr.zzz(zzd2);
                            zzz15 = zzz16 + zzz17 + zzd2;
                            i8 = i14 + zzz15;
                            i2 = i4;
                            break;
                        } else {
                            zzz14 = zzgr.zzz(i36);
                            zzA2 = zzgr.zzy((String) object2);
                            zzz15 = zzz14 + zzA2;
                            i8 = i14 + zzz15;
                            i2 = i4;
                        }
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 60:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz15 = zziz.zzh(i10, unsafe.getObject(obj2, j), zzipVar.zzv(i6));
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 61:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz16 = zzgr.zzz(i10 << 3);
                        zzd2 = ((zzgk) unsafe.getObject(obj2, j)).zzd();
                        zzz17 = zzgr.zzz(zzd2);
                        zzz15 = zzz16 + zzz17 + zzd2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 62:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        int zzo = zzo(obj2, j);
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzz(zzo);
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 63:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzA(zzo(obj2, j));
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 64:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz13 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz13 + 4;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 65:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz12 = zzgr.zzz(i10 << 3);
                        zzz15 = zzz12 + 8;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 66:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        int zzo2 = zzo(obj2, j);
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzz((zzo2 >> 31) ^ (zzo2 + zzo2));
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 67:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        long zzt3 = zzt(obj2, j);
                        zzz14 = zzgr.zzz(i10 << 3);
                        zzA2 = zzgr.zzA((zzt3 >> 63) ^ (zzt3 + zzt3));
                        zzz15 = zzz14 + zzA2;
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                case 68:
                    if (zzipVar.zzM(obj2, i10, i6)) {
                        zzz15 = zzgr.zzw(i10, (zzim) unsafe.getObject(obj2, j), zzipVar.zzv(i6));
                        i8 = i14 + zzz15;
                        i2 = i4;
                        break;
                    }
                    i2 = i4;
                    i8 = i14;
                    break;
                default:
                    i2 = i4;
                    i8 = i14;
                    break;
            }
            i6 += 3;
            obj2 = obj;
            i4 = i2;
            i5 = 1048575;
        }
        int zza3 = i8 + ((zzhk) obj).zzc.zza();
        if (zzipVar.zzh) {
            zzhb zzhbVar = ((zzhh) obj).zzb;
            int zzc2 = zzhbVar.zza.zzc();
            int i37 = 0;
            for (int i38 = 0; i38 < zzc2; i38++) {
                Map.Entry zzg2 = zzhbVar.zza.zzg(i38);
                i37 += zzhb.zzb((zzha) ((zzjb) zzg2).zza(), zzg2.getValue());
            }
            for (Map.Entry entry2 : zzhbVar.zza.zzd()) {
                i37 += zzhb.zzb((zzha) entry2.getKey(), entry2.getValue());
            }
            return zza3 + i37;
        }
        return zza3;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zzb(Object obj) {
        int i;
        long doubleToLongBits;
        int floatToIntBits;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzc.length; i4 += 3) {
            int zzs = zzs(i4);
            int[] iArr = this.zzc;
            int i5 = 1048575 & zzs;
            int zzr = zzr(zzs);
            int i6 = iArr[i4];
            long j = i5;
            int i7 = 37;
            switch (zzr) {
                case 0:
                    i = i3 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzjq.zza(obj, j));
                    byte[] bArr = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    floatToIntBits = Float.floatToIntBits(zzjq.zzb(obj, j));
                    i3 = i + floatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr2 = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr3 = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr4 = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    floatToIntBits = zzhp.zza(zzjq.zzw(obj, j));
                    i3 = i + floatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    floatToIntBits = ((String) zzjq.zzf(obj, j)).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object zzf = zzjq.zzf(obj, j);
                    if (zzf != null) {
                        i7 = zzf.hashCode();
                    }
                    i3 = i2 + i7;
                    break;
                case 10:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr5 = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    doubleToLongBits = zzjq.zzd(obj, j);
                    byte[] bArr6 = zzhp.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object zzf2 = zzjq.zzf(obj, j);
                    if (zzf2 != null) {
                        i7 = zzf2.hashCode();
                    }
                    i3 = i2 + i7;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    floatToIntBits = zzjq.zzf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 51:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = Float.floatToIntBits(zzn(obj, j));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr8 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr9 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr10 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzhp.zza(zzN(obj, j));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = ((String) zzjq.zzf(obj, j)).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr11 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zzt(obj, j);
                        byte[] bArr12 = zzhp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zzjq.zzf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i3 * 53) + ((zzhk) obj).zzc.hashCode();
        if (this.zzh) {
            return (hashCode * 53) + ((zzhh) obj).zzb.zza.hashCode();
        }
        return hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x03f3, code lost:
        r10 = r8;
        r8 = r1;
        r1 = r10;
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03f7, code lost:
        r2 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0477, code lost:
        r4 = r41;
        r3 = r8;
        r6 = r10;
        r8 = r11;
        r9 = r14;
        r14 = r15;
        r15 = r21;
        r13 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04ad, code lost:
        r36 = r2;
        r2 = r1;
        r1 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04db, code lost:
        r3 = r2;
        r2 = r1;
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0536, code lost:
        r22 = r2;
        r3 = r5;
        r2 = r10;
        r10 = r11;
        r9 = r14;
        r23 = r15;
        r8 = r18;
        r13 = r24;
        r12 = r25;
        r14 = r42;
        r11 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x05a6, code lost:
        r14 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0143, code lost:
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0cf2, code lost:
        r2 = r10;
        r3 = r13;
        r9 = r14;
        r10 = r18;
        r13 = r30;
        r12 = r31;
        r14 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0f88, code lost:
        if (r8 != r14) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0f8a, code lost:
        if (r14 == 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0f8c, code lost:
        r4 = r41;
        r7 = r3;
        r3 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0f95, code lost:
        if (r0.zzh == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0f97, code lost:
        r1 = r2.zzd;
        r4 = com.google.android.gms.internal.play_billing.zzgw.zzb;
        r4 = com.google.android.gms.internal.play_billing.zziu.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0f9f, code lost:
        if (r1 == com.google.android.gms.internal.play_billing.zzgw.zza) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x0fa1, code lost:
        r4 = r0.zzg;
        r6 = com.google.android.gms.internal.play_billing.zzga.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0fa9, code lost:
        if (r1.zzb(r4, r10) != null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x0fab, code lost:
        r4 = r41;
        r1 = r8;
        r3 = com.google.android.gms.internal.play_billing.zzga.zzg(r1, r39, r3, r4, zzd(r11), r2);
        r18 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0fbb, code lost:
        r7 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x0fbd, code lost:
        r1 = (com.google.android.gms.internal.play_billing.zzhh) r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x0fc0, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x0fc1, code lost:
        r18 = r8;
        r4 = r41;
        r3 = com.google.android.gms.internal.play_billing.zzga.zzg(r18, r39, r3, r4, zzd(r11), r43);
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0fd4, code lost:
        r3 = r39;
        r6 = r43;
        r8 = r10;
        r2 = r11;
        r15 = r21;
        r1 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x0fee, code lost:
        if (r13 == r3) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x0ff0, code lost:
        r22.putInt(r11, r13, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x0ff6, code lost:
        r1 = r0.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x0ffa, code lost:
        if (r1 >= r0.zzk) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x0ffc, code lost:
        r2 = r0.zzi;
        r3 = r0.zzc;
        r2 = r2[r1];
        r3 = r3[r2];
        r3 = com.google.android.gms.internal.play_billing.zzjq.zzf(r11, r0.zzs(r2) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x1012, code lost:
        if (r3 != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x101b, code lost:
        if (r0.zzu(r2) != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x101e, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:615:0x1021, code lost:
        r3 = (com.google.android.gms.internal.play_billing.zzig) r3;
        r1 = (com.google.android.gms.internal.play_billing.zzif) r0.zzw(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x1029, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x102c, code lost:
        if (r14 != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:619:0x102e, code lost:
        if (r7 != r4) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x1036, code lost:
        throw new com.google.android.gms.internal.play_billing.zzhr("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:623:0x1037, code lost:
        if (r7 > r4) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x1039, code lost:
        if (r8 != r14) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:625:0x103b, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:627:0x1041, code lost:
        throw new com.google.android.gms.internal.play_billing.zzhr("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ee, code lost:
        r18 = r5;
        r5 = r6;
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01f2, code lost:
        r15 = 0;
        r29 = 1048575;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0816  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x08e1  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0940  */
    /* JADX WARN: Removed duplicated region for block: B:668:0x0056 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:279:0x0813 -> B:280:0x0814). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:314:0x08de -> B:315:0x08df). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:336:0x093c -> B:337:0x093e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r38, byte[] r39, int r40, int r41, int r42, com.google.android.gms.internal.play_billing.zzfz r43) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzfz):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final Object zze() {
        return ((zzhk) this.zzg).zzp();
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzhk) {
                zzhk zzhkVar = (zzhk) obj;
                zzhkVar.zzy(Integer.MAX_VALUE);
                zzhkVar.zza = 0;
                zzhkVar.zzw();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzs = zzs(i);
                int i2 = 1048575 & zzs;
                int zzr = zzr(zzs);
                long j = i2;
                if (zzr != 9) {
                    if (zzr != 60 && zzr != 68) {
                        switch (zzr) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzho) zzjq.zzf(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzig) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzM(obj, this.zzc[i], i)) {
                        zzv(i).zzf(zzb.getObject(obj, j));
                    }
                }
                if (zzI(obj, i)) {
                    zzv(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzl.zza(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzs = zzs(i);
            int i2 = 1048575 & zzs;
            int[] iArr = this.zzc;
            int zzr = zzr(zzs);
            int i3 = iArr[i];
            long j = i2;
            switch (zzr) {
                case 0:
                    if (zzI(obj2, i)) {
                        zzjq.zzo(obj, j, zzjq.zza(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzI(obj2, i)) {
                        zzjq.zzp(obj, j, zzjq.zzb(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzI(obj2, i)) {
                        zzjq.zzm(obj, j, zzjq.zzw(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzI(obj2, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzB(obj, obj2, i);
                    break;
                case 10:
                    if (zzI(obj2, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzI(obj2, i)) {
                        zzjq.zzq(obj, j, zzjq.zzc(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzI(obj2, i)) {
                        zzjq.zzr(obj, j, zzjq.zzd(obj2, j));
                        zzD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzB(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzho zzhoVar = (zzho) zzjq.zzf(obj, j);
                    zzho zzhoVar2 = (zzho) zzjq.zzf(obj2, j);
                    int size = zzhoVar.size();
                    int size2 = zzhoVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzhoVar.zzc()) {
                            zzhoVar = zzhoVar.zzd(size2 + size);
                        }
                        zzhoVar.addAll(zzhoVar2);
                    }
                    if (size > 0) {
                        zzhoVar2 = zzhoVar;
                    }
                    zzjq.zzs(obj, j, zzhoVar2);
                    break;
                case 50:
                    int i4 = zziz.zza;
                    zzjq.zzs(obj, j, zzih.zza(zzjq.zzf(obj, j), zzjq.zzf(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzM(obj2, i3, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzC(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(obj2, i3, i)) {
                        zzjq.zzs(obj, j, zzjq.zzf(obj2, j));
                        zzE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzC(obj, obj2, i);
                    break;
            }
        }
        zziz.zzp(this.zzl, obj, obj2);
        if (this.zzh) {
            zziz.zzo(this.zzm, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzfz zzfzVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzfzVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0507  */
    @Override // com.google.android.gms.internal.play_billing.zzix
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.lang.Object r19, com.google.android.gms.internal.play_billing.zzjw r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzip.zzi(java.lang.Object, com.google.android.gms.internal.play_billing.zzjw):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzE;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzs = zzs(i);
            long j = zzs & 1048575;
            switch (zzr(zzs)) {
                case 0:
                    if (zzH(obj, obj2, i) && Double.doubleToLongBits(zzjq.zza(obj, j)) == Double.doubleToLongBits(zzjq.zza(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i) && Float.floatToIntBits(zzjq.zzb(obj, j)) == Float.floatToIntBits(zzjq.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i) && zzjq.zzw(obj, j) == zzjq.zzw(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i) && zzjq.zzc(obj, j) == zzjq.zzc(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i) && zzjq.zzd(obj, j) == zzjq.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzE = zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j));
                    break;
                case 50:
                    zzE = zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzp = zzp(i) & 1048575;
                    if (zzjq.zzc(obj, zzp) == zzjq.zzc(obj2, zzp) && zziz.zzE(zzjq.zzf(obj, j), zzjq.zzf(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzE) {
                return false;
            }
        }
        if (!((zzhk) obj).zzc.equals(((zzhk) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzhh) obj).zzb.equals(((zzhh) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i3];
            int i7 = iArr2[i6];
            int zzs = zzs(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i5;
                i2 = i4;
            }
            Object obj2 = obj;
            if ((268435456 & zzs) != 0 && !zzJ(obj2, i6, i, i2, i10)) {
                return false;
            }
            int zzr = zzr(zzs);
            if (zzr != 9 && zzr != 17) {
                if (zzr != 27) {
                    if (zzr != 60 && zzr != 68) {
                        if (zzr != 49) {
                            if (zzr == 50 && !((zzig) zzjq.zzf(obj2, zzs & 1048575)).isEmpty()) {
                                zzif zzifVar = (zzif) zzw(i6);
                                throw null;
                            }
                        }
                    } else if (zzM(obj2, i7, i6) && !zzK(obj2, zzs, zzv(i6))) {
                        return false;
                    }
                }
                List list = (List) zzjq.zzf(obj2, zzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzix zzv = zzv(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzv.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzJ(obj2, i6, i, i2, i10) && !zzK(obj2, zzs, zzv(i6))) {
                return false;
            }
            i3++;
            obj = obj2;
            i5 = i;
            i4 = i2;
        }
        Object obj3 = obj;
        if (this.zzh && !((zzhh) obj3).zzb.zzh()) {
            return false;
        }
        return true;
    }
}
