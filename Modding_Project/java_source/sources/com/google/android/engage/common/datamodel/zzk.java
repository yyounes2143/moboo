package com.google.android.engage.common.datamodel;

import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzk {
    private AccountProfile zzb;
    private boolean zza = false;
    private final ImmutableList.Builder zzc = ImmutableList.builder();
    private final ImmutableList.Builder zzd = ImmutableList.builder();

    public final zzk zzb(List list) {
        this.zzd.addAll((Iterable) list);
        return this;
    }

    public final zzk zzc(DisplayTimeWindow displayTimeWindow) {
        this.zzd.add((ImmutableList.Builder) displayTimeWindow);
        return this;
    }

    public final zzk zzd(Entity entity) {
        this.zzc.add((ImmutableList.Builder) entity);
        return this;
    }

    public final zzk zze(AccountProfile accountProfile) {
        this.zzb = accountProfile;
        return this;
    }

    public final zzk zzf(boolean z) {
        this.zza = z;
        return this;
    }

    public final zzm zzg() {
        return new zzm(this, null);
    }
}
