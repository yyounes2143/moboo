package com.google.android.engage.common.datamodel;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzab {
    private String zza;
    private String zzc;
    private Long zzd;
    private Uri zze;
    private OrderReadyTimeWindow zzf;
    private Integer zzg;
    private String zzh;
    private Price zzi;
    private final ImmutableList.Builder zzb = ImmutableList.builder();
    private final ImmutableList.Builder zzj = ImmutableList.builder();

    public final zzab zzc(Image image) {
        this.zzb.add((ImmutableList.Builder) image);
        return this;
    }

    public final zzab zzd(List list) {
        this.zzb.addAll((Iterable) list);
        return this;
    }

    public final zzab zze(String str) {
        this.zzj.add((ImmutableList.Builder) str);
        return this;
    }

    public final zzab zzf(List list) {
        this.zzj.addAll((Iterable) list);
        return this;
    }

    public final zzab zzg(Uri uri) {
        this.zze = uri;
        return this;
    }

    public final zzab zzh(Integer num) {
        this.zzg = num;
        return this;
    }

    public final zzab zzi(String str) {
        this.zzh = str;
        return this;
    }

    public final zzab zzj(OrderReadyTimeWindow orderReadyTimeWindow) {
        this.zzf = orderReadyTimeWindow;
        return this;
    }

    public final zzab zzk(long j) {
        this.zzd = Long.valueOf(j);
        return this;
    }

    public final zzab zzl(Price price) {
        this.zzi = price;
        return this;
    }

    public final zzab zzm(String str) {
        this.zzc = str;
        return this;
    }

    public final zzab zzn(String str) {
        this.zza = str;
        return this;
    }

    public final zzad zzo() {
        return new zzad(this, null);
    }
}
