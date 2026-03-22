package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjf implements zzezz {
    private final zzcil zza;
    private Context zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzr zzd;

    public /* synthetic */ zzcjf(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* bridge */ /* synthetic */ zzezz zza(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzrVar.getClass();
        this.zzd = zzrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* bridge */ /* synthetic */ zzezz zzb(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final /* bridge */ /* synthetic */ zzezz zzc(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezz
    public final zzfaa zzd() {
        zzhgd.zzc(this.zzb, Context.class);
        zzhgd.zzc(this.zzc, String.class);
        zzhgd.zzc(this.zzd, com.google.android.gms.ads.internal.client.zzr.class);
        return new zzcjg(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
