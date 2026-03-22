package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.PlatformSpecificUri;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LiveTvChannelEntity extends Entity {
    private final zzv zza;
    private final ImmutableList zzb;
    private final Image zzc;
    private final ImmutableList zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzt zza = new zzt();
        private final ImmutableList.Builder zzb = ImmutableList.builder();
        private final ImmutableList.Builder zzc = ImmutableList.builder();
        private Image zzd;

        @NonNull
        public Builder addContentRating(@NonNull RatingSystem ratingSystem) {
            this.zzc.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzc.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzb.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzb.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public LiveTvChannelEntity build() {
            return new LiveTvChannelEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLogoImage(@NonNull Image image) {
            this.zzd = image;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzl(str);
            return this;
        }

        @NonNull
        public Builder setRecommendationReason(@NonNull RecommendationReason recommendationReason) {
            this.zza.zzm(recommendationReason);
            return this;
        }
    }

    public /* synthetic */ LiveTvChannelEntity(Builder builder, zzb zzbVar) {
        super(43);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb.build();
        this.zzc = builder.zzd;
        this.zzd = builder.zzc.build();
    }

    @NonNull
    public ImmutableList<RatingSystem> getContentRatings() {
        return this.zzd;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Image> getLogoImage() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<String> getName() {
        return Optional.fromNullable(this.zza.zzh());
    }

    @NonNull
    public ImmutableList<PlatformSpecificUri> getPlatformSpecificPlaybackUris() {
        return this.zzb;
    }

    @NonNull
    public Optional<RecommendationReason> getRecommendationReason() {
        return this.zza.zzf();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        ImmutableList immutableList = this.zzb;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((PlatformSpecificUri) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("D", arrayList);
        }
        Image image = this.zzc;
        if (image != null) {
            bundle.putBundle("B", image.zza());
        }
        ImmutableList immutableList2 = this.zzd;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size2 = immutableList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList2.add(((RatingSystem) immutableList2.get(i2)).zza());
            }
            bundle.putParcelableArrayList("C", arrayList2);
        }
        return bundle;
    }
}
