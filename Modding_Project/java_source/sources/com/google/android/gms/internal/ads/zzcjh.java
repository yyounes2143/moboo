package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjh implements zzfbn {
    private final zzcil zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcjh(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* synthetic */ zzfbn zza(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ zzfbn zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final zzfbo zzc() {
        zzhgd.zzc(this.zzb, Context.class);
        return new zzcji(this.zza, this.zzb, this.zzc);
    }
}
