package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhe implements zzbjw {
    private final WeakReference zza;

    public /* synthetic */ zzdhe(zzdhi zzdhiVar, zzdhh zzdhhVar) {
        this.zza = new WeakReference(zzdhiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        zzcvr zzcvrVar;
        zzddw zzddwVar;
        zzddw zzddwVar2;
        zzdhi zzdhiVar = (zzdhi) this.zza.get();
        if (zzdhiVar != null) {
            zzcvrVar = zzdhiVar.zzh;
            zzcvrVar.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
                zzddwVar = zzdhiVar.zzi;
                zzddwVar.zzdf();
                if (!TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                    zzddwVar2 = zzdhiVar.zzi;
                    zzddwVar2.zzu();
                }
            }
        }
    }
}
