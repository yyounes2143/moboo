package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetr implements zzetu {
    private final Bundle zza;

    public zzetr(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = this.zza;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (!bundle.isEmpty()) {
            zzcuvVar.zzb.putBundle("shared_pref", bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = this.zza;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (!bundle.isEmpty()) {
            zzcuvVar.zza.putBundle("shared_pref", bundle);
        }
    }
}
