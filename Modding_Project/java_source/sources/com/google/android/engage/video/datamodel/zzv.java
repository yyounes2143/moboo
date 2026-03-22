package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzv {
    private final com.google.android.engage.common.datamodel.zzu zza;
    private final String zzb;
    private final Long zzc;
    private final int zzd;
    private final Long zze;
    private final ImmutableList zzf;
    private final String zzg;
    private final RecommendationReason zzh;

    public /* synthetic */ zzv(zzt zztVar, zzu zzuVar) {
        com.google.android.engage.common.datamodel.zzs zzsVar;
        String str;
        Long l;
        ImmutableList.Builder builder;
        Long l2;
        int i;
        String str2;
        RecommendationReason recommendationReason;
        zzsVar = zztVar.zza;
        this.zza = zzsVar.zzd();
        str = zztVar.zzb;
        this.zzb = str;
        l = zztVar.zzc;
        this.zzc = l;
        builder = zztVar.zzf;
        this.zzf = builder.build();
        l2 = zztVar.zze;
        this.zze = l2;
        i = zztVar.zzd;
        this.zzd = i;
        str2 = zztVar.zzg;
        this.zzg = str2;
        recommendationReason = zztVar.zzh;
        this.zzh = recommendationReason;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        Long l2 = this.zze;
        if (l2 != null) {
            bundle.putLong("F", l2.longValue());
        }
        bundle.putInt("D", this.zzd);
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList(ExifInterface.LONGITUDE_EAST, arrayList);
        }
        String str2 = this.zzg;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(RequestConfiguration.MAX_AD_CONTENT_RATING_G, str2);
        }
        RecommendationReason recommendationReason = this.zzh;
        if (recommendationReason != null) {
            bundle.putBundle("H", recommendationReason.zza());
        }
        return bundle;
    }

    public final Optional zzb() {
        String str = this.zzg;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zzc() {
        return this.zza.zzb();
    }

    public final Optional zzd() {
        return Optional.fromNullable(this.zzc);
    }

    public final Optional zze() {
        return Optional.fromNullable(this.zze);
    }

    public final Optional zzf() {
        return Optional.fromNullable(this.zzh);
    }

    public final Optional zzg() {
        int i = this.zzd;
        if (i > 0) {
            return Optional.of(Integer.valueOf(i));
        }
        return Optional.absent();
    }

    public final String zzh() {
        return this.zzb;
    }

    public final List zzi() {
        return this.zzf;
    }

    public final List zzj() {
        return this.zza.zzc();
    }
}
