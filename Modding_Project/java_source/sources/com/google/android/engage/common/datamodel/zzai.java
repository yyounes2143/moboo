package com.google.android.engage.common.datamodel;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzai {
    private Uri zzb;
    private String zzc;
    private String zzd;
    private final zzs zza = new zzs();
    private final ImmutableList.Builder zze = ImmutableList.builder();

    public final zzai zzc(Image image) {
        this.zza.zza(image);
        return this;
    }

    public final zzai zzd(List list) {
        this.zza.zzb(list);
        return this;
    }

    public final zzai zze(String str) {
        this.zze.add((ImmutableList.Builder) str);
        return this;
    }

    public final zzai zzf(List list) {
        this.zze.addAll((Iterable) list);
        return this;
    }

    public final zzai zzg(Uri uri) {
        this.zzb = uri;
        return this;
    }

    public final zzai zzh(String str) {
        this.zzd = str;
        return this;
    }

    public final zzai zzi(String str) {
        this.zza.zzc(str);
        return this;
    }

    public final zzai zzj(String str) {
        this.zzc = str;
        return this;
    }

    public final zzak zzk() {
        return new zzak(this, null);
    }
}
