package com.google.android.engage.food.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzs;
import com.google.android.engage.common.datamodel.zzu;
import com.google.common.base.Optional;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzc {
    private final Uri zza;
    private final zzu zzb;
    @Nullable
    private final Rating zzc;
    @Nullable
    private final String zzd;

    public /* synthetic */ zzc(zza zzaVar, zzb zzbVar) {
        zzs zzsVar;
        Uri uri;
        Rating rating;
        String str;
        zzsVar = zzaVar.zzb;
        this.zzb = zzsVar.zzd();
        uri = zzaVar.zza;
        this.zza = uri;
        rating = zzaVar.zzd;
        this.zzc = rating;
        str = zzaVar.zzc;
        this.zzd = str;
    }

    public final Uri zza() {
        return this.zza;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zzb.zza());
        Uri uri = this.zza;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("D", str);
        }
        Rating rating = this.zzc;
        if (rating != null) {
            bundle.putBundle("C", rating.zza());
        }
        return bundle;
    }

    public final Optional zzc() {
        return this.zzb.zzb();
    }

    public final Optional zzd() {
        return Optional.fromNullable(this.zzc);
    }

    public final Optional zze() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final List zzf() {
        return this.zzb.zzc();
    }
}
