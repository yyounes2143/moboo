package com.google.android.engage.social.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class Popularity {
    private final String zza;
    private final String zzb;
    private final List zzc;
    private final Long zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private final ImmutableList.Builder zzc = ImmutableList.builder();
        private Long zzd;

        @NonNull
        public Builder addVisual(@NonNull Image image) {
            this.zzc.add((ImmutableList.Builder) image);
            return this;
        }

        @NonNull
        public Builder addVisuals(@NonNull List<Image> list) {
            this.zzc.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Popularity build() {
            return new Popularity(this, null);
        }

        @NonNull
        public Builder setCount(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setCountValue(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setLabel(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    public /* synthetic */ Popularity(Builder builder, zzd zzdVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc.build();
        this.zzd = builder.zzd;
    }

    @NonNull
    public String getCount() {
        return this.zza;
    }

    @NonNull
    public Long getCountValue() {
        return this.zzd;
    }

    @NonNull
    public Optional<String> getLabel() {
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public List<Image> getVisuals() {
        return this.zzc;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        String str2 = this.zzb;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("B", str2);
        }
        List<Image> list = this.zzc;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (Image image : list) {
                arrayList.add(image.zza());
            }
            bundle.putParcelableArrayList("C", arrayList);
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        return bundle;
    }
}
