package com.google.android.engage.common.datamodel;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzh {
    private String zza;
    private int zzd;
    private Uri zze;
    private String zzf;
    private Long zzh;
    private final ImmutableList.Builder zzb = ImmutableList.builder();
    private final ImmutableList.Builder zzc = ImmutableList.builder();
    private final ImmutableList.Builder zzg = ImmutableList.builder();

    public final zzh zzc(List list) {
        this.zzg.addAll((Iterable) list);
        return this;
    }

    public final zzh zzd(DisplayTimeWindow displayTimeWindow) {
        this.zzg.add((ImmutableList.Builder) displayTimeWindow);
        return this;
    }

    public final zzh zze(String str) {
        this.zzc.add((ImmutableList.Builder) str);
        return this;
    }

    public final zzh zzf(List list) {
        this.zzc.addAll((Iterable) list);
        return this;
    }

    public final zzh zzg(Image image) {
        this.zzb.add((ImmutableList.Builder) image);
        return this;
    }

    public final zzh zzh(List list) {
        this.zzb.addAll((Iterable) list);
        return this;
    }

    public final zzh zzi(Uri uri) {
        this.zze = uri;
        return this;
    }

    public final zzh zzj(String str) {
        this.zzf = str;
        return this;
    }

    public final zzh zzk(Long l) {
        this.zzh = l;
        return this;
    }

    public final zzh zzl(int i) {
        this.zzd = i;
        return this;
    }

    public final zzh zzm(String str) {
        this.zza = str;
        return this;
    }

    public final zzj zzn() {
        return new zzj(this, null);
    }
}
