package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdec {
    private final List zza;
    private final zzfjr zzb;
    @Nullable
    private final com.google.android.gms.ads.internal.util.client.zzv zzc;
    private boolean zzd;

    public zzdec(zzfbu zzfbuVar, zzfjr zzfjrVar) {
        this.zza = zzfbuVar.zzp;
        this.zzb = zzfjrVar;
        this.zzc = zzfbuVar.zzax;
    }

    public final void zza() {
        if (!this.zzd) {
            this.zzb.zze(this.zza, this.zzc);
            this.zzd = true;
        }
    }
}
