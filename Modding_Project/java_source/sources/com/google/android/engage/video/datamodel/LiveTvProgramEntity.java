package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.PlatformSpecificUri;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LiveTvProgramEntity extends Entity {
    private final zzv zza;
    private final String zzb;
    private final String zzc;
    private final Image zzd;
    private final ImmutableList zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zzc;
        private String zzd;
        private Image zze;
        private final zzt zza = new zzt();
        private final ImmutableList.Builder zzb = ImmutableList.builder();
        private final ImmutableList.Builder zzf = ImmutableList.builder();
        private final ImmutableList.Builder zzg = ImmutableList.builder();

        @NonNull
        public Builder addAvailabilityTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zze(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addAvailabilityTimeWindows(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzd(list);
            return this;
        }

        @NonNull
        public Builder addContentRating(@NonNull RatingSystem ratingSystem) {
            this.zzg.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzg.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzb.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzb.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzf.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzf.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzg(list);
            return this;
        }

        @NonNull
        public LiveTvProgramEntity build() {
            return new LiveTvProgramEntity(this, null);
        }

        @NonNull
        public Builder setChannelId(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setChannelLogoImage(@NonNull Image image) {
            this.zze = image;
            return this;
        }

        @NonNull
        public Builder setChannelName(@NonNull String str) {
            this.zzd = str;
            return this;
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

    public /* synthetic */ LiveTvProgramEntity(Builder builder, zzc zzcVar) {
        super(44);
        this.zza = new zzv(builder.zza, null);
        this.zzf = builder.zzb.build();
        this.zzb = builder.zzc;
        this.zzc = builder.zzd;
        this.zzd = builder.zze;
        this.zzg = builder.zzf.build();
        this.zze = builder.zzg.build();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getAvailabilityTimeWindows() {
        return ImmutableList.copyOf((Collection) this.zza.zzi());
    }

    @NonNull
    public Optional<String> getChannelId() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public Optional<Image> getChannelLogoImage() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<String> getChannelName() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public ImmutableList<RatingSystem> getContentRatings() {
        return this.zze;
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
    public ImmutableList<String> getGenres() {
        return this.zzf;
    }

    @NonNull
    public Optional<String> getName() {
        return Optional.fromNullable(this.zza.zzh());
    }

    @NonNull
    public ImmutableList<PlatformSpecificUri> getPlatformSpecificPlaybackUris() {
        return this.zzg;
    }

    @NonNull
    public ImmutableList<Image> getPosterImages() {
        return ImmutableList.copyOf((Collection) this.zza.zzj());
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
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("B", (String[]) immutableList.toArray(new String[0]));
        }
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        String str2 = this.zzc;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("D", str2);
        }
        Image image = this.zzd;
        if (image != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, image.zza());
        }
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((PlatformSpecificUri) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList);
        }
        ImmutableList immutableList3 = this.zze;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size2 = immutableList3.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList2.add(((RatingSystem) immutableList3.get(i2)).zza());
            }
            bundle.putParcelableArrayList("F", arrayList2);
        }
        return bundle;
    }
}
