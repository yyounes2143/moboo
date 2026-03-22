package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhg implements zzbjw {
    private final WeakReference zza;
    private final zzfjr zzb;
    private final com.google.android.gms.ads.internal.util.client.zzv zzc;
    private final zzfhn zzd;

    public /* synthetic */ zzdhg(zzdhi zzdhiVar, zzfjr zzfjrVar, com.google.android.gms.ads.internal.util.client.zzv zzvVar, zzfhn zzfhnVar, zzdhh zzdhhVar) {
        this.zza = new WeakReference(zzdhiVar);
        this.zzb = zzfjrVar;
        this.zzc = zzvVar;
        this.zzd = zzfhnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        zzcyd zzcydVar;
        zzdhi zzdhiVar = (zzdhi) this.zza.get();
        String str = (String) map.get("u");
        if (zzdhiVar != null && !TextUtils.isEmpty(str)) {
            zzfjr zzfjrVar = this.zzb;
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
            zzfhn zzfhnVar = this.zzd;
            zzcydVar = zzdhiVar.zzD;
            zzfjrVar.zzd(str, zzvVar, zzfhnVar, zzcydVar);
        }
    }
}
