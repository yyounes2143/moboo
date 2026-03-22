package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnk implements zzbjw {
    final /* synthetic */ long zza;
    final /* synthetic */ zzbny zzb;
    final /* synthetic */ zzbmu zzc;
    final /* synthetic */ zzbnz zzd;

    public zzbnk(zzbnz zzbnzVar, long j, zzbny zzbnyVar, zzbmu zzbmuVar) {
        this.zza = j;
        this.zzb = zzbnyVar;
        this.zzc = zzbmuVar;
        this.zzd = zzbnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        zzboa zzboaVar = (zzboa) obj;
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zza;
        com.google.android.gms.ads.internal.util.zze.zza("onGmsg /jsLoaded. JsLoaded latency is " + currentTimeMillis + " ms.");
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        zzbnz zzbnzVar = this.zzd;
        obj2 = zzbnzVar.zza;
        synchronized (obj2) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            zzbny zzbnyVar = this.zzb;
            if (zzbnyVar.zze() != -1 && zzbnyVar.zze() != 1) {
                zzbnzVar.zzi = 0;
                zzbmu zzbmuVar = this.zzc;
                zzbmuVar.zzq("/log", zzbjv.zzg);
                zzbmuVar.zzq("/result", zzbjv.zzo);
                zzbnyVar.zzi(zzbmuVar);
                zzbnzVar.zzh = zzbnyVar;
                com.google.android.gms.ads.internal.util.zze.zza("Successfully loaded JS Engine.");
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
