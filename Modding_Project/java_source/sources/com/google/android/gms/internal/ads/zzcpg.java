package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcpg implements zzhfv {
    private final zzcow zza;
    private final zzhge zzb;

    public zzcpg(zzcow zzcowVar, zzhge zzhgeVar) {
        this.zza = zzcowVar;
        this.zzb = zzhgeVar;
    }

    public static Set zza(zzcow zzcowVar, zzcqm zzcqmVar) {
        Set singleton = Collections.singleton(new zzddq(zzcqmVar, zzcaa.zzg));
        zzhgd.zzb(singleton);
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza(this.zza, (zzcqm) this.zzb.zzb());
    }
}
