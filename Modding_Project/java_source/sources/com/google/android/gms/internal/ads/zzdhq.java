package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhq implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzdhq(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdds((Context) this.zza.zzb(), new HashSet(), ((zzcro) this.zzb).zza());
    }
}
