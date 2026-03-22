package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcja implements zzdtn {
    private final zzcil zza;
    private Context zzb;
    private zzbkv zzc;

    public /* synthetic */ zzcja(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public final /* bridge */ /* synthetic */ zzdtn zza(zzbkv zzbkvVar) {
        zzbkvVar.getClass();
        this.zzc = zzbkvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public final /* bridge */ /* synthetic */ zzdtn zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public final zzdto zzc() {
        zzhgd.zzc(this.zzb, Context.class);
        zzhgd.zzc(this.zzc, zzbkv.class);
        return new zzcjb(this.zza, this.zzb, this.zzc);
    }
}
