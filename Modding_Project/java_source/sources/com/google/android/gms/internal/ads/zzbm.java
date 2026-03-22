package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbm {
    public final int zza;
    public final String zzb;
    public final int zzc;
    private final zzz[] zzd;
    private int zze;

    static {
        String str = zzeu.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbm(String str, zzz... zzzVarArr) {
        boolean z;
        int length = zzzVarArr.length;
        int i = 1;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        this.zzb = str;
        this.zzd = zzzVarArr;
        this.zza = length;
        int zzb = zzay.zzb(zzzVarArr[0].zzo);
        this.zzc = zzb == -1 ? zzay.zzb(zzzVarArr[0].zzn) : zzb;
        String zzc = zzc(zzzVarArr[0].zzd);
        int i2 = zzzVarArr[0].zzf | 16384;
        while (true) {
            zzz[] zzzVarArr2 = this.zzd;
            if (i < zzzVarArr2.length) {
                if (!zzc.equals(zzc(zzzVarArr2[i].zzd))) {
                    zzz[] zzzVarArr3 = this.zzd;
                    zzd("languages", zzzVarArr3[0].zzd, zzzVarArr3[i].zzd, i);
                    return;
                }
                zzz[] zzzVarArr4 = this.zzd;
                if (i2 != (zzzVarArr4[i].zzf | 16384)) {
                    zzd("role flags", Integer.toBinaryString(zzzVarArr4[0].zzf), Integer.toBinaryString(this.zzd[i].zzf), i);
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private static String zzc(@Nullable String str) {
        if (str != null && !str.equals("und")) {
            return str;
        }
        return "";
    }

    private static void zzd(String str, @Nullable String str2, @Nullable String str3, int i) {
        zzdx.zzd("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbm.class == obj.getClass()) {
            zzbm zzbmVar = (zzbm) obj;
            if (this.zzb.equals(zzbmVar.zzb) && Arrays.equals(this.zzd, zzbmVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zze;
        if (i == 0) {
            int hashCode = ((this.zzb.hashCode() + 527) * 31) + Arrays.hashCode(this.zzd);
            this.zze = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzd);
        return this.zzb + ": " + arrays;
    }

    public final int zza(zzz zzzVar) {
        int i = 0;
        while (true) {
            zzz[] zzzVarArr = this.zzd;
            if (i < zzzVarArr.length) {
                if (zzzVar == zzzVarArr[i]) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public final zzz zzb(int i) {
        return this.zzd[i];
    }
}
