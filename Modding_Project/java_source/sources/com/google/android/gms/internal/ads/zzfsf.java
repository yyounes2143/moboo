package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfsf extends zzfsr {
    private String zza;
    private String zzb;

    @Override // com.google.android.gms.internal.ads.zzfsr
    public final zzfsr zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfsr
    public final zzfsr zzb(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfsr
    public final zzfss zzc() {
        return new zzfsh(this.zza, this.zzb, null);
    }
}
