package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehd {
    @Nullable
    private zzegu zza;

    public zzehd() {
    }

    public static zzehd zzb(zzegu zzeguVar) {
        return new zzehd(zzeguVar);
    }

    public final zzegu zza(Clock clock, zzegw zzegwVar, zzedk zzedkVar, zzfjr zzfjrVar) {
        zzegu zzeguVar = this.zza;
        if (zzeguVar != null) {
            return zzeguVar;
        }
        return new zzegu(clock, zzegwVar, zzedkVar, zzfjrVar);
    }

    private zzehd(zzegu zzeguVar) {
        this.zza = zzeguVar;
    }
}
