package com.google.android.engage.books.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class AudiobookEntity extends Entity {
    private final zzd zza;
    private final List zzb;
    private final List zzc;
    private final Long zzd;
    private final Long zze;
    private final Price zzf;
    private final String zzg;
    private final Integer zzh;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zzc;
        private Long zzd;
        private Price zze;
        private String zzf;
        private Integer zzg;
        private final ImmutableList.Builder zza = ImmutableList.builder();
        private final ImmutableList.Builder zzb = ImmutableList.builder();
        private final zzb zzh = new zzb();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzh.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addAuthor(@NonNull String str) {
            this.zza.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addAuthors(@NonNull List<String> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzh.zza.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzh.zzd(str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzh.zze(list);
            return this;
        }

        @NonNull
        public Builder addNarrator(@NonNull String str) {
            this.zzb.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addNarrators(@NonNull List<String> list) {
            this.zzb.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzh.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzh.zzg(list);
            return this;
        }

        @NonNull
        public AudiobookEntity build() {
            return new AudiobookEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zzh.zzh(uri);
            return this;
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzh.zzi(i);
            return this;
        }

        @NonNull
        public Builder setContinueBookType(int i) {
            this.zzh.zzj(i);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzh.zzk(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzh.zzl(z);
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzh.zzm(str);
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zzh.zzn(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zzh.zzo(str);
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zze = price;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zzh.zzp(i);
            return this;
        }

        @NonNull
        public Builder setPublishDateEpochMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzh.zzq(rating);
            return this;
        }

        @NonNull
        public Builder setSeriesName(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setSeriesUnitIndex(@NonNull Integer num) {
            this.zzg = num;
            return this;
        }
    }

    public /* synthetic */ AudiobookEntity(Builder builder, zza zzaVar) {
        super(9);
        this.zza = new zzd(builder.zzh, null);
        this.zzb = builder.zza.build();
        this.zzc = builder.zzb.build();
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zzb();
    }

    @NonNull
    public List<String> getAuthors() {
        return this.zzb;
    }

    public int getAvailability() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<Integer> getContinueBookType() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zze();
    }

    @NonNull
    public List<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzk();
    }

    @NonNull
    public Optional<Long> getDurationMillis() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzf();
    }

    @NonNull
    public List<String> getGenres() {
        return this.zza.zzl();
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzg();
    }

    @NonNull
    public String getName() {
        return this.zza.zzj();
    }

    @NonNull
    public List<String> getNarrators() {
        return this.zzc;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzm();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zzh();
    }

    @NonNull
    public Optional<Long> getPublishDateEpochMillis() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<Rating> getRating() {
        return this.zza.zzi();
    }

    @NonNull
    public Optional<String> getSeriesName() {
        String str = this.zzg;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Integer> getSeriesUnitIndex() {
        return Optional.fromNullable(this.zzh);
    }

    public boolean isDownloadedOnDevice() {
        return this.zza.zzn();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzc());
        List list = this.zzb;
        if (!list.isEmpty()) {
            bundle.putStringArray("B", (String[]) list.toArray(new String[0]));
        }
        List list2 = this.zzc;
        if (!list2.isEmpty()) {
            bundle.putStringArray("C", (String[]) list2.toArray(new String[0]));
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        Long l2 = this.zze;
        if (l2 != null) {
            bundle.putLong(ExifInterface.LONGITUDE_EAST, l2.longValue());
        }
        Price price = this.zzf;
        if (price != null) {
            bundle.putBundle("F", price.zza());
        }
        String str = this.zzg;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(RequestConfiguration.MAX_AD_CONTENT_RATING_G, str);
        }
        Integer num = this.zzh;
        if (num != null) {
            bundle.putInt("H", num.intValue());
        }
        return bundle;
    }
}
