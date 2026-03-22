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
public final class EbookEntity extends Entity {
    private final zzd zza;
    private final List zzb;
    private final Long zzc;
    private final Integer zzd;
    private final Price zze;
    private final String zzf;
    private final Integer zzg;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zzb;
        private Integer zzc;
        private Price zzd;
        private String zze;
        private Integer zzf;
        private final ImmutableList.Builder zza = ImmutableList.builder();
        private final zzb zzg = new zzb();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzg.zza.addAll((Iterable) list);
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
            this.zzg.zza.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzg.zzd(str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzg.zze(list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzg.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzg.zzg(list);
            return this;
        }

        @NonNull
        public EbookEntity build() {
            return new EbookEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zzg.zzh(uri);
            return this;
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzg.zzi(i);
            return this;
        }

        @NonNull
        public Builder setContinueBookType(int i) {
            this.zzg.zzj(i);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzg.zzk(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzg.zzl(z);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzg.zzm(str);
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zzg.zzn(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zzg.zzo(str);
            return this;
        }

        @NonNull
        public Builder setPageCount(int i) {
            this.zzc = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzd = price;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zzg.zzp(i);
            return this;
        }

        @NonNull
        public Builder setPublishDateEpochMillis(long j) {
            this.zzb = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzg.zzq(rating);
            return this;
        }

        @NonNull
        public Builder setSeriesName(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setSeriesUnitIndex(@NonNull Integer num) {
            this.zzf = num;
            return this;
        }
    }

    public /* synthetic */ EbookEntity(Builder builder, zzf zzfVar) {
        super(8);
        this.zza = new zzd(builder.zzg, null);
        this.zzb = builder.zza.build();
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
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
    public Optional<Integer> getPageCount() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzm();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zzh();
    }

    @NonNull
    public Optional<Long> getPublishDateEpochMillis() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<Rating> getRating() {
        return this.zza.zzi();
    }

    @NonNull
    public Optional<String> getSeriesName() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Integer> getSeriesUnitIndex() {
        return Optional.fromNullable(this.zzg);
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
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        Integer num = this.zzd;
        if (num != null) {
            bundle.putInt("D", num.intValue());
        }
        Price price = this.zze;
        if (price != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, price.zza());
        }
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("F", str);
        }
        Integer num2 = this.zzg;
        if (num2 != null) {
            bundle.putInt(RequestConfiguration.MAX_AD_CONTENT_RATING_G, num2.intValue());
        }
        return bundle;
    }
}
