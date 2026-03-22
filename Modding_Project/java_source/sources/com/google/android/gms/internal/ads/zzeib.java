package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzeib implements zzdgi {
    final /* synthetic */ zzedi zza;
    final /* synthetic */ zzfbu zzb;

    public zzeib(zzeid zzeidVar, zzedi zzediVar, zzfbu zzfbuVar) {
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
            zzfdnVar.zzA();
        } catch (zzfcw e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot show rewarded video.", e);
            throw new zzdgh(e.getCause());
        }
    }
}
