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
public final class TvEpisodeEntity extends Entity {
    private final zzv zza;
    private final Uri zzb;
    private final Uri zzc;
    private final long zzd;
    private final int zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;
    private final long zzh;
    private final String zzi;
    private final String zzj;
    private final boolean zzk;
    private final Price zzl;
    private final String zzm;
    private final String zzn;
    private final ImmutableList zzo;
    private final Boolean zzp;
    private final ImmutableList zzq;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Uri zzc;
        private String zzd;
        private int zzf;
        private long zzi;
        private String zzj;
        private String zzk;
        private boolean zzl;
        private Price zzm;
        private String zzn;
        private Boolean zzp;
        private final zzt zza = new zzt();
        private long zze = Long.MIN_VALUE;
        private final ImmutableList.Builder zzg = ImmutableList.builder();
        private final ImmutableList.Builder zzh = ImmutableList.builder();
        private final ImmutableList.Builder zzo = ImmutableList.builder();
        private final ImmutableList.Builder zzq = ImmutableList.builder();

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
            this.zzo.add((ImmutableList.Builder) ratingSystem);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<RatingSystem> list) {
            this.zzo.addAll((Iterable) list);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addContentRatingsLegacy(@NonNull List<String> list) {
            this.zzh.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzg.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzg.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzq.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzq.addAll((Iterable) list);
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
        public TvEpisodeEntity build() {
            return new TvEpisodeEntity(this, null);
        }

        @NonNull
        public Builder setAirDateEpochMillis(long j) {
            this.zze = j;
            return this;
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzf = i;
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzl = z;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzi = j;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }

        @NonNull
        public Builder setEpisodeDisplayNumber(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setEpisodeNumber(int i) {
            this.zzd = String.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzc = uri;
            return this;
        }

        @NonNull
        public Builder setIsNextEpisodeAvailable(boolean z) {
            this.zzp = Boolean.valueOf(z);
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
        public Builder setPrice(@NonNull Price price) {
            this.zzm = price;
            return this;
        }

        @NonNull
        public Builder setSeasonNumber(@NonNull String str) {
            this.zzj = str;
            return this;
        }

        @NonNull
        public Builder setSeasonTitle(@NonNull String str) {
            this.zzk = str;
            return this;
        }

        @NonNull
        public Builder setShowTitle(@NonNull String str) {
            this.zzn = str;
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
            this.zzh.add((ImmutableList.Builder) str);
            return this;
        }
    }

    public /* synthetic */ TvEpisodeEntity(Builder builder, zzp zzpVar) {
        super(4);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzm = builder.zzd;
        this.zzd = builder.zze;
        this.zze = builder.zzf;
        this.zzf = builder.zzg.build();
        this.zzg = builder.zzh.build();
        this.zzo = builder.zzo.build();
        this.zzh = builder.zzi;
        this.zzi = builder.zzj;
        this.zzj = builder.zzk;
        this.zzn = builder.zzn;
        this.zzk = builder.zzl;
        this.zzl = builder.zzm;
        this.zzp = builder.zzp;
        this.zzq = builder.zzq.build();
    }

    public long getAirDateEpochMillis() {
        return this.zzd;
    }

    public int getAvailability() {
        return this.zze;
    }

    @NonNull
    public List<DisplayTimeWindow> getAvailabilityTimeWindows() {
        return this.zza.zzi();
    }

    @NonNull
    public List<RatingSystem> getContentRatings() {
        return this.zzo;
    }

    @NonNull
    @Deprecated
    public List<String> getContentRatingsLegacy() {
        return this.zzg;
    }

    public long getDurationMillis() {
        return this.zzh;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<String> getEpisodeDisplayNumber() {
        String str = this.zzm;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public List<String> getGenres() {
        return this.zzf;
    }

    @NonNull
    public Optional<Uri> getInfoPageUri() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<Boolean> getIsNextEpisodeAvailable() {
        return Optional.fromNullable(this.zzp);
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
        return this.zzq;
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
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzl);
    }

    @NonNull
    public Optional<String> getSeasonNumber() {
        String str = this.zzi;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getSeasonTitle() {
        String str = this.zzj;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getShowTitle() {
        String str = this.zzn;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Integer> getWatchNextType() {
        return this.zza.zzg();
    }

    public boolean isDownloadedOnDevice() {
        return this.zzk;
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
        Uri uri2 = this.zzc;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        bundle.putInt(ExifInterface.LONGITUDE_EAST, this.zze);
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray(RequestConfiguration.MAX_AD_CONTENT_RATING_G, (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("H", (String[]) immutableList2.toArray(new String[0]));
        }
        Price price = this.zzl;
        if (price != null) {
            bundle.putBundle("J", price.zza());
        }
        ImmutableList immutableList3 = this.zzo;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList3.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((RatingSystem) immutableList3.get(i)).zza());
            }
            bundle.putParcelableArrayList("K", arrayList);
        }
        ImmutableList immutableList4 = this.zzq;
        if (!immutableList4.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size2 = immutableList4.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList2.add(((PlatformSpecificUri) immutableList4.get(i2)).zza());
            }
            bundle.putParcelableArrayList("L", arrayList2);
        }
        bundle.putBoolean("I", this.zzk);
        bundle.putLong("F", this.zzh);
        bundle.putLong("D", this.zzd);
        String str = this.zzi;
        if (str != null) {
            bundle.putString("O", str);
        }
        String str2 = this.zzj;
        if (str2 != null) {
            bundle.putString("P", str2);
        }
        String str3 = this.zzn;
        if (str3 != null) {
            bundle.putString("Q", str3);
        }
        Boolean bool = this.zzp;
        if (bool != null) {
            bundle.putBoolean("N", bool.booleanValue());
        }
        String str4 = this.zzm;
        if (str4 != null) {
            bundle.putString("M", str4);
        }
        return bundle;
    }
}
