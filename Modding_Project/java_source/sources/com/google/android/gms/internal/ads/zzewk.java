package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewk implements zzhfv {
    public static zzety zza(Context context, zzbzb zzbzbVar, zzbzc zzbzcVar, Object obj, zzevb zzevbVar, zzevv zzevvVar, zzhfp zzhfpVar, zzhfp zzhfpVar2, zzhfp zzhfpVar3, zzhfp zzhfpVar4, zzhfp zzhfpVar5, zzhfp zzhfpVar6, zzhfp zzhfpVar7, Executor executor, zzfhn zzfhnVar, zzdsd zzdsdVar) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzevo) obj);
        hashSet.add(zzevbVar);
        hashSet.add(zzevvVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfY)).booleanValue()) {
            hashSet.add((zzetv) zzhfpVar.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfZ)).booleanValue()) {
            hashSet.add((zzetv) zzhfpVar2.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgb)).booleanValue()) {
            hashSet.add((zzetv) zzhfpVar4.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgc)).booleanValue()) {
            hashSet.add((zzetv) zzhfpVar5.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdn)).booleanValue()) {
            hashSet.add((zzetv) zzhfpVar7.zzb());
        }
        return new zzety(context, executor, hashSet, zzfhnVar, zzdsdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
