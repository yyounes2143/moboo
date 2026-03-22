package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzab {
    @Nullable
    public final String zza;
    public final String zzb;

    static {
        String str = zzeu.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzab(@Nullable String str, String str2) {
        this.zza = zzeu.zzE(str);
        this.zzb = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzab.class == obj.getClass()) {
            zzab zzabVar = (zzab) obj;
            if (Objects.equals(this.zza, zzabVar.zza) && Objects.equals(this.zzb, zzabVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzb.hashCode() * 31;
        String str = this.zza;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}
