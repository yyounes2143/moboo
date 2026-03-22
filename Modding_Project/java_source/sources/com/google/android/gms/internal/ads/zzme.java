package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public final class zzme {
    private final zzit zza;

    @Deprecated
    public zzme(Context context, zzceh zzcehVar) {
        this.zza = new zzit(context, zzcehVar);
    }

    @Deprecated
    public final zzme zza(final zzks zzksVar) {
        zzit zzitVar = this.zza;
        zzdc.zzf(!zzitVar.zzr);
        zzksVar.getClass();
        zzitVar.zzf = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzil
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzks.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzme zzb(final zzyx zzyxVar) {
        zzit zzitVar = this.zza;
        zzdc.zzf(!zzitVar.zzr);
        zzyxVar.getClass();
        zzitVar.zze = new zzfvu() { // from class: com.google.android.gms.internal.ads.zzis
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzyx.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzmf zzc() {
        zzit zzitVar = this.zza;
        zzdc.zzf(!zzitVar.zzr);
        zzitVar.zzr = true;
        return new zzmf(zzitVar);
    }
}
