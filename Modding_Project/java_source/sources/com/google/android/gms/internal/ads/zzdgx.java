package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdgx implements zzhfv {
    private final zzhge zza;

    public zzdgx(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        if (((zzdgu) this.zza).zza().zze() != null) {
            set = Collections.singleton("banner");
        } else {
            set = Collections.EMPTY_SET;
        }
        zzhgd.zzb(set);
        return set;
    }
}
