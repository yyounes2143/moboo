package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzwd {
    public final int zza;
    public final boolean zzb;

    public zzwd(int i, boolean z) {
        this.zza = i;
        this.zzb = z;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzwd.class == obj.getClass()) {
            zzwd zzwdVar = (zzwd) obj;
            if (this.zza == zzwdVar.zza && this.zzb == zzwdVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza * 31) + (this.zzb ? 1 : 0);
    }
}
