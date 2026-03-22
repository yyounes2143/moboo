package com.google.android.engage.common.datamodel;

import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzs {
    private String zza;
    private final ImmutableList.Builder zzb = ImmutableList.builder();

    public final zzs zza(Image image) {
        this.zzb.add((ImmutableList.Builder) image);
        return this;
    }

    public final zzs zzb(List list) {
        this.zzb.addAll((Iterable) list);
        return this;
    }

    public final zzs zzc(String str) {
        this.zza = str;
        return this;
    }

    public final zzu zzd() {
        return new zzu(this, null);
    }
}
