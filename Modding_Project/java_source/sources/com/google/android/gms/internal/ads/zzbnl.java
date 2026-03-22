package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnl implements zzbjw {
    final /* synthetic */ zzbmu zza;
    final /* synthetic */ com.google.android.gms.ads.internal.util.zzby zzb;
    final /* synthetic */ zzbnz zzc;

    public zzbnl(zzbnz zzbnzVar, zzavl zzavlVar, zzbmu zzbmuVar, com.google.android.gms.ads.internal.util.zzby zzbyVar) {
        this.zza = zzbmuVar;
        this.zzb = zzbyVar;
        this.zzc = zzbnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        int i;
        zzboa zzboaVar = (zzboa) obj;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        zzbnz zzbnzVar = this.zzc;
        obj2 = zzbnzVar.zza;
        synchronized (obj2) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock acquired");
                com.google.android.gms.ads.internal.util.client.zzo.zzi("JS Engine is requesting an update");
                i = zzbnzVar.zzi;
                if (i == 0) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Starting reload.");
                    zzbnzVar.zzi = 2;
                    zzbnzVar.zzd(null);
                }
                this.zza.zzr("/requestReload", (zzbjw) this.zzb.zza());
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
