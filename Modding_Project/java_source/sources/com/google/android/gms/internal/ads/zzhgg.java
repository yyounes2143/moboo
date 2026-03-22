package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhgg {
    private final List zza;
    private final List zzb;

    public /* synthetic */ zzhgg(int i, int i2, zzhgf zzhgfVar) {
        this.zza = zzhfs.zzc(i);
        this.zzb = zzhfs.zzc(i2);
    }

    public final zzhgg zza(zzhge zzhgeVar) {
        this.zzb.add(zzhgeVar);
        return this;
    }

    public final zzhgg zzb(zzhge zzhgeVar) {
        this.zza.add(zzhgeVar);
        return this;
    }

    public final zzhgh zzc() {
        return new zzhgh(this.zza, this.zzb, null);
    }
}
