package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerw implements zzetu {
    public final zzfbt zza;

    public zzerw(zzfbt zzfbtVar) {
        this.zza = zzfbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcuv zzcuvVar = (zzcuv) obj;
        zzfbt zzfbtVar = this.zza;
        if (zzfbtVar != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmj)).booleanValue()) {
                Bundle bundle = zzcuvVar.zza;
                bundle.putBoolean("render_in_browser", zzfbtVar.zzd());
                bundle.putBoolean("disable_ml", zzfbtVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
