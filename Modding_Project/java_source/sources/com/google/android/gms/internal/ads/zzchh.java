package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzchh implements zzhfv {
    private final zzhge zza;

    public zzchh(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        ApplicationInfo applicationInfo = ((zzchi) this.zza).zza().getApplicationInfo();
        zzhgd.zzb(applicationInfo);
        return applicationInfo;
    }
}
