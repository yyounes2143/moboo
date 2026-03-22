package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
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
public final class zzhag<T> implements zzhaw<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhbp.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhad zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhbi zzm;
    private final zzgyd zzn;

    private zzhag(int[] iArr, Object[] objArr, int i, int i2, zzhad zzhadVar, boolean z, int[] iArr2, int i3, int i4, zzhaj zzhajVar, zzgzq zzgzqVar, zzhbi zzhbiVar, zzgyd zzgydVar, zzgzy zzgzyVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzhadVar instanceof zzgys;
        boolean z2 = false;
        if (zzgydVar != null && (zzhadVar instanceof zzgyo)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzhbiVar;
        this.zzn = zzgydVar;
        this.zzg = zzhadVar;
    }

    private final Object zzA(Object obj, int i) {
        zzhaw zzx = zzx(i);
        int zzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzhaw zzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    private static void zzD(Object obj) {
        if (zzQ(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (!zzN(obj2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzu = zzu(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzu);
        if (object != null) {
            zzhaw zzx = zzx(i);
            if (!zzN(obj, i)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, zzu, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, zzu, zze);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzu);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, zzu, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (!zzR(obj2, i2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzu = zzu(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzu);
        if (object != null) {
            zzhaw zzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, zzu, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, zzu, zze);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzu);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, zzu, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
    }

    private final void zzG(Object obj, int i, zzhaq zzhaqVar) throws IOException {
        long j = i & 1048575;
        if (zzM(i)) {
            zzhbp.zzv(obj, j, zzhaqVar.zzs());
        } else if (this.zzi) {
            zzhbp.zzv(obj, j, zzhaqVar.zzr());
        } else {
            zzhbp.zzv(obj, j, zzhaqVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int zzr = zzr(i);
        long j = 1048575 & zzr;
        if (j == 1048575) {
            return;
        }
        zzhbp.zzt(obj, j, (1 << (zzr >>> 20)) | zzhbp.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzhbp.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        if (zzN(obj, i) == zzN(obj2, i)) {
            return true;
        }
        return false;
    }

    private static boolean zzM(int i) {
        if ((i & C.BUFFER_FLAG_LAST_SAMPLE) != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzN(Object obj, int i) {
        int zzr = zzr(i);
        long j = zzr & 1048575;
        if (j == 1048575) {
            int zzu = zzu(i);
            long j2 = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhbp.zzb(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhbp.zzc(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhbp.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhbp.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhbp.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhbp.zzz(obj, j2);
                case 8:
                    Object zzh = zzhbp.zzh(obj, j2);
                    if (zzh instanceof String) {
                        if (((String) zzh).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzh instanceof zzgxk) {
                        if (zzgxk.zzb.equals(zzh)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzhbp.zzh(obj, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzgxk.zzb.equals(zzhbp.zzh(obj, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhbp.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhbp.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhbp.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhbp.zzh(obj, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhbp.zzd(obj, j) & (1 << (zzr >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzN(obj, i);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzP(Object obj, int i, zzhaw zzhawVar) {
        return zzhawVar.zzl(zzhbp.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgys) {
            return ((zzgys) obj).zzcd();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        if (zzhbp.zzd(obj, zzr(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzhbp.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzhbx zzhbxVar) throws IOException {
        if (obj instanceof String) {
            zzhbxVar.zzG(i, (String) obj);
        } else {
            zzhbxVar.zzd(i, (zzgxk) obj);
        }
    }

    public static zzhbj zzd(Object obj) {
        zzgys zzgysVar = (zzgys) obj;
        zzhbj zzhbjVar = zzgysVar.zzt;
        if (zzhbjVar == zzhbj.zzc()) {
            zzhbj zzf = zzhbj.zzf();
            zzgysVar.zzt = zzf;
            return zzf;
        }
        return zzhbjVar;
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
    public static com.google.android.gms.internal.ads.zzhag zzm(java.lang.Class r32, com.google.android.gms.internal.ads.zzhaa r33, com.google.android.gms.internal.ads.zzhaj r34, com.google.android.gms.internal.ads.zzgzq r35, com.google.android.gms.internal.ads.zzhbi r36, com.google.android.gms.internal.ads.zzgyd r37, com.google.android.gms.internal.ads.zzgzy r38) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhag.zzm(java.lang.Class, com.google.android.gms.internal.ads.zzhaa, com.google.android.gms.internal.ads.zzhaj, com.google.android.gms.internal.ads.zzgzq, com.google.android.gms.internal.ads.zzhbi, com.google.android.gms.internal.ads.zzgyd, com.google.android.gms.internal.ads.zzgzy):com.google.android.gms.internal.ads.zzhag");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzhbp.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzhbp.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzhbp.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i >= this.zze && i <= this.zzf) {
            return zzs(i, 0);
        }
        return -1;
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
        int[] iArr = this.zzc;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
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

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzhbp.zzh(obj, j)).longValue();
    }

    private final zzgyy zzw(int i) {
        int i2 = i / 3;
        return (zzgyy) this.zzd[i2 + i2 + 1];
    }

    private final zzhaw zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzhaw zzhawVar = (zzhaw) objArr[i3];
        if (zzhawVar != null) {
            return zzhawVar;
        }
        zzhaw zzb2 = zzhan.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzb2;
        return zzb2;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzhbi zzhbiVar, Object obj3) {
        int i2 = this.zzc[i];
        Object zzh = zzhbp.zzh(obj, zzu(i) & 1048575);
        if (zzh == null || zzw(i) == null) {
            return obj2;
        }
        zzgzx zzgzxVar = (zzgzx) zzh;
        zzgzw zzgzwVar = (zzgzw) zzz(i);
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzhaw
    public final int zza(Object obj) {
        int i;
        int i2;
        int zzD;
        int zzD2;
        int zzE;
        int zzD3;
        int zzD4;
        int zzD5;
        int zzd;
        int zzD6;
        int zzh;
        int zzg;
        int size;
        int zzl;
        int zzD7;
        int zzD8;
        int zzD9;
        int zze;
        int zzD10;
        int zzD11;
        int i3;
        int zzD12;
        int zzD13;
        int zzD14;
        int zzE2;
        int zzD15;
        int zzD16;
        int zzd2;
        int zzD17;
        zzhag<T> zzhagVar = this;
        Object obj2 = obj;
        int i4 = 1;
        Unsafe unsafe = zzb;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (true) {
            int[] iArr = zzhagVar.zzc;
            if (i5 < iArr.length) {
                int zzu = zzhagVar.zzu(i5);
                int zzt = zzt(zzu);
                int i9 = iArr[i5];
                int i10 = iArr[i5 + 2];
                int i11 = i10 & 1048575;
                if (zzt <= 17) {
                    if (i11 != i8) {
                        i6 = i11 == 1048575 ? 0 : unsafe.getInt(obj2, i11);
                        i8 = i11;
                    }
                    i = i4 << (i10 >>> 20);
                } else {
                    i = 0;
                }
                int i12 = zzu & 1048575;
                if (zzt >= zzgyi.zzJ.zza()) {
                    zzgyi.zzW.zza();
                }
                long j = i12;
                switch (zzt) {
                    case 0:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            i7 += zzgxx.zzD(i9 << 3) + 8;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD = zzgxx.zzD(i9 << 3);
                            zzD4 = zzD + 4;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 2:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            long j2 = unsafe.getLong(obj2, j);
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzE(j2);
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 3:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            long j3 = unsafe.getLong(obj2, j);
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzE(j3);
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 4:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzE(unsafe.getInt(obj2, j));
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 5:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD3 = zzgxx.zzD(i9 << 3);
                            zzD4 = zzD3 + 8;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 6:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD = zzgxx.zzD(i9 << 3);
                            zzD4 = zzD + 4;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 7:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD4 = zzgxx.zzD(i9 << 3) + 1;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 8:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            int i13 = i9 << 3;
                            Object object = unsafe.getObject(obj2, j);
                            if (object instanceof zzgxk) {
                                zzD5 = zzgxx.zzD(i13);
                                zzd = ((zzgxk) object).zzd();
                                zzD6 = zzgxx.zzD(zzd);
                                zzD4 = zzD5 + zzD6 + zzd;
                                i7 += zzD4;
                            } else {
                                zzD2 = zzgxx.zzD(i13);
                                zzE = zzgxx.zzC((String) object);
                                zzD4 = zzD2 + zzE;
                                i7 += zzD4;
                            }
                        }
                        zzhagVar = this;
                        break;
                    case 9:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzh = zzhay.zzh(i9, unsafe.getObject(obj2, j), zzhagVar.zzx(i5));
                            i7 += zzh;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD5 = zzgxx.zzD(i9 << 3);
                            zzd = ((zzgxk) unsafe.getObject(obj2, j)).zzd();
                            zzD6 = zzgxx.zzD(zzd);
                            zzD4 = zzD5 + zzD6 + zzd;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 11:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            int i14 = unsafe.getInt(obj2, j);
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzD(i14);
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 12:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzE(unsafe.getInt(obj2, j));
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 13:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD = zzgxx.zzD(i9 << 3);
                            zzD4 = zzD + 4;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 14:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzD3 = zzgxx.zzD(i9 << 3);
                            zzD4 = zzD3 + 8;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 15:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            int i15 = unsafe.getInt(obj2, j);
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzD((i15 >> 31) ^ (i15 + i15));
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 16:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            long j4 = unsafe.getLong(obj2, j);
                            zzD2 = zzgxx.zzD(i9 << 3);
                            zzE = zzgxx.zzE((j4 >> 63) ^ (j4 + j4));
                            zzD4 = zzD2 + zzE;
                            i7 += zzD4;
                        }
                        zzhagVar = this;
                        break;
                    case 17:
                        i2 = i4;
                        if (zzhagVar.zzO(obj2, i5, i8, i6, i)) {
                            zzh = zzgxx.zzy(i9, (zzhad) unsafe.getObject(obj2, j), zzhagVar.zzx(i5));
                            i7 += zzh;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i2 = i4;
                        zzh = zzhay.zzd(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 19:
                        i2 = i4;
                        zzh = zzhay.zzb(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 20:
                        i2 = i4;
                        List list = (List) unsafe.getObject(obj2, j);
                        int i16 = zzhay.zza;
                        if (list.size() != 0) {
                            zzg = zzhay.zzg(list) + (list.size() * zzgxx.zzD(i9 << 3));
                            i7 += zzg;
                            break;
                        }
                        zzg = 0;
                        i7 += zzg;
                    case 21:
                        i2 = i4;
                        List list2 = (List) unsafe.getObject(obj2, j);
                        int i17 = zzhay.zza;
                        size = list2.size();
                        if (size != 0) {
                            zzl = zzhay.zzl(list2);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 22:
                        i2 = i4;
                        List list3 = (List) unsafe.getObject(obj2, j);
                        int i18 = zzhay.zza;
                        size = list3.size();
                        if (size != 0) {
                            zzl = zzhay.zzf(list3);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 23:
                        i2 = i4;
                        zzh = zzhay.zzd(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 24:
                        i2 = i4;
                        zzh = zzhay.zzb(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 25:
                        i2 = i4;
                        int i19 = zzhay.zza;
                        int size2 = ((List) unsafe.getObject(obj2, j)).size();
                        if (size2 != 0) {
                            zzh = size2 * (zzgxx.zzD(i9 << 3) + 1);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 26:
                        i2 = i4;
                        List list4 = (List) unsafe.getObject(obj2, j);
                        int i20 = zzhay.zza;
                        int size3 = list4.size();
                        if (size3 != 0) {
                            zzg = zzgxx.zzD(i9 << 3) * size3;
                            if (list4 instanceof zzgzp) {
                                zzgzp zzgzpVar = (zzgzp) list4;
                                for (int i21 = 0; i21 < size3; i21++) {
                                    Object zzc = zzgzpVar.zzc();
                                    if (zzc instanceof zzgxk) {
                                        int zzd3 = ((zzgxk) zzc).zzd();
                                        zzg += zzgxx.zzD(zzd3) + zzd3;
                                    } else {
                                        zzg += zzgxx.zzC((String) zzc);
                                    }
                                }
                            } else {
                                for (int i22 = 0; i22 < size3; i22++) {
                                    Object obj3 = list4.get(i22);
                                    if (obj3 instanceof zzgxk) {
                                        int zzd4 = ((zzgxk) obj3).zzd();
                                        zzg += zzgxx.zzD(zzd4) + zzd4;
                                    } else {
                                        zzg += zzgxx.zzC((String) obj3);
                                    }
                                }
                            }
                            i7 += zzg;
                            break;
                        }
                        zzg = 0;
                        i7 += zzg;
                    case 27:
                        i2 = i4;
                        List list5 = (List) unsafe.getObject(obj2, j);
                        zzhaw zzx = zzhagVar.zzx(i5);
                        int i23 = zzhay.zza;
                        int size4 = list5.size();
                        if (size4 == 0) {
                            zzD8 = 0;
                        } else {
                            zzD8 = zzgxx.zzD(i9 << 3) * size4;
                            for (int i24 = 0; i24 < size4; i24++) {
                                Object obj4 = list5.get(i24);
                                if (obj4 instanceof zzgzo) {
                                    int zza2 = ((zzgzo) obj4).zza();
                                    zzD8 += zzgxx.zzD(zza2) + zza2;
                                } else {
                                    zzD8 += zzgxx.zzA((zzhad) obj4, zzx);
                                }
                            }
                        }
                        i7 += zzD8;
                        break;
                    case 28:
                        i2 = i4;
                        List list6 = (List) unsafe.getObject(obj2, j);
                        int i25 = zzhay.zza;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            zzD9 = 0;
                        } else {
                            zzD9 = size5 * zzgxx.zzD(i9 << 3);
                            for (int i26 = 0; i26 < list6.size(); i26++) {
                                int zzd5 = ((zzgxk) list6.get(i26)).zzd();
                                zzD9 += zzgxx.zzD(zzd5) + zzd5;
                            }
                        }
                        i7 += zzD9;
                        break;
                    case 29:
                        i2 = i4;
                        List list7 = (List) unsafe.getObject(obj2, j);
                        int i27 = zzhay.zza;
                        size = list7.size();
                        if (size != 0) {
                            zzl = zzhay.zzk(list7);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 30:
                        i2 = i4;
                        List list8 = (List) unsafe.getObject(obj2, j);
                        int i28 = zzhay.zza;
                        size = list8.size();
                        if (size != 0) {
                            zzl = zzhay.zza(list8);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 31:
                        i2 = i4;
                        zzh = zzhay.zzb(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 32:
                        i2 = i4;
                        zzh = zzhay.zzd(i9, (List) unsafe.getObject(obj2, j), false);
                        i7 += zzh;
                        break;
                    case 33:
                        i2 = i4;
                        List list9 = (List) unsafe.getObject(obj2, j);
                        int i29 = zzhay.zza;
                        size = list9.size();
                        if (size != 0) {
                            zzl = zzhay.zzi(list9);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 34:
                        i2 = i4;
                        List list10 = (List) unsafe.getObject(obj2, j);
                        int i30 = zzhay.zza;
                        size = list10.size();
                        if (size != 0) {
                            zzl = zzhay.zzj(list10);
                            zzD7 = zzgxx.zzD(i9 << 3);
                            zzh = zzl + (size * zzD7);
                            i7 += zzh;
                            break;
                        }
                        zzh = 0;
                        i7 += zzh;
                    case 35:
                        i2 = i4;
                        zze = zzhay.zze((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        i2 = i4;
                        zze = zzhay.zzc((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        i2 = i4;
                        zze = zzhay.zzg((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        i2 = i4;
                        zze = zzhay.zzl((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        i2 = i4;
                        zze = zzhay.zzf((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        i2 = i4;
                        zze = zzhay.zze((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        i2 = i4;
                        zze = zzhay.zzc((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        i2 = i4;
                        int i31 = zzhay.zza;
                        zze = ((List) unsafe.getObject(obj2, j)).size();
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        i2 = i4;
                        zze = zzhay.zzk((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        i2 = i4;
                        zze = zzhay.zza((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        i2 = i4;
                        zze = zzhay.zzc((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        i2 = i4;
                        zze = zzhay.zze((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        i2 = i4;
                        zze = zzhay.zzi((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        i2 = i4;
                        zze = zzhay.zzj((List) unsafe.getObject(obj2, j));
                        if (zze > 0) {
                            zzD10 = zzgxx.zzD(i9 << 3);
                            zzD11 = zzgxx.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i7 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list11 = (List) unsafe.getObject(obj2, j);
                        zzhaw zzx2 = zzhagVar.zzx(i5);
                        int i32 = zzhay.zza;
                        int size6 = list11.size();
                        if (size6 == 0) {
                            i3 = 0;
                        } else {
                            int i33 = 0;
                            i3 = 0;
                            while (i33 < size6) {
                                i3 += zzgxx.zzy(i9, (zzhad) list11.get(i33), zzx2);
                                i33++;
                                i4 = i4;
                            }
                        }
                        i2 = i4;
                        i7 += i3;
                        break;
                    case 50:
                        zzgzx zzgzxVar = (zzgzx) unsafe.getObject(obj2, j);
                        zzgzw zzgzwVar = (zzgzw) zzhagVar.zzz(i5);
                        if (!zzgzxVar.isEmpty()) {
                            Iterator it = zzgzxVar.entrySet().iterator();
                            if (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                entry.getKey();
                                entry.getValue();
                                throw null;
                            }
                        }
                        i2 = i4;
                        break;
                    case 51:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD12 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD12 + 8;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 52:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD13 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD13 + 4;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 53:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            long zzv = zzv(obj2, j);
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzE(zzv);
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 54:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            long zzv2 = zzv(obj2, j);
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzE(zzv2);
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 55:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzE(zzp(obj2, j));
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 56:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD12 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD12 + 8;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 57:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD13 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD13 + 4;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 58:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD15 = zzgxx.zzD(i9 << 3) + i4;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 59:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            int i34 = i9 << 3;
                            Object object2 = unsafe.getObject(obj2, j);
                            if (object2 instanceof zzgxk) {
                                zzD16 = zzgxx.zzD(i34);
                                zzd2 = ((zzgxk) object2).zzd();
                                zzD17 = zzgxx.zzD(zzd2);
                                zzD15 = zzD16 + zzD17 + zzd2;
                                i7 += zzD15;
                            } else {
                                zzD14 = zzgxx.zzD(i34);
                                zzE2 = zzgxx.zzC((String) object2);
                                zzD15 = zzD14 + zzE2;
                                i7 += zzD15;
                            }
                        }
                        i2 = i4;
                        break;
                    case 60:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD15 = zzhay.zzh(i9, unsafe.getObject(obj2, j), zzhagVar.zzx(i5));
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 61:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD16 = zzgxx.zzD(i9 << 3);
                            zzd2 = ((zzgxk) unsafe.getObject(obj2, j)).zzd();
                            zzD17 = zzgxx.zzD(zzd2);
                            zzD15 = zzD16 + zzD17 + zzd2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 62:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            int zzp = zzp(obj2, j);
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzD(zzp);
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 63:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzE(zzp(obj2, j));
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 64:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD13 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD13 + 4;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 65:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD12 = zzgxx.zzD(i9 << 3);
                            zzD15 = zzD12 + 8;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 66:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            int zzp2 = zzp(obj2, j);
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzD((zzp2 >> 31) ^ (zzp2 + zzp2));
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 67:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            long zzv3 = zzv(obj2, j);
                            zzD14 = zzgxx.zzD(i9 << 3);
                            zzE2 = zzgxx.zzE((zzv3 >> 63) ^ (zzv3 + zzv3));
                            zzD15 = zzD14 + zzE2;
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    case 68:
                        if (zzhagVar.zzR(obj2, i9, i5)) {
                            zzD15 = zzgxx.zzy(i9, (zzhad) unsafe.getObject(obj2, j), zzhagVar.zzx(i5));
                            i7 += zzD15;
                        }
                        i2 = i4;
                        break;
                    default:
                        i2 = i4;
                        break;
                }
                i5 += 3;
                obj2 = obj;
                i4 = i2;
            } else {
                int zza3 = i7 + ((zzgys) obj).zzt.zza();
                if (zzhagVar.zzh) {
                    zzhbe zzhbeVar = ((zzgyo) obj).zza.zza;
                    int zzc2 = zzhbeVar.zzc();
                    int i35 = 0;
                    for (int i36 = 0; i36 < zzc2; i36++) {
                        Map.Entry zzg2 = zzhbeVar.zzg(i36);
                        i35 += zzgyh.zzc((zzgyg) ((zzhba) zzg2).zza(), zzg2.getValue());
                    }
                    for (Map.Entry entry2 : zzhbeVar.zzd()) {
                        i35 += zzgyh.zzc((zzgyg) entry2.getKey(), entry2.getValue());
                    }
                    return zza3 + i35;
                }
                return zza3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final int zzb(Object obj) {
        int i;
        long doubleToLongBits;
        int floatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i3 < iArr.length) {
                int zzu = zzu(i3);
                int i5 = 1048575 & zzu;
                int zzt = zzt(zzu);
                int i6 = iArr[i3];
                long j = i5;
                int i7 = 37;
                switch (zzt) {
                    case 0:
                        i = i4 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzhbp.zzb(obj, j));
                        byte[] bArr = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 1:
                        i = i4 * 53;
                        floatToIntBits = Float.floatToIntBits(zzhbp.zzc(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    case 2:
                        i = i4 * 53;
                        doubleToLongBits = zzhbp.zzf(obj, j);
                        byte[] bArr2 = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 3:
                        i = i4 * 53;
                        doubleToLongBits = zzhbp.zzf(obj, j);
                        byte[] bArr3 = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 4:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 5:
                        i = i4 * 53;
                        doubleToLongBits = zzhbp.zzf(obj, j);
                        byte[] bArr4 = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 6:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 7:
                        i = i4 * 53;
                        floatToIntBits = zzgzf.zza(zzhbp.zzz(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    case 8:
                        i = i4 * 53;
                        floatToIntBits = ((String) zzhbp.zzh(obj, j)).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 9:
                        i2 = i4 * 53;
                        Object zzh = zzhbp.zzh(obj, j);
                        if (zzh != null) {
                            i7 = zzh.hashCode();
                        }
                        i4 = i2 + i7;
                        break;
                    case 10:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 11:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 12:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 13:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 14:
                        i = i4 * 53;
                        doubleToLongBits = zzhbp.zzf(obj, j);
                        byte[] bArr5 = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 15:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 16:
                        i = i4 * 53;
                        doubleToLongBits = zzhbp.zzf(obj, j);
                        byte[] bArr6 = zzgzf.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 17:
                        i2 = i4 * 53;
                        Object zzh2 = zzhbp.zzh(obj, j);
                        if (zzh2 != null) {
                            i7 = zzh2.hashCode();
                        }
                        i4 = i2 + i7;
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
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 50:
                        i = i4 * 53;
                        floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 51:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                            byte[] bArr7 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = Float.floatToIntBits(zzo(obj, j));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzv(obj, j);
                            byte[] bArr8 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzv(obj, j);
                            byte[] bArr9 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzv(obj, j);
                            byte[] bArr10 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzgzf.zza(zzS(obj, j));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = ((String) zzhbp.zzh(obj, j)).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 60:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzv(obj, j);
                            byte[] bArr11 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzp(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzv(obj, j);
                            byte[] bArr12 = zzgzf.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!zzR(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzhbp.zzh(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                }
                i3 += 3;
            } else {
                int hashCode = (i4 * 53) + ((zzgys) obj).zzt.hashCode();
                if (this.zzh) {
                    return (hashCode * 53) + ((zzgyo) obj).zza.zza.hashCode();
                }
                return hashCode;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:512:0x0cda, code lost:
        r1 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0d3c, code lost:
        if (r14 == r2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0d3e, code lost:
        r12.putInt(r13, r14, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0d42, code lost:
        r8 = r0.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0d47, code lost:
        if (r8 >= r0.zzl) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0d49, code lost:
        r0.zzy(r13, r0.zzj[r8], null, r0.zzm, r34);
        r8 = r8 + 1;
        r0 = r33;
        r13 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0d61, code lost:
        if (r11 != 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0d63, code lost:
        if (r7 != r6) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0d6b, code lost:
        throw new com.google.android.gms.internal.ads.zzgzh("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0d6c, code lost:
        if (r7 > r6) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0d6e, code lost:
        if (r10 != r11) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0d70, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0d76, code lost:
        throw new com.google.android.gms.internal.ads.zzgzh("Failed to parse the message.");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x0cd3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0ce2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:203:0x061f -> B:204:0x0620). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:260:0x0729 -> B:261:0x072b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, com.google.android.gms.internal.ads.zzgwy r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhag.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgwy):int");
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final Object zze() {
        return ((zzgys) this.zzg).zzbj();
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzgys) {
                zzgys zzgysVar = (zzgys) obj;
                zzgysVar.zzbT();
                zzgysVar.zzbS();
                zzgysVar.zzbV();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzu = zzu(i);
                int i2 = 1048575 & zzu;
                int zzt = zzt(zzu);
                long j = i2;
                if (zzt != 9) {
                    if (zzt != 60 && zzt != 68) {
                        switch (zzt) {
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
                                ((zzgze) zzhbp.zzh(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzgzx) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzR(obj, iArr[i], i)) {
                        zzx(i).zzf(zzb.getObject(obj, j));
                    }
                }
                if (zzN(obj, i)) {
                    zzx(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i < iArr.length) {
                int zzu = zzu(i);
                int i2 = 1048575 & zzu;
                int zzt = zzt(zzu);
                int i3 = iArr[i];
                long j = i2;
                switch (zzt) {
                    case 0:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzr(obj, j, zzhbp.zzb(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 1:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzs(obj, j, zzhbp.zzc(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 2:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzu(obj, j, zzhbp.zzf(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 3:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzu(obj, j, zzhbp.zzf(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 4:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 5:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzu(obj, j, zzhbp.zzf(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 6:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 7:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzp(obj, j, zzhbp.zzz(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 8:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzv(obj, j, zzhbp.zzh(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 9:
                        zzE(obj, obj2, i);
                        break;
                    case 10:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzv(obj, j, zzhbp.zzh(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 11:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 12:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 13:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 14:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzu(obj, j, zzhbp.zzf(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 15:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzt(obj, j, zzhbp.zzd(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 16:
                        if (!zzN(obj2, i)) {
                            break;
                        } else {
                            zzhbp.zzu(obj, j, zzhbp.zzf(obj2, j));
                            zzH(obj, i);
                            break;
                        }
                    case 17:
                        zzE(obj, obj2, i);
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
                        zzgze zzgzeVar = (zzgze) zzhbp.zzh(obj, j);
                        zzgze zzgzeVar2 = (zzgze) zzhbp.zzh(obj2, j);
                        int size = zzgzeVar.size();
                        int size2 = zzgzeVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzgzeVar.zzc()) {
                                zzgzeVar = zzgzeVar.zzf(size2 + size);
                            }
                            zzgzeVar.addAll(zzgzeVar2);
                        }
                        if (size > 0) {
                            zzgzeVar2 = zzgzeVar;
                        }
                        zzhbp.zzv(obj, j, zzgzeVar2);
                        break;
                    case 50:
                        int i4 = zzhay.zza;
                        zzhbp.zzv(obj, j, zzgzy.zzb(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j)));
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
                        if (!zzR(obj2, i3, i)) {
                            break;
                        } else {
                            zzhbp.zzv(obj, j, zzhbp.zzh(obj2, j));
                            zzI(obj, i3, i);
                            break;
                        }
                    case 60:
                        zzF(obj, obj2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zzR(obj2, i3, i)) {
                            break;
                        } else {
                            zzhbp.zzv(obj, j, zzhbp.zzh(obj2, j));
                            zzI(obj, i3, i);
                            break;
                        }
                    case 68:
                        zzF(obj, obj2, i);
                        break;
                }
                i += 3;
            } else {
                zzhay.zzq(this.zzm, obj, obj2);
                if (this.zzh) {
                    zzhay.zzp(this.zzn, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        r2 = r3;
        r5 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0610 A[LOOP:3: B:202:0x060c->B:204:0x0610, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x05eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:319:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzhaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r12, com.google.android.gms.internal.ads.zzhaq r13, com.google.android.gms.internal.ads.zzgyc r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhag.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzhaq, com.google.android.gms.internal.ads.zzgyc):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgwy zzgwyVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzgwyVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04bd  */
    @Override // com.google.android.gms.internal.ads.zzhaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r22, com.google.android.gms.internal.ads.zzhbx r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhag.zzj(java.lang.Object, com.google.android.gms.internal.ads.zzhbx):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final boolean zzk(Object obj, Object obj2) {
        boolean zzJ;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzu = zzu(i);
            long j = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (zzL(obj, obj2, i) && Double.doubleToLongBits(zzhbp.zzb(obj, j)) == Double.doubleToLongBits(zzhbp.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i) && Float.floatToIntBits(zzhbp.zzc(obj, j)) == Float.floatToIntBits(zzhbp.zzc(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i) && zzhbp.zzf(obj, j) == zzhbp.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i) && zzhbp.zzf(obj, j) == zzhbp.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i) && zzhbp.zzf(obj, j) == zzhbp.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i) && zzhbp.zzz(obj, j) == zzhbp.zzz(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i) && zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i) && zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i) && zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i) && zzhbp.zzf(obj, j) == zzhbp.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i) && zzhbp.zzd(obj, j) == zzhbp.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i) && zzhbp.zzf(obj, j) == zzhbp.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i) && zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j))) {
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
                    zzJ = zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j));
                    break;
                case 50:
                    zzJ = zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j));
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
                    long zzr = zzr(i) & 1048575;
                    if (zzhbp.zzd(obj, zzr) == zzhbp.zzd(obj2, zzr) && zzhay.zzJ(zzhbp.zzh(obj, j), zzhbp.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzJ) {
                return false;
            }
        }
        if (!((zzgys) obj).zzt.equals(((zzgys) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzgyo) obj).zza.equals(((zzgyo) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int zzu = zzu(i7);
            int i9 = iArr2[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = zzb.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i4;
                i = i10;
            } else {
                int i12 = i4;
                i = i6;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & zzu) != 0 && !zzO(obj, i2, i, i3, i11)) {
                return false;
            }
            int zzt = zzt(zzu);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt != 60 && zzt != 68) {
                        if (zzt != 49) {
                            if (zzt == 50 && !((zzgzx) zzhbp.zzh(obj, zzu & 1048575)).isEmpty()) {
                                zzgzw zzgzwVar = (zzgzw) zzz(i2);
                                throw null;
                            }
                        }
                    } else if (zzR(obj, i8, i2) && !zzP(obj, zzu, zzx(i2))) {
                        return false;
                    }
                }
                List list = (List) zzhbp.zzh(obj, zzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhaw zzx = zzx(i2);
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        if (!zzx.zzl(list.get(i13))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzO(obj, i2, i, i3, i11) && !zzP(obj, zzu, zzx(i2))) {
                return false;
            }
            i5++;
            i6 = i;
            i4 = i3;
        }
        if (this.zzh && !((zzgyo) obj).zza.zzi()) {
            return false;
        }
        return true;
    }
}
