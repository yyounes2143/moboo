package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class MediaActionFeedEntity extends Entity {
    private final String zza;
    private final zzv zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private final zzt zzb = new zzt();

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzb.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzb.zzg(list);
            return this;
        }

        @NonNull
        public MediaActionFeedEntity build() {
            return new MediaActionFeedEntity(this, null);
        }

        @NonNull
        public Builder setDataFeedElementId(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzb.zzh(str);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zzb.zzl(str);
            return this;
        }

        @NonNull
        public Builder setRecommendationReason(@NonNull RecommendationReason recommendationReason) {
            this.zzb.zzm(recommendationReason);
            return this;
        }
    }

    public /* synthetic */ MediaActionFeedEntity(Builder builder, zzd zzdVar) {
        super(42);
        this.zza = builder.zza;
        this.zzb = new zzv(builder.zzb, null);
    }

    @NonNull
    public Optional<String> getDataFeedElementId() {
        return Optional.fromNullable(this.zza);
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zzb.zzb();
    }

    @NonNull
    public Optional<String> getName() {
        return Optional.fromNullable(this.zzb.zzh());
    }

    @NonNull
    public Optional<List<Image>> getPosterImages() {
        return Optional.fromNullable(this.zzb.zzj());
    }

    @NonNull
    public Optional<RecommendationReason> getRecommendationReason() {
        return this.zzb.zzf();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        String str = this.zza;
        Bundle bundle = super.toBundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        bundle.putBundle("B", this.zzb.zza());
        return bundle;
    }
}
