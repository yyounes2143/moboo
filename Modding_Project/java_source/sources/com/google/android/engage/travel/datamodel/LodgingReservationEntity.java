package com.google.android.engage.travel.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Address;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.LocalizedTimestamp;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzai;
import com.google.android.engage.common.datamodel.zzak;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LodgingReservationEntity extends Entity {
    private final zzak zza;
    private final Address zzb;
    @Deprecated
    private final long zzc;
    @Deprecated
    private final long zzd;
    private final LocalizedTimestamp zze;
    private final LocalizedTimestamp zzf;
    private final Price zzg;
    private final String zzh;
    private final Rating zzi;
    private final ImmutableList zzj;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Address zza;
        private long zzb;
        private long zzc;
        private LocalizedTimestamp zzd;
        private LocalizedTimestamp zze;
        private Price zzf;
        private String zzg;
        private Rating zzh;
        private final zzai zzi = new zzai();
        @NonNull
        public ImmutableList.Builder<DisplayTimeWindow> displayTimeWindowBuilder = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.displayTimeWindowBuilder.addAll((Iterable<? extends DisplayTimeWindow>) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.displayTimeWindowBuilder.add((ImmutableList.Builder<DisplayTimeWindow>) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzi.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzi.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzi.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzi.zzf(list);
            return this;
        }

        @NonNull
        public LodgingReservationEntity build() {
            return new LodgingReservationEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzi.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setAddress(@NonNull Address address) {
            this.zza = address;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setCheckInTime(long j) {
            this.zzb = j;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setCheckOutTime(long j) {
            this.zzc = j;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzi.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzi.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLocalizedCheckInTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzd = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedCheckOutTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zze = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzf = price;
            return this;
        }

        @NonNull
        public Builder setPriceCallout(@NonNull String str) {
            this.zzg = str;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzh = rating;
            return this;
        }

        @NonNull
        public Builder setReservationId(@NonNull String str) {
            this.zzi.zzi(str);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzi.zzj(str);
            return this;
        }
    }

    public /* synthetic */ LodgingReservationEntity(Builder builder, zze zzeVar) {
        super(29);
        this.zza = builder.zzi.zzk();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
        this.zzi = builder.zzh;
        this.zzj = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public Address getAddress() {
        return this.zzb;
    }

    @Deprecated
    public long getCheckInTime() {
        return this.zzc;
    }

    @Deprecated
    public long getCheckOutTime() {
        return this.zzd;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzj;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzd();
    }

    @NonNull
    public LocalizedTimestamp getLocalizedCheckInTime() {
        return this.zze;
    }

    @NonNull
    public LocalizedTimestamp getLocalizedCheckOutTime() {
        return this.zzf;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    public Optional<String> getPriceCallout() {
        String str = this.zzh;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public Optional<String> getReservationId() {
        return this.zza.zzd();
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zza.zzg();
    }

    @NonNull
    public String getTitle() {
        return this.zza.zze();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        Address address = this.zzb;
        if (address != null) {
            bundle.putBundle("B", address.zza());
        }
        bundle.putLong("D", this.zzd);
        bundle.putLong("C", this.zzc);
        Price price = this.zzg;
        if (price != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, price.zza());
        }
        String str = this.zzh;
        if (str != null) {
            bundle.putString("F", str);
        }
        Rating rating = this.zzi;
        if (rating != null) {
            bundle.putBundle(RequestConfiguration.MAX_AD_CONTENT_RATING_G, rating.zza());
        }
        LocalizedTimestamp localizedTimestamp = this.zze;
        if (localizedTimestamp != null) {
            bundle.putBundle("H", localizedTimestamp.zza());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zzf;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("I", localizedTimestamp2.zza());
        }
        ImmutableList immutableList = this.zzj;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("J", arrayList);
        }
        return bundle;
    }
}
