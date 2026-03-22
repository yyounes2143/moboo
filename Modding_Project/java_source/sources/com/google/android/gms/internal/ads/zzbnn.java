package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnn implements Runnable {
    final /* synthetic */ zzbny zza;
    final /* synthetic */ zzbmu zzb;
    final /* synthetic */ ArrayList zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzbnz zze;

    public zzbnn(zzbnz zzbnzVar, zzbny zzbnyVar, zzbmu zzbmuVar, ArrayList arrayList, long j) {
        this.zza = zzbnyVar;
        this.zzb = zzbmuVar;
        this.zzc = arrayList;
        this.zzd = j;
        this.zze = zzbnzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i;
        String str;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
        zzbnz zzbnzVar = this.zze;
        obj = zzbnzVar.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
                zzbny zzbnyVar = this.zza;
                if (zzbnyVar.zze() != -1 && zzbnyVar.zze() != 1) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhV)).booleanValue()) {
                        zzbnyVar.zzh(new TimeoutException("Unable to fully load JS engine."), "SdkJavascriptFactory.loadJavascriptEngine.Runnable");
                    } else {
                        zzbnyVar.zzg();
                    }
                    zzgdj zzgdjVar = zzcaa.zzf;
                    final zzbmu zzbmuVar = this.zzb;
                    Objects.requireNonNull(zzbmuVar);
                    zzgdjVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnm
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbmu.this.zzc();
                        }
                    });
                    String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzd));
                    int zze = zzbnyVar.zze();
                    i = zzbnzVar.zzi;
                    ArrayList arrayList = this.zzc;
                    if (arrayList.isEmpty()) {
                        str = ". Still waiting for the engine to be loaded";
                    } else {
                        str = ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is " + String.valueOf(arrayList.get(0));
                    }
                    com.google.android.gms.ads.internal.util.zze.zza("Could not finish the full JS engine loading in " + valueOf + " ms. JS engine session reference status(fullLoadTimeout) is " + zze + ". Update status(fullLoadTimeout) is " + i + str + " ms. Total latency(fullLoadTimeout) is " + (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzd) + " ms at timeout. Rejecting.");
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                    return;
                }
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
