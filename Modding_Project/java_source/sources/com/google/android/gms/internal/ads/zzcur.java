package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcur implements zzcxh, zzcwo {
    private final zzfbu zza;

    public zzcur(Context context, zzfbu zzfbuVar, zzbtq zzbtqVar) {
        this.zza = zzfbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        zzbtr zzbtrVar = this.zza.zzad;
        if (zzbtrVar != null && zzbtrVar.zza) {
            ArrayList arrayList = new ArrayList();
            String str = zzbtrVar.zzb;
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdj(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdl(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdm(@Nullable Context context) {
    }
}
