package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeel implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzeel(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeek((Context) this.zza.zzb(), (zzcpu) this.zzb.zzb(), (Executor) this.zzc.zzb());
    }
}
