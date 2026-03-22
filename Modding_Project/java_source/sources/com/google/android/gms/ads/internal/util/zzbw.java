package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzfji;
import com.google.android.gms.internal.ads.zzfjj;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbw extends zzb {
    private final com.google.android.gms.ads.internal.util.client.zzu zza;
    private final String zzb;
    @Nullable
    private final com.google.android.gms.ads.internal.util.client.zzv zzc;

    public zzbw(Context context, String str, String str2, @Nullable zzfjj zzfjjVar, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.zza = new com.google.android.gms.ads.internal.util.client.zzu(com.google.android.gms.ads.internal.zzv.zzr().zzc(context, str));
        this.zzb = str2;
        this.zzc = zzvVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
        if (zzvVar != null) {
            new zzfji(zzvVar.zzb(), this.zza, zzcaa.zze, null).zzd(this.zzb);
            return;
        }
        this.zza.zza(this.zzb);
    }
}
