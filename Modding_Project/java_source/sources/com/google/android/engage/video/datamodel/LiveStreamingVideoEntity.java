package com.google.android.engage.video.datamodel;

import android.net.Uri;
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
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LiveStreamingVideoEntity extends Entity {
    private final zzv zza;
    private final Uri zzb;
    private final Long zzc;
    private final Long zzd;
    private final String zze;
    private final String zzf;
    private final Image zzg;
    private final ImmutableList zzh;
    private final ImmutableList zzi;
    private final ImmutableList zzj;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Long zzc;
        private Long zzd;
        private String zze;
        private String zzf;
        private Image zzg;
        private final zzt zza = new zzt();
        private final ImmutableList.Builder zzh = ImmutableList.builder();
        private final ImmutableList.Builder zzi = ImmutableList.builder();
        private final ImmutableList.Builder zzj = ImmutableList.builder();

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
            this.zzj.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzj.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzi.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzi.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzh.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzh.addAll((Iterable) list);
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
        public LiveStreamingVideoEntity build() {
            return new LiveStreamingVideoEntity(this, null);
        }

        @NonNull
        public Builder setBroadcaster(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setBroadcasterIcon(@NonNull Image image) {
            this.zzg = image;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEndTimeEpochMillis(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzi(str);
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
        public Builder setName(@NonNull String str) {
            this.zza.zzl(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setRecommendationReason(@NonNull RecommendationReason recommendationReason) {
            this.zza.zzm(recommendationReason);
            return this;
        }

        @NonNull
        public Builder setStartTimeEpochMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setViewCount(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setWatchNextType(int i) {
            this.zza.zzn(i);
            return this;
        }
    }

    public /* synthetic */ LiveStreamingVideoEntity(Builder builder, zza zzaVar) {
        super(5);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
        this.zzh = builder.zzh.build();
        this.zzi = builder.zzi.build();
        this.zzj = builder.zzj.build();
    }

    @NonNull
    public List<DisplayTimeWindow> getAvailabilityTimeWindows() {
        return this.zza.zzi();
    }

    @NonNull
    public String getBroadcaster() {
        return this.zze;
    }

    @NonNull
    public Optional<Image> getBroadcasterIcon() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    public ImmutableList<RatingSystem> getContentRatings() {
        return this.zzj;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Long> getEndTimeEpochMillis() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<String> getGenres() {
        return this.zzi;
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
    public String getName() {
        return this.zza.zzh();
    }

    @NonNull
    public List<PlatformSpecificUri> getPlatformSpecificPlaybackUris() {
        return this.zzh;
    }

    @NonNull
    public Uri getPlayBackUri() {
        return this.zzb;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzj();
    }

    @NonNull
    public Optional<RecommendationReason> getRecommendationReason() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Long> getStartTimeEpochMillis() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<String> getViewCount() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
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
        Uri uri = this.zzb;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        Long l2 = this.zzd;
        if (l2 != null) {
            bundle.putLong("D", l2.longValue());
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str);
        }
        String str2 = this.zzf;
        if (str2 != null) {
            bundle.putString("F", str2);
        }
        Image image = this.zzg;
        if (image != null) {
            bundle.putBundle(RequestConfiguration.MAX_AD_CONTENT_RATING_G, image.zza());
        }
        ImmutableList immutableList = this.zzh;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((PlatformSpecificUri) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("H", arrayList);
        }
        ImmutableList immutableList2 = this.zzi;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("I", (String[]) immutableList2.toArray(new String[0]));
        }
        ImmutableList immutableList3 = this.zzj;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size2 = immutableList3.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList2.add(((RatingSystem) immutableList3.get(i2)).zza());
            }
            bundle.putParcelableArrayList("J", arrayList2);
        }
        return bundle;
    }
}
