package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzyy {
    public final int zza;
    public final zzlz[] zzb;
    public final zzyq[] zzc;
    public final zzbt zzd;
    @Nullable
    public final Object zze;

    public zzyy(zzlz[] zzlzVarArr, zzyq[] zzyqVarArr, zzbt zzbtVar, @Nullable Object obj) {
        boolean z;
        int length = zzlzVarArr.length;
        if (length == zzyqVarArr.length) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        this.zzb = zzlzVarArr;
        this.zzc = (zzyq[]) zzyqVarArr.clone();
        this.zzd = zzbtVar;
        this.zze = obj;
        this.zza = length;
    }

    public final boolean zza(@Nullable zzyy zzyyVar, int i) {
        if (zzyyVar == null || !Objects.equals(this.zzb[i], zzyyVar.zzb[i]) || !Objects.equals(this.zzc[i], zzyyVar.zzc[i])) {
            return false;
        }
        return true;
    }

    public final boolean zzb(int i) {
        if (this.zzb[i] != null) {
            return true;
        }
        return false;
    }
}
