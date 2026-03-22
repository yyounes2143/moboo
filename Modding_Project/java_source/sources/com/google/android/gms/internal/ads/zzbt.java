package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbt {
    public static final zzbt zza = new zzbt(zzfyc.zzn());
    private final zzfyc zzb;

    static {
        String str = zzeu.zza;
        Integer.toString(0, 36);
    }

    public zzbt(List list) {
        this.zzb = zzfyc.zzl(list);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbt.class == obj.getClass()) {
            return this.zzb.equals(((zzbt) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final zzfyc zza() {
        return this.zzb;
    }

    public final boolean zzb(int i) {
        int i2 = 0;
        while (true) {
            zzfyc zzfycVar = this.zzb;
            if (i2 >= zzfycVar.size()) {
                return false;
            }
            zzbs zzbsVar = (zzbs) zzfycVar.get(i2);
            if (zzbsVar.zzc() && zzbsVar.zza() == i) {
                return true;
            }
            i2++;
        }
    }
}
