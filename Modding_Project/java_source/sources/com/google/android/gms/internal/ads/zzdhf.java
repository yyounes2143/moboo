package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdhf implements zzbjw {
    private final WeakReference zza;
    private final WeakReference zzb;

    public /* synthetic */ zzdhf(zzdhi zzdhiVar, View view, zzdhh zzdhhVar) {
        this.zza = new WeakReference(zzdhiVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzne)).booleanValue()) {
            this.zzb = new WeakReference(view);
        } else {
            this.zzb = new WeakReference(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        zzdhi zzdhiVar = (zzdhi) this.zza.get();
        if (zzdhiVar != null) {
            zzdhi.zzc(zzdhiVar).zza();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzne)).booleanValue()) {
                zzdhi.zzh(zzdhiVar, (View) this.zzb.get());
            }
        }
    }
}
