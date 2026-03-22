package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxa implements zzhfv {
    private final zzhge zza;

    public zzdxa(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final String zzb() {
        String packageName = ((zzchi) this.zza).zza().getPackageName();
        zzhgd.zzb(packageName);
        return packageName;
    }
}
