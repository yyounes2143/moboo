package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdix {
    zzbhh zza;
    zzbhe zzb;
    zzbhu zzc;
    zzbhr zzd;
    zzbmp zze;
    final SimpleArrayMap zzf = new SimpleArrayMap();
    final SimpleArrayMap zzg = new SimpleArrayMap();

    public final zzdix zza(zzbhe zzbheVar) {
        this.zzb = zzbheVar;
        return this;
    }

    public final zzdix zzb(zzbhh zzbhhVar) {
        this.zza = zzbhhVar;
        return this;
    }

    public final zzdix zzc(String str, zzbhn zzbhnVar, @Nullable zzbhk zzbhkVar) {
        this.zzf.put(str, zzbhnVar);
        if (zzbhkVar != null) {
            this.zzg.put(str, zzbhkVar);
        }
        return this;
    }

    public final zzdix zzd(zzbmp zzbmpVar) {
        this.zze = zzbmpVar;
        return this;
    }

    public final zzdix zze(zzbhr zzbhrVar) {
        this.zzd = zzbhrVar;
        return this;
    }

    public final zzdix zzf(zzbhu zzbhuVar) {
        this.zzc = zzbhuVar;
        return this;
    }

    public final zzdiz zzg() {
        return new zzdiz(this);
    }
}
