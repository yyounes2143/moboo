package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzehg implements zzdgi {
    final /* synthetic */ zzedi zza;
    final /* synthetic */ zzfbu zzb;

    public zzehg(zzehh zzehhVar, zzedi zzediVar, zzfbu zzfbuVar) {
        this.zza = zzediVar;
        this.zzb = zzfbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    @Nullable
    public final zzfbu zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdgi
    public final void zzb(boolean z, Context context, @Nullable zzcwg zzcwgVar) throws zzdgh {
        try {
            zzfdn zzfdnVar = (zzfdn) this.zza.zzb;
            zzfdnVar.zzv(z);
            zzfdnVar.zzz(context);
        } catch (zzfcw e) {
            throw new zzdgh(e.getCause());
        }
    }
}
