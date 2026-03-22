package com.google.android.engage.video.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.PlatformSpecificUri;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class TvShowEntity extends Entity {
    private final zzv zza;
    private final Uri zzb;
    private final Uri zzc;
    private final Long zzd;
    private final Long zze;
    private final int zzf;
    private final int zzg;
    private final ImmutableList zzh;
    @Deprecated
    private final List zzi;
    private final Price zzj;
    private final List zzk;
    private final ImmutableList zzl;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Uri zzc;
        private Long zzd;
        private Long zze;
        private int zzf;
        private Price zzj;
        private final zzt zza = new zzt();
        private int zzg = -1;
        private final ImmutableList.Builder zzh = ImmutableList.builder();
        private final ImmutableList.Builder zzi = ImmutableList.builder();
        private final ImmutableList.Builder zzk = ImmutableList.builder();
        private final ImmutableList.Builder zzl = ImmutableList.builder();

        @NonNull
        public Builder addAllAvailabilityTimeWindows(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzd(list);
            return this;
        }

        @NonNull
        public Builder addAvailabilityTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zze(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addContentRating(@NonNull RatingSystem ratingSystem) {
            this.zzk.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzk.addAll((Iterable) list);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addContentRatingsLegacy(@NonNull List<String> list) {
            this.zzi.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzh.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzh.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzl.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzl.addAll((Iterable) list);
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
        public TvShowEntity build() {
            return new TvShowEntity(this, null);
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzf = i;
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
        public Builder setFirstEpisodeAirDateEpochMillis(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zzj(j);
            return this;
        }

        @NonNull
        public Builder setLastPlayBackPositionTimeMillis(long j) {
            this.zza.zzk(j);
            return this;
        }

        @NonNull
        public Builder setLatestEpisodeAirDateEpochMillis(long j) {
            this.zze = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzl(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zzc = uri;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzj = price;
            return this;
        }

        @NonNull
        public Builder setRecommendationReason(@NonNull RecommendationReason recommendationReason) {
            this.zza.zzm(recommendationReason);
            return this;
        }

        @NonNull
        public Builder setSeasonCount(int i) {
            this.zzg = i;
            return this;
        }

        @NonNull
        public Builder setWatchNextType(int i) {
            this.zza.zzn(i);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addContentRating(@NonNull String str) {
            this.zzi.add((ImmutableList.Builder) str);
            return this;
        }
    }

    public /* synthetic */ TvShowEntity(Builder builder, zzr zzrVar) {
        super(2);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
        this.zzh = builder.zzh.build();
        this.zzi = builder.zzi.build();
        this.zzk = builder.zzk.build();
        this.zzj = builder.zzj;
        this.zzl = builder.zzl.build();
    }

    public int getAvailability() {
        return this.zzf;
    }

    @NonNull
    public List<DisplayTimeWindow> getAvailabilityTimeWindows() {
        return this.zza.zzi();
    }

    @NonNull
    public List<RatingSystem> getContentRatings() {
        return this.zzk;
    }

    @NonNull
    @Deprecated
    public List<String> getContentRatingsLegacy() {
        return this.zzi;
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
    public Optional<Long> getFirstEpisodeAirDateEpochMillis() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public List<String> getGenres() {
        return this.zzh;
    }

    @NonNull
    public Uri getInfoPageUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<Long> getLastPlayBackPositionTimeMillis() {
        return this.zza.zze();
    }

    @NonNull
    public Optional<Long> getLatestEpisodeAirDateEpochMillis() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public String getName() {
        return this.zza.zzh();
    }

    @NonNull
    public ImmutableList<PlatformSpecificUri> getPlatformSpecificPlaybackUris() {
        return this.zzl;
    }

    @NonNull
    public Optional<Uri> getPlayBackUri() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzj();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzj);
    }

    @NonNull
    public Optional<RecommendationReason> getRecommendationReason() {
        return this.zza.zzf();
    }

    public int getSeasonCount() {
        return this.zzg;
    }

    @NonNull
    public Optional<Integer> getWatchNextType() {
        return this.zza.zzg();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzc;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Uri uri2 = this.zzb;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        bundle.putInt("F", this.zzf);
        ImmutableList immutableList = this.zzh;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("H", (String[]) immutableList.toArray(new String[0]));
        }
        bundle.putInt(RequestConfiguration.MAX_AD_CONTENT_RATING_G, this.zzg);
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        Long l2 = this.zze;
        if (l2 != null) {
            bundle.putLong(ExifInterface.LONGITUDE_EAST, l2.longValue());
        }
        List list = this.zzi;
        if (!list.isEmpty()) {
            bundle.putStringArray("I", (String[]) list.toArray(new String[0]));
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("K", price.zza());
        }
        List<RatingSystem> list2 = this.zzk;
        if (!list2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (RatingSystem ratingSystem : list2) {
                arrayList.add(ratingSystem.zza());
            }
            bundle.putParcelableArrayList("J", arrayList);
        }
        ImmutableList immutableList2 = this.zzl;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((PlatformSpecificUri) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList("L", arrayList2);
        }
        return bundle;
    }
}
