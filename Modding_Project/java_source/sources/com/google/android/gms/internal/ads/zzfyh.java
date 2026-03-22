package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfyh extends zzfxx implements Set, j$.util.Set {
    private transient zzfyc zza;

    public static int zzh(int i) {
        boolean z;
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            z = true;
        } else {
            z = false;
        }
        zzfvc.zzf(z, "collection too large");
        return 1073741824;
    }

    public static zzfyg zzj(int i) {
        return new zzfyg(i, true);
    }

    public static zzfyh zzl(Collection collection) {
        if ((collection instanceof zzfyh) && !(collection instanceof SortedSet)) {
            zzfyh zzfyhVar = (zzfyh) collection;
            if (!zzfyhVar.zzf()) {
                return zzfyhVar;
            }
        }
        Object[] array = collection.toArray();
        return zzv(array.length, array);
    }

    public static zzfyh zzm(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                return zzv(length, (Object[]) objArr.clone());
            }
            return new zzgaf(objArr[0]);
        }
        return zzfzu.zza;
    }

    public static zzfyh zzn() {
        return zzfzu.zza;
    }

    public static zzfyh zzo(Object obj) {
        return new zzgaf(obj);
    }

    public static zzfyh zzp(Object obj, Object obj2) {
        return zzv(2, obj, obj2);
    }

    public static zzfyh zzq(Object obj, Object obj2, Object obj3) {
        return zzv(3, obj, obj2, obj3);
    }

    public static zzfyh zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return zzv(5, obj, obj2, obj3, obj4, obj5);
    }

    @SafeVarargs
    public static zzfyh zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[9];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 3);
        return zzv(9, objArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfyh zzv(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int zzh = zzh(i);
                Object[] objArr2 = new Object[zzh];
                int i2 = zzh - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    zzfzm.zza(obj, i5);
                    int hashCode = obj.hashCode();
                    int zza = zzfxu.zza(hashCode);
                    while (true) {
                        int i6 = zza & i2;
                        Object obj2 = objArr2[i6];
                        if (obj2 == null) {
                            objArr[i4] = obj;
                            objArr2[i6] = obj;
                            i3 += hashCode;
                            i4++;
                            break;
                        } else if (!obj2.equals(obj)) {
                            zza++;
                        }
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzgaf(obj3);
                }
                if (zzh(i4) < zzh / 2) {
                    return zzv(i4, objArr);
                }
                if (zzw(i4, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzfzu(objArr, i3, objArr2, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzgaf(obj4);
        }
        return zzfzu.zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzw(int i, int i2) {
        if (i < (i2 >> 1) + (i2 >> 2)) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfyh) && zzu() && ((zzfyh) obj).zzu() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzgae.zzd(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzgae.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfxx
    public zzfyc zzd() {
        zzfyc zzfycVar = this.zza;
        if (zzfycVar == null) {
            zzfyc zzi = zzi();
            this.zza = zzi;
            return zzi;
        }
        return zzfycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zze */
    public abstract zzgai iterator();

    public zzfyc zzi() {
        Object[] array = toArray();
        int i = zzfyc.zzd;
        return zzfyc.zzj(array, array.length);
    }

    public boolean zzu() {
        return false;
    }
}
