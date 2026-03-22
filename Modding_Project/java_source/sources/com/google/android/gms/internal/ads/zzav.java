package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzav {
    private final zzau[] zza;

    public zzav(long j, zzau... zzauVarArr) {
        this.zza = zzauVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzav.class == obj.getClass() && Arrays.equals(this.zza, ((zzav) obj).zza)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zza) * 31) + ((int) (-9223372034707292159L));
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zza);
        return "entries=" + arrays + "";
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzau zzb(int i) {
        return this.zza[i];
    }

    public final zzav zzc(zzau... zzauVarArr) {
        int length = zzauVarArr.length;
        if (length == 0) {
            return this;
        }
        zzau[] zzauVarArr2 = this.zza;
        String str = zzeu.zza;
        int length2 = zzauVarArr2.length;
        Object[] copyOf = Arrays.copyOf(zzauVarArr2, length2 + length);
        System.arraycopy(zzauVarArr, 0, copyOf, length2, length);
        return new zzav(-9223372036854775807L, (zzau[]) copyOf);
    }

    public final zzav zzd(@Nullable zzav zzavVar) {
        if (zzavVar == null) {
            return this;
        }
        return zzc(zzavVar.zza);
    }

    public zzav(List list) {
        this.zza = (zzau[]) list.toArray(new zzau[0]);
    }
}
