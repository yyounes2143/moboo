package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdiz {
    public static final zzdiz zza = new zzdiz(new zzdix());
    @Nullable
    private final zzbhh zzb;
    @Nullable
    private final zzbhe zzc;
    @Nullable
    private final zzbhu zzd;
    @Nullable
    private final zzbhr zze;
    @Nullable
    private final zzbmp zzf;
    private final SimpleArrayMap zzg;
    private final SimpleArrayMap zzh;

    @Nullable
    public final zzbhe zza() {
        return this.zzc;
    }

    @Nullable
    public final zzbhh zzb() {
        return this.zzb;
    }

    @Nullable
    public final zzbhk zzc(String str) {
        return (zzbhk) this.zzh.get(str);
    }

    @Nullable
    public final zzbhn zzd(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return (zzbhn) this.zzg.get(str);
    }

    @Nullable
    public final zzbhr zze() {
        return this.zze;
    }

    @Nullable
    public final zzbhu zzf() {
        return this.zzd;
    }

    @Nullable
    public final zzbmp zzg() {
        return this.zzf;
    }

    public final ArrayList zzh() {
        SimpleArrayMap simpleArrayMap = this.zzg;
        ArrayList arrayList = new ArrayList(simpleArrayMap.size());
        for (int i = 0; i < simpleArrayMap.size(); i++) {
            arrayList.add((String) simpleArrayMap.keyAt(i));
        }
        return arrayList;
    }

    public final ArrayList zzi() {
        ArrayList arrayList = new ArrayList();
        if (this.zzd != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzb != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzc != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.zzg.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    private zzdiz(zzdix zzdixVar) {
        this.zzb = zzdixVar.zza;
        this.zzc = zzdixVar.zzb;
        this.zzd = zzdixVar.zzc;
        this.zzg = new SimpleArrayMap(zzdixVar.zzf);
        this.zzh = new SimpleArrayMap(zzdixVar.zzg);
        this.zze = zzdixVar.zzd;
        this.zzf = zzdixVar.zze;
    }
}
