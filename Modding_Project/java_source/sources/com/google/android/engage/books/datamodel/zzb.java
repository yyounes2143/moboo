package com.google.android.engage.books.datamodel;

import android.net.Uri;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzs;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzb {
    private String zzb;
    private Uri zze;
    private int zzf;
    private Rating zzg;
    private boolean zzh;
    private String zzi;
    private Long zzj;
    private Integer zzk;
    private final zzs zzc = new zzs();
    private final ImmutableList.Builder zzd = ImmutableList.builder();
    private int zzl = 0;
    public final ImmutableList.Builder zza = ImmutableList.builder();

    public final zzb zzd(String str) {
        this.zzd.add((ImmutableList.Builder) str);
        return this;
    }

    public final zzb zze(List list) {
        this.zzd.addAll((Iterable) list);
        return this;
    }

    public final zzb zzf(Image image) {
        this.zzc.zza(image);
        return this;
    }

    public final zzb zzg(List list) {
        this.zzc.zzb(list);
        return this;
    }

    public final zzb zzh(Uri uri) {
        this.zze = uri;
        return this;
    }

    public final zzb zzi(int i) {
        this.zzf = i;
        return this;
    }

    public final zzb zzj(int i) {
        this.zzl = i;
        return this;
    }

    public final zzb zzk(String str) {
        this.zzi = str;
        return this;
    }

    public final zzb zzl(boolean z) {
        this.zzh = z;
        return this;
    }

    public final zzb zzm(String str) {
        this.zzc.zzc(str);
        return this;
    }

    public final zzb zzn(long j) {
        this.zzj = Long.valueOf(j);
        return this;
    }

    public final zzb zzo(String str) {
        this.zzb = str;
        return this;
    }

    public final zzb zzp(int i) {
        this.zzk = Integer.valueOf(i);
        return this;
    }

    public final zzb zzq(Rating rating) {
        this.zzg = rating;
        return this;
    }
}
