package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfso extends zzftr {
    private String zza;
    private String zzb;

    @Override // com.google.android.gms.internal.ads.zzftr
    public final zzftr zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftr
    public final zzftr zzb(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftr
    public final zzfts zzc() {
        return new zzfsq(this.zza, this.zzb, null);
    }
}
