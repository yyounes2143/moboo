package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbvq implements Callable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbvs zzb;

    public zzbvq(zzbvs zzbvsVar, Context context) {
        this.zza = context;
        this.zzb = zzbvsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        WeakHashMap weakHashMap;
        zzbvp zza;
        WeakHashMap weakHashMap2;
        zzbvs zzbvsVar = this.zzb;
        weakHashMap = zzbvsVar.zza;
        Context context = this.zza;
        zzbvr zzbvrVar = (zzbvr) weakHashMap.get(context);
        if (zzbvrVar != null) {
            if (zzbvrVar.zza + ((Long) zzbek.zzd.zze()).longValue() >= com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()) {
                zza = new zzbvo(context, zzbvrVar.zzb).zza();
                weakHashMap2 = zzbvsVar.zza;
                weakHashMap2.put(context, new zzbvr(zzbvsVar, zza));
                return zza;
            }
        }
        zza = new zzbvo(context).zza();
        weakHashMap2 = zzbvsVar.zza;
        weakHashMap2.put(context, new zzbvr(zzbvsVar, zza));
        return zza;
    }
}
