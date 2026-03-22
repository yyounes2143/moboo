package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcip implements zzewu {
    private final zzcil zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcip(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzewu
    public final /* bridge */ /* synthetic */ zzewu zza(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewu
    public final /* bridge */ /* synthetic */ zzewu zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewu
    public final zzewv zzc() {
        zzhgd.zzc(this.zzb, Context.class);
        zzhgd.zzc(this.zzc, String.class);
        return new zzciq(this.zza, this.zzb, this.zzc);
    }
}
