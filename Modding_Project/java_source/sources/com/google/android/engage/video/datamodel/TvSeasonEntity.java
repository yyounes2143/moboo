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
import com.google.android.engage.common.datamodel.Price;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class TvSeasonEntity extends Entity {
    private final zzv zza;
    private final Uri zzb;
    private final Uri zzc;
    private final Long zzd;
    private final Long zze;
    private final int zzf;
    private final int zzg;
    private final ImmutableList zzh;
    @Deprecated
    private final ImmutableList zzi;
    private final Price zzj;
    private final String zzk;
    private final ImmutableList zzl;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Uri zzc;
        private String zzd;
        private Long zze;
        private Long zzf;
        private int zzg;
        private Price zzk;
        private final zzt zza = new zzt();
        private int zzh = -1;
        private final ImmutableList.Builder zzi = ImmutableList.builder();
        private final ImmutableList.Builder zzj = ImmutableList.builder();
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
            this.zzl.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzl.addAll((Iterable) list);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addContentRatingsLegacy(@NonNull List<String> list) {
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
        public TvSeasonEntity build() {
            return new TvSeasonEntity(this, null);
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzg = i;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }

        @NonNull
        public Builder setEpisodeCount(int i) {
            this.zzh = i;
            return this;
        }

        @NonNull
        public Builder setFirstEpisodeAirDateEpochMillis(long j) {
            this.zze = Long.valueOf(j);
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
            this.zzf = Long.valueOf(j);
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
            this.zzk = price;
            return this;
        }

        @NonNull
        public Builder setSeasonDisplayNumber(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setSeasonNumber(int i) {
            this.zzd = String.valueOf(i);
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
            this.zzj.add((ImmutableList.Builder) str);
            return this;
        }
    }

    public /* synthetic */ TvSeasonEntity(Builder builder, zzq zzqVar) {
        super(3);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzk = builder.zzd;
        this.zzd = builder.zze;
        this.zze = builder.zzf;
        this.zzf = builder.zzg;
        this.zzg = builder.zzh;
        this.zzh = builder.zzi.build();
        this.zzi = builder.zzj.build();
        this.zzl = builder.zzl.build();
        this.zzj = builder.zzk;
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
        return this.zzl;
    }

    @NonNull
    @Deprecated
    public List<String> getContentRatingsLegacy() {
        return this.zzi;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    public int getEpisodeCount() {
        return this.zzg;
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
    public Optional<String> getSeasonDisplayNumber() {
        String str = this.zzk;
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
        String str = this.zzk;
        if (str != null) {
            bundle.putString("M", str);
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        Long l2 = this.zze;
        if (l2 != null) {
            bundle.putLong(ExifInterface.LONGITUDE_EAST, l2.longValue());
        }
        ImmutableList immutableList2 = this.zzi;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("I", (String[]) immutableList2.toArray(new String[0]));
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("K", price.zza());
        }
        ImmutableList immutableList3 = this.zzl;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList3.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((RatingSystem) immutableList3.get(i)).zza());
            }
            bundle.putParcelableArrayList("L", arrayList);
        }
        return bundle;
    }
}
