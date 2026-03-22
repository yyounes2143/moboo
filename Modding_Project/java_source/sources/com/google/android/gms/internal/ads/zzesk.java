package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesk implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzesk(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzesi zzb() {
        return new zzesi((ApplicationInfo) this.zza.zzb(), (PackageInfo) this.zzb.zzb(), ((zzchi) this.zzc).zza());
    }
}
