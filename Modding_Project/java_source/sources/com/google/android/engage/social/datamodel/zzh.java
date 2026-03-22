package com.google.android.engage.social.datamodel;

import android.net.Uri;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.zzs;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzh {
    private Uri zza;
    private final zzs zzb = new zzs();
    private final ImmutableList.Builder zzc = ImmutableList.builder();

    public final zzh zzc(List list) {
        this.zzc.addAll((Iterable) list);
        return this;
    }

    public final zzh zzd(DisplayTimeWindow displayTimeWindow) {
        this.zzc.add((ImmutableList.Builder) displayTimeWindow);
        return this;
    }

    public final zzh zze(Image image) {
        this.zzb.zza(image);
        return this;
    }

    public final zzh zzf(List list) {
        this.zzb.zzb(list);
        return this;
    }

    public final zzh zzg(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzh zzh(String str) {
        this.zzb.zzc(str);
        return this;
    }
}
