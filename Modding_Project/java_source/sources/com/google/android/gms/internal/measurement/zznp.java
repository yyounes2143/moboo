package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zznp<T> implements zznx<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzop.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zznm zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzoi zzl;
    private final zzls zzm;

    private zznp(int[] iArr, Object[] objArr, int i, int i2, zznm zznmVar, boolean z, int[] iArr2, int i3, int i4, zznr zznrVar, zzmy zzmyVar, zzoi zzoiVar, zzls zzlsVar, zznh zznhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzlsVar != null && (zznmVar instanceof zzmc)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzoiVar;
        this.zzm = zzlsVar;
        this.zzg = zznmVar;
    }

    private static boolean zzA(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzmf) {
            return ((zzmf) obj).zzcf();
        }
        return true;
    }

    private static void zzB(Object obj) {
        if (zzA(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private static double zzC(Object obj, long j) {
        return ((Double) zzop.zzn(obj, j)).doubleValue();
    }

    private static float zzD(Object obj, long j) {
        return ((Float) zzop.zzn(obj, j)).floatValue();
    }

    private static int zzE(Object obj, long j) {
        return ((Integer) zzop.zzn(obj, j)).intValue();
    }

    private static long zzF(Object obj, long j) {
        return ((Long) zzop.zzn(obj, j)).longValue();
    }

    private static boolean zzG(Object obj, long j) {
        return ((Boolean) zzop.zzn(obj, j)).booleanValue();
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        if (zzJ(obj, i) == zzJ(obj2, i)) {
            return true;
        }
        return false;
    }

    private final boolean zzI(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzJ(obj, i);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j == 1048575) {
            int zzx = zzx(i);
            long j2 = zzx & 1048575;
            switch (zzz(zzx)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzop.zzl(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzop.zzj(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzop.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzop.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzop.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzop.zzh(obj, j2);
                case 8:
                    Object zzn = zzop.zzn(obj, j2);
                    if (zzn instanceof String) {
                        if (((String) zzn).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzn instanceof zzlh) {
                        if (zzlh.zzb.equals(zzn)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzop.zzn(obj, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzlh.zzb.equals(zzop.zzn(obj, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzop.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzop.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzop.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzop.zzn(obj, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzop.zzd(obj, j) & (1 << (zzy >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final void zzK(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzop.zze(obj, j, (1 << (zzy >>> 20)) | zzop.zzd(obj, j));
    }

    private final boolean zzL(Object obj, int i, int i2) {
        if (zzop.zzd(obj, zzy(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    private final void zzM(Object obj, int i, int i2) {
        zzop.zze(obj, zzy(i2) & 1048575, i);
    }

    private final int zzN(int i, int i2) {
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

    private static final int zzO(byte[] bArr, int i, int i2, zzot zzotVar, Class cls, zzkw zzkwVar) throws IOException {
        boolean z;
        zzot zzotVar2 = zzot.zza;
        switch (zzotVar.ordinal()) {
            case 0:
                int i3 = i + 8;
                zzkwVar.zzc = Double.valueOf(Double.longBitsToDouble(zzkx.zze(bArr, i)));
                return i3;
            case 1:
                int i4 = i + 4;
                zzkwVar.zzc = Float.valueOf(Float.intBitsToFloat(zzkx.zzd(bArr, i)));
                return i4;
            case 2:
            case 3:
                int zzc = zzkx.zzc(bArr, i, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzkwVar.zzb);
                return zzc;
            case 4:
            case 12:
            case 13:
                int zza2 = zzkx.zza(bArr, i, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzkwVar.zza);
                return zza2;
            case 5:
            case 15:
                int i5 = i + 8;
                zzkwVar.zzc = Long.valueOf(zzkx.zze(bArr, i));
                return i5;
            case 6:
            case 14:
                int i6 = i + 4;
                zzkwVar.zzc = Integer.valueOf(zzkx.zzd(bArr, i));
                return i6;
            case 7:
                int zzc2 = zzkx.zzc(bArr, i, zzkwVar);
                if (zzkwVar.zzb != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzkwVar.zzc = Boolean.valueOf(z);
                return zzc2;
            case 8:
                return zzkx.zzf(bArr, i, zzkwVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return zzkx.zzh(zznu.zza().zzb(cls), bArr, i, i2, zzkwVar);
            case 11:
                return zzkx.zzg(bArr, i, zzkwVar);
            case 16:
                int zza3 = zzkx.zza(bArr, i, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzlj.zzb(zzkwVar.zza));
                return zza3;
            case 17:
                int zzc3 = zzkx.zzc(bArr, i, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzlj.zzc(zzkwVar.zzb));
                return zzc3;
        }
    }

    private static final void zzP(int i, Object obj, zzov zzovVar) throws IOException {
        if (obj instanceof String) {
            zzovVar.zzm(i, (String) obj);
        } else {
            zzovVar.zzn(i, (zzlh) obj);
        }
    }

    public static zzoj zzg(Object obj) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        if (zzojVar == zzoj.zza()) {
            zzoj zzb2 = zzoj.zzb();
            zzmfVar.zzc = zzb2;
            return zzb2;
        }
        return zzojVar;
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
    public static com.google.android.gms.internal.measurement.zznp zzl(java.lang.Class r32, com.google.android.gms.internal.measurement.zznj r33, com.google.android.gms.internal.measurement.zznr r34, com.google.android.gms.internal.measurement.zzmy r35, com.google.android.gms.internal.measurement.zzoi r36, com.google.android.gms.internal.measurement.zzls r37, com.google.android.gms.internal.measurement.zznh r38) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzl(java.lang.Class, com.google.android.gms.internal.measurement.zznj, com.google.android.gms.internal.measurement.zznr, com.google.android.gms.internal.measurement.zzmy, com.google.android.gms.internal.measurement.zzoi, com.google.android.gms.internal.measurement.zzls, com.google.android.gms.internal.measurement.zznh):com.google.android.gms.internal.measurement.zznp");
    }

    private static Field zzm(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString(), e);
        }
    }

    private final void zzn(Object obj, Object obj2, int i) {
        if (!zzJ(obj2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzx = zzx(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzx);
        if (object != null) {
            zznx zzp = zzp(i);
            if (!zzJ(obj, i)) {
                if (!zzA(object)) {
                    unsafe.putObject(obj, zzx, object);
                } else {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, zzx, zza2);
                }
                zzK(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzx);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, zzx, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
            return;
        }
        int i2 = this.zzc[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 38 + obj3.length());
        sb.append("Source subfield ");
        sb.append(i2);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    private final void zzo(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (!zzL(obj2, i2, i)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzx = zzx(i) & 1048575;
        Object object = unsafe.getObject(obj2, zzx);
        if (object != null) {
            zznx zzp = zzp(i);
            if (!zzL(obj, i2, i)) {
                if (!zzA(object)) {
                    unsafe.putObject(obj, zzx, object);
                } else {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, zzx, zza2);
                }
                zzM(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzx);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, zzx, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
            return;
        }
        int i3 = iArr[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 38 + obj3.length());
        sb.append("Source subfield ");
        sb.append(i3);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    private final zznx zzp(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zznx zznxVar = (zznx) objArr[i3];
        if (zznxVar != null) {
            return zznxVar;
        }
        zznx zzb2 = zznu.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzb2;
        return zzb2;
    }

    private final Object zzq(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzmk zzr(int i) {
        int i2 = i / 3;
        return (zzmk) this.zzd[i2 + i2 + 1];
    }

    private final Object zzs(Object obj, int i) {
        zznx zzp = zzp(i);
        int zzx = zzx(i) & 1048575;
        if (!zzJ(obj, i)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzt(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzx(i) & 1048575, obj2);
        zzK(obj, i);
    }

    private final Object zzu(Object obj, int i, int i2) {
        zznx zzp = zzp(i2);
        if (!zzL(obj, i, i2)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx(i2) & 1048575);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzv(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzx(i2) & 1048575, obj2);
        zzM(obj, i, i2);
    }

    private static boolean zzw(Object obj, int i, zznx zznxVar) {
        return zznxVar.zzk(zzop.zzn(obj, i & 1048575));
    }

    private final int zzx(int i) {
        return this.zzc[i + 1];
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private static int zzz(int i) {
        return (i >>> 20) & 255;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final Object zza() {
        return ((zzmf) this.zzg).zzch();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb(Object obj, Object obj2) {
        boolean zzB;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzx = zzx(i);
            long j = zzx & 1048575;
            switch (zzz(zzx)) {
                case 0:
                    if (zzH(obj, obj2, i) && Double.doubleToLongBits(zzop.zzl(obj, j)) == Double.doubleToLongBits(zzop.zzl(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i) && Float.floatToIntBits(zzop.zzj(obj, j)) == Float.floatToIntBits(zzop.zzj(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i) && zzop.zzh(obj, j) == zzop.zzh(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i) && zzop.zzd(obj, j) == zzop.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i) && zzop.zzf(obj, j) == zzop.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
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
                    zzB = zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j));
                    break;
                case 50:
                    zzB = zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j));
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
                    long zzy = zzy(i) & 1048575;
                    if (zzop.zzd(obj, zzy) == zzop.zzd(obj2, zzy) && zznz.zzB(zzop.zzn(obj, j), zzop.zzn(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzB) {
                return false;
            }
        }
        if (!((zzmf) obj).zzc.equals(((zzmf) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzmc) obj).zzb.equals(((zzmc) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zzc(Object obj) {
        int i;
        long doubleToLongBits;
        int floatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i3 < iArr.length) {
                int zzx = zzx(i3);
                int i5 = 1048575 & zzx;
                int zzz = zzz(zzx);
                int i6 = iArr[i3];
                long j = i5;
                int i7 = 37;
                switch (zzz) {
                    case 0:
                        i = i4 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzop.zzl(obj, j));
                        byte[] bArr = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 1:
                        i = i4 * 53;
                        floatToIntBits = Float.floatToIntBits(zzop.zzj(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    case 2:
                        i = i4 * 53;
                        doubleToLongBits = zzop.zzf(obj, j);
                        byte[] bArr2 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 3:
                        i = i4 * 53;
                        doubleToLongBits = zzop.zzf(obj, j);
                        byte[] bArr3 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 4:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 5:
                        i = i4 * 53;
                        doubleToLongBits = zzop.zzf(obj, j);
                        byte[] bArr4 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 6:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 7:
                        i = i4 * 53;
                        floatToIntBits = zzmp.zzb(zzop.zzh(obj, j));
                        i4 = i + floatToIntBits;
                        break;
                    case 8:
                        i = i4 * 53;
                        floatToIntBits = ((String) zzop.zzn(obj, j)).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 9:
                        i2 = i4 * 53;
                        Object zzn = zzop.zzn(obj, j);
                        if (zzn != null) {
                            i7 = zzn.hashCode();
                        }
                        i4 = i2 + i7;
                        break;
                    case 10:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 11:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 12:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 13:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 14:
                        i = i4 * 53;
                        doubleToLongBits = zzop.zzf(obj, j);
                        byte[] bArr5 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 15:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzd(obj, j);
                        i4 = i + floatToIntBits;
                        break;
                    case 16:
                        i = i4 * 53;
                        doubleToLongBits = zzop.zzf(obj, j);
                        byte[] bArr6 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i4 = i + floatToIntBits;
                        break;
                    case 17:
                        i2 = i4 * 53;
                        Object zzn2 = zzop.zzn(obj, j);
                        if (zzn2 != null) {
                            i7 = zzn2.hashCode();
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
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 50:
                        i = i4 * 53;
                        floatToIntBits = zzop.zzn(obj, j).hashCode();
                        i4 = i + floatToIntBits;
                        break;
                    case 51:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = Double.doubleToLongBits(zzC(obj, j));
                            byte[] bArr7 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = Float.floatToIntBits(zzD(obj, j));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzF(obj, j);
                            byte[] bArr8 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzF(obj, j);
                            byte[] bArr9 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzF(obj, j);
                            byte[] bArr10 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzmp.zzb(zzG(obj, j));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = ((String) zzop.zzn(obj, j)).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 60:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzop.zzn(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzop.zzn(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzF(obj, j);
                            byte[] bArr11 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzE(obj, j);
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            doubleToLongBits = zzF(obj, j);
                            byte[] bArr12 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i4 = i + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!zzL(obj, i6, i3)) {
                            break;
                        } else {
                            i = i4 * 53;
                            floatToIntBits = zzop.zzn(obj, j).hashCode();
                            i4 = i + floatToIntBits;
                            break;
                        }
                }
                i3 += 3;
            } else {
                int hashCode = (i4 * 53) + ((zzmf) obj).zzc.hashCode();
                if (this.zzh) {
                    return (hashCode * 53) + ((zzmc) obj).zzb.zza.hashCode();
                }
                return hashCode;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzd(Object obj, Object obj2) {
        zzB(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i < iArr.length) {
                int zzx = zzx(i);
                int i2 = 1048575 & zzx;
                int zzz = zzz(zzx);
                int i3 = iArr[i];
                long j = i2;
                switch (zzz) {
                    case 0:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzm(obj, j, zzop.zzl(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 1:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzk(obj, j, zzop.zzj(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 2:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzg(obj, j, zzop.zzf(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 3:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzg(obj, j, zzop.zzf(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 4:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 5:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzg(obj, j, zzop.zzf(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 6:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 7:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzi(obj, j, zzop.zzh(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 8:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzo(obj, j, zzop.zzn(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 9:
                        zzn(obj, obj2, i);
                        break;
                    case 10:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzo(obj, j, zzop.zzn(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 11:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 12:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 13:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 14:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzg(obj, j, zzop.zzf(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 15:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zze(obj, j, zzop.zzd(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 16:
                        if (!zzJ(obj2, i)) {
                            break;
                        } else {
                            zzop.zzg(obj, j, zzop.zzf(obj2, j));
                            zzK(obj, i);
                            break;
                        }
                    case 17:
                        zzn(obj, obj2, i);
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
                        zzmo zzmoVar = (zzmo) zzop.zzn(obj, j);
                        zzmo zzmoVar2 = (zzmo) zzop.zzn(obj2, j);
                        int size = zzmoVar.size();
                        int size2 = zzmoVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzmoVar.zza()) {
                                zzmoVar = zzmoVar.zzg(size2 + size);
                            }
                            zzmoVar.addAll(zzmoVar2);
                        }
                        if (size > 0) {
                            zzmoVar2 = zzmoVar;
                        }
                        zzop.zzo(obj, j, zzmoVar2);
                        break;
                    case 50:
                        int i4 = zznz.zza;
                        zzop.zzo(obj, j, zznh.zza(zzop.zzn(obj, j), zzop.zzn(obj2, j)));
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
                        if (!zzL(obj2, i3, i)) {
                            break;
                        } else {
                            zzop.zzo(obj, j, zzop.zzn(obj2, j));
                            zzM(obj, i3, i);
                            break;
                        }
                    case 60:
                        zzo(obj, obj2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zzL(obj2, i3, i)) {
                            break;
                        } else {
                            zzop.zzo(obj, j, zzop.zzn(obj2, j));
                            zzM(obj, i3, i);
                            break;
                        }
                    case 68:
                        zzo(obj, obj2, i);
                        break;
                }
                i += 3;
            } else {
                zznz.zzD(this.zzl, obj, obj2);
                if (this.zzh) {
                    zznz.zzC(this.zzm, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zze(Object obj) {
        int i;
        int i2;
        int zzz;
        int zzz2;
        int zzA;
        int zzz3;
        int zzz4;
        int zzz5;
        int zzc;
        int zzz6;
        int zzz7;
        int zzo;
        int size;
        int zzp;
        int zzz8;
        int zzz9;
        int zzz10;
        int zzx;
        int zzz11;
        int zzz12;
        int i3;
        int i4;
        int zzz13;
        int zzz14;
        int zzz15;
        int zzA2;
        int zzz16;
        int zzz17;
        int zzc2;
        int zzz18;
        zznp<T> zznpVar = this;
        Object obj2 = obj;
        int i5 = 1;
        Unsafe unsafe = zzb;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 1048575;
        while (true) {
            int[] iArr = zznpVar.zzc;
            if (i6 < iArr.length) {
                int zzx2 = zznpVar.zzx(i6);
                int zzz19 = zzz(zzx2);
                int i10 = iArr[i6];
                int i11 = iArr[i6 + 2];
                int i12 = i11 & 1048575;
                if (zzz19 <= 17) {
                    if (i12 != i9) {
                        i7 = i12 == 1048575 ? 0 : unsafe.getInt(obj2, i12);
                        i9 = i12;
                    }
                    i = i5 << (i11 >>> 20);
                } else {
                    i = 0;
                }
                int i13 = zzx2 & 1048575;
                if (zzz19 >= zzlx.zzJ.zza()) {
                    zzlx.zzW.zza();
                }
                long j = i13;
                switch (zzz19) {
                    case 0:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            i8 += zzlm.zzz(i10 << 3) + 8;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz = zzlm.zzz(i10 << 3);
                            zzz4 = zzz + 4;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 2:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            long j2 = unsafe.getLong(obj2, j);
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzA(j2);
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 3:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            long j3 = unsafe.getLong(obj2, j);
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzA(j3);
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 4:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzA(unsafe.getInt(obj2, j));
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 5:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz3 = zzlm.zzz(i10 << 3);
                            zzz4 = zzz3 + 8;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 6:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz = zzlm.zzz(i10 << 3);
                            zzz4 = zzz + 4;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 7:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz4 = zzlm.zzz(i10 << 3) + 1;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 8:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            int i14 = i10 << 3;
                            Object object = unsafe.getObject(obj2, j);
                            if (object instanceof zzlh) {
                                zzz5 = zzlm.zzz(i14);
                                zzc = ((zzlh) object).zzc();
                                zzz6 = zzlm.zzz(zzc);
                                zzz4 = zzz5 + zzz6 + zzc;
                                i8 += zzz4;
                            } else {
                                zzz2 = zzlm.zzz(i14);
                                zzA = zzlm.zzB((String) object);
                                zzz4 = zzz2 + zzA;
                                i8 += zzz4;
                            }
                        }
                        zznpVar = this;
                        break;
                    case 9:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz7 = zznz.zzz(i10, unsafe.getObject(obj2, j), zznpVar.zzp(i6));
                            i8 += zzz7;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz5 = zzlm.zzz(i10 << 3);
                            zzc = ((zzlh) unsafe.getObject(obj2, j)).zzc();
                            zzz6 = zzlm.zzz(zzc);
                            zzz4 = zzz5 + zzz6 + zzc;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 11:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            int i15 = unsafe.getInt(obj2, j);
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzz(i15);
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 12:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzA(unsafe.getInt(obj2, j));
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 13:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz = zzlm.zzz(i10 << 3);
                            zzz4 = zzz + 4;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 14:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz3 = zzlm.zzz(i10 << 3);
                            zzz4 = zzz3 + 8;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 15:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            int i16 = unsafe.getInt(obj2, j);
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzz((i16 >> 31) ^ (i16 + i16));
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 16:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            long j4 = unsafe.getLong(obj2, j);
                            zzz2 = zzlm.zzz(i10 << 3);
                            zzA = zzlm.zzA((j4 >> 63) ^ (j4 + j4));
                            zzz4 = zzz2 + zzA;
                            i8 += zzz4;
                        }
                        zznpVar = this;
                        break;
                    case 17:
                        i2 = i5;
                        if (zznpVar.zzI(obj2, i6, i9, i7, i)) {
                            zzz7 = zzlm.zzG(i10, (zznm) unsafe.getObject(obj2, j), zznpVar.zzp(i6));
                            i8 += zzz7;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i2 = i5;
                        zzz7 = zznz.zzy(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 19:
                        i2 = i5;
                        zzz7 = zznz.zzw(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 20:
                        i2 = i5;
                        List list = (List) unsafe.getObject(obj2, j);
                        int i17 = zznz.zza;
                        if (list.size() != 0) {
                            zzo = zznz.zzo(list) + (list.size() * zzlm.zzz(i10 << 3));
                            i8 += zzo;
                            break;
                        }
                        zzo = 0;
                        i8 += zzo;
                    case 21:
                        i2 = i5;
                        List list2 = (List) unsafe.getObject(obj2, j);
                        int i18 = zznz.zza;
                        size = list2.size();
                        if (size != 0) {
                            zzp = zznz.zzp(list2);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 22:
                        i2 = i5;
                        List list3 = (List) unsafe.getObject(obj2, j);
                        int i19 = zznz.zza;
                        size = list3.size();
                        if (size != 0) {
                            zzp = zznz.zzs(list3);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 23:
                        i2 = i5;
                        zzz7 = zznz.zzy(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 24:
                        i2 = i5;
                        zzz7 = zznz.zzw(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 25:
                        i2 = i5;
                        int i20 = zznz.zza;
                        int size2 = ((List) unsafe.getObject(obj2, j)).size();
                        if (size2 != 0) {
                            zzz7 = size2 * (zzlm.zzz(i10 << 3) + 1);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 26:
                        i2 = i5;
                        List list4 = (List) unsafe.getObject(obj2, j);
                        int i21 = zznz.zza;
                        int size3 = list4.size();
                        if (size3 != 0) {
                            zzo = zzlm.zzz(i10 << 3) * size3;
                            if (list4 instanceof zzmx) {
                                zzmx zzmxVar = (zzmx) list4;
                                for (int i22 = 0; i22 < size3; i22++) {
                                    Object zzc3 = zzmxVar.zzc();
                                    if (zzc3 instanceof zzlh) {
                                        int zzc4 = ((zzlh) zzc3).zzc();
                                        zzo += zzlm.zzz(zzc4) + zzc4;
                                    } else {
                                        zzo += zzlm.zzB((String) zzc3);
                                    }
                                }
                            } else {
                                for (int i23 = 0; i23 < size3; i23++) {
                                    Object obj3 = list4.get(i23);
                                    if (obj3 instanceof zzlh) {
                                        int zzc5 = ((zzlh) obj3).zzc();
                                        zzo += zzlm.zzz(zzc5) + zzc5;
                                    } else {
                                        zzo += zzlm.zzB((String) obj3);
                                    }
                                }
                            }
                            i8 += zzo;
                            break;
                        }
                        zzo = 0;
                        i8 += zzo;
                    case 27:
                        i2 = i5;
                        List list5 = (List) unsafe.getObject(obj2, j);
                        zznx zzp2 = zznpVar.zzp(i6);
                        int i24 = zznz.zza;
                        int size4 = list5.size();
                        if (size4 == 0) {
                            zzz9 = 0;
                        } else {
                            zzz9 = zzlm.zzz(i10 << 3) * size4;
                            for (int i25 = 0; i25 < size4; i25++) {
                                Object obj4 = list5.get(i25);
                                if (obj4 instanceof zzmw) {
                                    int zzb2 = ((zzmw) obj4).zzb();
                                    zzz9 += zzlm.zzz(zzb2) + zzb2;
                                } else {
                                    zzz9 += zzlm.zzD((zznm) obj4, zzp2);
                                }
                            }
                        }
                        i8 += zzz9;
                        break;
                    case 28:
                        i2 = i5;
                        List list6 = (List) unsafe.getObject(obj2, j);
                        int i26 = zznz.zza;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            zzz10 = 0;
                        } else {
                            zzz10 = size5 * zzlm.zzz(i10 << 3);
                            for (int i27 = 0; i27 < list6.size(); i27++) {
                                int zzc6 = ((zzlh) list6.get(i27)).zzc();
                                zzz10 += zzlm.zzz(zzc6) + zzc6;
                            }
                        }
                        i8 += zzz10;
                        break;
                    case 29:
                        i2 = i5;
                        List list7 = (List) unsafe.getObject(obj2, j);
                        int i28 = zznz.zza;
                        size = list7.size();
                        if (size != 0) {
                            zzp = zznz.zzt(list7);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 30:
                        i2 = i5;
                        List list8 = (List) unsafe.getObject(obj2, j);
                        int i29 = zznz.zza;
                        size = list8.size();
                        if (size != 0) {
                            zzp = zznz.zzr(list8);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 31:
                        i2 = i5;
                        zzz7 = zznz.zzw(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 32:
                        i2 = i5;
                        zzz7 = zznz.zzy(i10, (List) unsafe.getObject(obj2, j), false);
                        i8 += zzz7;
                        break;
                    case 33:
                        i2 = i5;
                        List list9 = (List) unsafe.getObject(obj2, j);
                        int i30 = zznz.zza;
                        size = list9.size();
                        if (size != 0) {
                            zzp = zznz.zzu(list9);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 34:
                        i2 = i5;
                        List list10 = (List) unsafe.getObject(obj2, j);
                        int i31 = zznz.zza;
                        size = list10.size();
                        if (size != 0) {
                            zzp = zznz.zzq(list10);
                            zzz8 = zzlm.zzz(i10 << 3);
                            zzz7 = zzp + (size * zzz8);
                            i8 += zzz7;
                            break;
                        }
                        zzz7 = 0;
                        i8 += zzz7;
                    case 35:
                        i2 = i5;
                        zzx = zznz.zzx((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        i2 = i5;
                        zzx = zznz.zzv((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        i2 = i5;
                        zzx = zznz.zzo((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        i2 = i5;
                        zzx = zznz.zzp((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        i2 = i5;
                        zzx = zznz.zzs((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        i2 = i5;
                        zzx = zznz.zzx((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        i2 = i5;
                        zzx = zznz.zzv((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        i2 = i5;
                        int i32 = zznz.zza;
                        zzx = ((List) unsafe.getObject(obj2, j)).size();
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        i2 = i5;
                        zzx = zznz.zzt((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        i2 = i5;
                        zzx = zznz.zzr((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        i2 = i5;
                        zzx = zznz.zzv((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        i2 = i5;
                        zzx = zznz.zzx((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        i2 = i5;
                        zzx = zznz.zzu((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        i2 = i5;
                        zzx = zznz.zzq((List) unsafe.getObject(obj2, j));
                        if (zzx > 0) {
                            zzz11 = zzlm.zzz(i10 << 3);
                            zzz12 = zzlm.zzz(zzx);
                            zzz10 = zzz11 + zzz12 + zzx;
                            i8 += zzz10;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list11 = (List) unsafe.getObject(obj2, j);
                        zznx zzp3 = zznpVar.zzp(i6);
                        int i33 = zznz.zza;
                        int size6 = list11.size();
                        if (size6 == 0) {
                            i3 = 0;
                        } else {
                            int i34 = 0;
                            i3 = 0;
                            while (i34 < size6) {
                                i3 += zzlm.zzG(i10, (zznm) list11.get(i34), zzp3);
                                i34++;
                                i5 = i5;
                            }
                        }
                        i2 = i5;
                        i8 += i3;
                        break;
                    case 50:
                        zzng zzngVar = (zzng) unsafe.getObject(obj2, j);
                        zznf zznfVar = (zznf) zznpVar.zzq(i6);
                        if (zzngVar.isEmpty()) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            for (Map.Entry entry : zzngVar.entrySet()) {
                                i4 += zznfVar.zzd(i10, entry.getKey(), entry.getValue());
                            }
                        }
                        i8 += i4;
                        i2 = i5;
                        break;
                    case 51:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz13 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz13 + 8;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 52:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz14 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz14 + 4;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 53:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            long zzF = zzF(obj2, j);
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzA(zzF);
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 54:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            long zzF2 = zzF(obj2, j);
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzA(zzF2);
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 55:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzA(zzE(obj2, j));
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 56:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz13 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz13 + 8;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 57:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz14 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz14 + 4;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 58:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz16 = zzlm.zzz(i10 << 3) + i5;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 59:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            int i35 = i10 << 3;
                            Object object2 = unsafe.getObject(obj2, j);
                            if (object2 instanceof zzlh) {
                                zzz17 = zzlm.zzz(i35);
                                zzc2 = ((zzlh) object2).zzc();
                                zzz18 = zzlm.zzz(zzc2);
                                zzz16 = zzz17 + zzz18 + zzc2;
                                i8 += zzz16;
                            } else {
                                zzz15 = zzlm.zzz(i35);
                                zzA2 = zzlm.zzB((String) object2);
                                zzz16 = zzz15 + zzA2;
                                i8 += zzz16;
                            }
                        }
                        i2 = i5;
                        break;
                    case 60:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz16 = zznz.zzz(i10, unsafe.getObject(obj2, j), zznpVar.zzp(i6));
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 61:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz17 = zzlm.zzz(i10 << 3);
                            zzc2 = ((zzlh) unsafe.getObject(obj2, j)).zzc();
                            zzz18 = zzlm.zzz(zzc2);
                            zzz16 = zzz17 + zzz18 + zzc2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 62:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            int zzE = zzE(obj2, j);
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzz(zzE);
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 63:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzA(zzE(obj2, j));
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 64:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz14 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz14 + 4;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 65:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz13 = zzlm.zzz(i10 << 3);
                            zzz16 = zzz13 + 8;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 66:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            int zzE2 = zzE(obj2, j);
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzz((zzE2 >> 31) ^ (zzE2 + zzE2));
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 67:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            long zzF3 = zzF(obj2, j);
                            zzz15 = zzlm.zzz(i10 << 3);
                            zzA2 = zzlm.zzA((zzF3 >> 63) ^ (zzF3 + zzF3));
                            zzz16 = zzz15 + zzA2;
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    case 68:
                        if (zznpVar.zzL(obj2, i10, i6)) {
                            zzz16 = zzlm.zzG(i10, (zznm) unsafe.getObject(obj2, j), zznpVar.zzp(i6));
                            i8 += zzz16;
                        }
                        i2 = i5;
                        break;
                    default:
                        i2 = i5;
                        break;
                }
                i6 += 3;
                obj2 = obj;
                i5 = i2;
            } else {
                int zzi = i8 + ((zzmf) obj).zzc.zzi();
                if (zznpVar.zzh) {
                    zzoe zzoeVar = ((zzmc) obj).zzb.zza;
                    int zzc7 = zzoeVar.zzc();
                    int i36 = 0;
                    for (int i37 = 0; i37 < zzc7; i37++) {
                        Map.Entry zzd = zzoeVar.zzd(i37);
                        i36 += zzlw.zzj((zzlv) ((zzob) zzd).zza(), zzd.getValue());
                    }
                    for (Map.Entry entry2 : zzoeVar.zze()) {
                        i36 += zzlw.zzj((zzlv) entry2.getKey(), entry2.getValue());
                    }
                    return zzi + i36;
                }
                return zzi;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04ca  */
    @Override // com.google.android.gms.internal.measurement.zznx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r19, com.google.android.gms.internal.measurement.zzov r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzf(java.lang.Object, com.google.android.gms.internal.measurement.zzov):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x042c, code lost:
        r10 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x045b, code lost:
        r5 = r3;
        r3 = r2;
        r2 = r5;
        r5 = r8;
        r8 = r4;
        r4 = r5;
        r5 = r38;
        r7 = r9;
        r11 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x0c6c, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0f89, code lost:
        if (r13 == r3) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0f8b, code lost:
        r0.putInt(r9, r13, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0f8f, code lost:
        r0 = r1.zzj;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x0f95, code lost:
        if (r0 >= r1.zzk) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0f97, code lost:
        r4 = r1.zzi;
        r6 = r1.zzl;
        r7 = r1.zzc;
        r4 = r4[r0];
        r7 = r7[r4];
        r10 = com.google.android.gms.internal.measurement.zzop.zzn(r9, r1.zzx(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x0faf, code lost:
        if (r10 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0fb1, code lost:
        r11 = r1.zzr(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0fb5, code lost:
        if (r11 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0fb7, code lost:
        r4 = ((com.google.android.gms.internal.measurement.zznf) r1.zzq(r4)).zze();
        r10 = ((com.google.android.gms.internal.measurement.zzng) r10).entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0fcf, code lost:
        if (r10.hasNext() == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0fd1, code lost:
        r13 = (java.util.Map.Entry) r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0fe5, code lost:
        if (r11.zza(((java.lang.Integer) r13.getValue()).intValue()) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0fe7, code lost:
        if (r3 != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0fe9, code lost:
        r3 = r6.zza(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0fed, code lost:
        r14 = com.google.android.gms.internal.measurement.zznf.zzc(r4, r13.getKey(), r13.getValue());
        r15 = com.google.android.gms.internal.measurement.zzlh.zzb;
        r15 = new byte[r14];
        r18 = com.google.android.gms.internal.measurement.zzlm.zzb;
        r18 = r0;
        r0 = new com.google.android.gms.internal.measurement.zzlk(r15, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x1007, code lost:
        com.google.android.gms.internal.measurement.zznf.zzb(r0, r4, r13.getKey(), r13.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x1012, code lost:
        r3.zzk((r7 << 3) | 2, com.google.android.gms.internal.measurement.zzle.zza(r0, r15));
        r10.remove();
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x102c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x1032, code lost:
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x103a, code lost:
        r0 = r0 + 1;
        r1 = r34;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x104b, code lost:
        if (r3 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x104d, code lost:
        ((com.google.android.gms.internal.measurement.zzmf) r9).zzc = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x1052, code lost:
        if (r12 != 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x1054, code lost:
        if (r8 != r5) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x105e, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr(r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x105f, code lost:
        r15 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x1061, code lost:
        if (r8 > r5) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x1063, code lost:
        if (r2 != r12) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x1065, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x106b, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr(r15);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:229:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0858  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0f21 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0f2f  */
    /* JADX WARN: Removed duplicated region for block: B:676:0x005b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:227:0x0747 -> B:228:0x0748). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:262:0x07fa -> B:263:0x07fb). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:283:0x0854 -> B:284:0x0856). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzh(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.measurement.zzkw r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzh(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzkw):int");
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzkw zzkwVar) throws IOException {
        zzh(obj, bArr, i, i2, 0, zzkwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzj(Object obj) {
        if (zzA(obj)) {
            if (obj instanceof zzmf) {
                zzmf zzmfVar = (zzmf) obj;
                zzmfVar.zzcm(Integer.MAX_VALUE);
                zzmfVar.zza = 0;
                zzmfVar.zzcg();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzx = zzx(i);
                int i2 = 1048575 & zzx;
                int zzz = zzz(zzx);
                long j = i2;
                if (zzz != 9) {
                    if (zzz != 60 && zzz != 68) {
                        switch (zzz) {
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
                                ((zzmo) zzop.zzn(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzng) object).zzd();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzL(obj, iArr[i], i)) {
                        zzp(i).zzj(zzb.getObject(obj, j));
                    }
                }
                if (zzJ(obj, i)) {
                    zzp(i).zzj(zzb.getObject(obj, j));
                }
            }
            this.zzl.zzb(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int zzx = zzx(i7);
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
            if ((268435456 & zzx) != 0 && !zzI(obj, i2, i, i3, i11)) {
                return false;
            }
            int zzz = zzz(zzx);
            if (zzz != 9 && zzz != 17) {
                if (zzz != 27) {
                    if (zzz != 60 && zzz != 68) {
                        if (zzz != 49) {
                            if (zzz != 50) {
                                continue;
                            } else {
                                zzng zzngVar = (zzng) zzop.zzn(obj, zzx & 1048575);
                                if (!zzngVar.isEmpty() && ((zznf) zzq(i2)).zze().zzc.zza() == zzou.MESSAGE) {
                                    zznx zznxVar = null;
                                    for (Object obj2 : zzngVar.values()) {
                                        if (zznxVar == null) {
                                            zznxVar = zznu.zza().zzb(obj2.getClass());
                                        }
                                        if (!zznxVar.zzk(obj2)) {
                                            return false;
                                        }
                                    }
                                    continue;
                                }
                            }
                        }
                    } else if (zzL(obj, i8, i2) && !zzw(obj, zzx, zzp(i2))) {
                        return false;
                    }
                }
                List list = (List) zzop.zzn(obj, zzx & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zznx zzp = zzp(i2);
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        if (!zzp.zzk(list.get(i13))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzI(obj, i2, i, i3, i11) && !zzw(obj, zzx, zzp(i2))) {
                return false;
            }
            i5++;
            i6 = i;
            i4 = i3;
        }
        if (this.zzh && !((zzmc) obj).zzb.zze()) {
            return false;
        }
        return true;
    }
}
