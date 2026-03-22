package com.google.android.engage.video.datamodel;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzt {
    private String zzb;
    private Long zzc;
    private int zzd;
    private Long zze;
    private String zzg;
    private RecommendationReason zzh;
    private final com.google.android.engage.common.datamodel.zzs zza = new com.google.android.engage.common.datamodel.zzs();
    private final ImmutableList.Builder zzf = ImmutableList.builder();

    public final zzt zzd(List list) {
        this.zzf.addAll((Iterable) list);
        return this;
    }

    public final zzt zze(DisplayTimeWindow displayTimeWindow) {
        this.zzf.add((ImmutableList.Builder) displayTimeWindow);
        return this;
    }

    public final zzt zzf(Image image) {
        this.zza.zza(image);
        return this;
    }

    public final zzt zzg(List list) {
        this.zza.zzb(list);
        return this;
    }

    public final zzt zzh(@NonNull String str) {
        this.zzg = str;
        return this;
    }

    public final zzt zzi(String str) {
        this.zza.zzc(str);
        return this;
    }

    public final zzt zzj(long j) {
        this.zzc = Long.valueOf(j);
        return this;
    }

    public final zzt zzk(long j) {
        this.zze = Long.valueOf(j);
        return this;
    }

    public final zzt zzl(String str) {
        this.zzb = str;
        return this;
    }

    public final zzt zzm(@NonNull RecommendationReason recommendationReason) {
        this.zzh = recommendationReason;
        return this;
    }

    public final zzt zzn(int i) {
        this.zzd = i;
        return this;
    }
}
