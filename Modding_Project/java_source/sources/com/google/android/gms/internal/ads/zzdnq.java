package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdnq implements zzbjw {
    final /* synthetic */ zzdns zza;
    private final WeakReference zzb;
    private final String zzc;
    private final zzbjw zzd;

    public /* synthetic */ zzdnq(zzdns zzdnsVar, WeakReference weakReference, String str, zzbjw zzbjwVar, zzdnr zzdnrVar) {
        this.zza = zzdnsVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        Object obj2 = this.zzb.get();
        if (obj2 == null) {
            this.zza.zzn(this.zzc, this);
        } else {
            this.zzd.zza(obj2, map);
        }
    }
}
