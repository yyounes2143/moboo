package com.google.android.engage.food.datamodel;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzs;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zza {
    private Uri zza;
    private final zzs zzb = new zzs();
    @Nullable
    private String zzc;
    @Nullable
    private Rating zzd;

    public final zza zzd(Image image) {
        this.zzb.zza(image);
        return this;
    }

    public final zza zze(List list) {
        this.zzb.zzb(list);
        return this;
    }

    public final zza zzf(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zza zzg(String str) {
        this.zzb.zzc(str);
        return this;
    }

    public final zza zzh(Rating rating) {
        this.zzd = rating;
        return this;
    }

    public final zza zzi(String str) {
        this.zzc = str;
        return this;
    }
}
