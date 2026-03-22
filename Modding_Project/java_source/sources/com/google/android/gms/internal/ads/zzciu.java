package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzciu implements zzeyi {
    private final zzcil zza;
    private Context zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzr zzd;

    public /* synthetic */ zzciu(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeyi
    public final /* bridge */ /* synthetic */ zzeyi zza(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzrVar.getClass();
        this.zzd = zzrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeyi
    public final /* bridge */ /* synthetic */ zzeyi zzb(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeyi
    public final /* bridge */ /* synthetic */ zzeyi zzc(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeyi
    public final zzeyj zzd() {
        zzhgd.zzc(this.zzb, Context.class);
        zzhgd.zzc(this.zzc, String.class);
        zzhgd.zzc(this.zzd, com.google.android.gms.ads.internal.client.zzr.class);
        return new zzciv(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
