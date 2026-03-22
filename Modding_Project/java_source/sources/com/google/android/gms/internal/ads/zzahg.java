package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahg implements zzau {
    public final List zza;

    public zzahg(List list) {
        this.zza = list;
        boolean z = false;
        if (!list.isEmpty()) {
            long j = ((zzahf) list.get(0)).zzb;
            int i = 1;
            while (true) {
                if (i >= list.size()) {
                    break;
                } else if (((zzahf) list.get(i)).zza < j) {
                    z = true;
                    break;
                } else {
                    j = ((zzahf) list.get(i)).zzb;
                    i++;
                }
            }
        }
        zzdc.zzd(!z);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahg.class == obj.getClass()) {
            return this.zza.equals(((zzahg) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=".concat(this.zza.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
