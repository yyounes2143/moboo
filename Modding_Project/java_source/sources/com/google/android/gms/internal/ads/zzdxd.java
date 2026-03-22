package com.google.android.gms.internal.ads;

import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxd implements zzhfv {
    public static zzdxd zza() {
        return zzdxc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.zzv.zzr();
        String uuid = UUID.randomUUID().toString();
        zzhgd.zzb(uuid);
        return uuid;
    }
}
