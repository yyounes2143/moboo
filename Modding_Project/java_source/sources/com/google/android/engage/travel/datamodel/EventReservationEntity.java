package com.google.android.engage.travel.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Address;
import com.google.android.engage.common.datamodel.Badge;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.LocalizedTimestamp;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.ServiceProvider;
import com.google.android.engage.common.datamodel.zzai;
import com.google.android.engage.common.datamodel.zzak;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class EventReservationEntity extends Entity {
    private final zzak zza;
    @Deprecated
    private final Long zzb;
    private final LocalizedTimestamp zzc;
    private final int zzd;
    private final Address zze;
    @Deprecated
    private final Long zzf;
    private final LocalizedTimestamp zzg;
    private final ServiceProvider zzh;
    private final ImmutableList zzi;
    private final Price zzj;
    private final String zzk;
    private final Rating zzl;
    private final ImmutableList zzm;
    private final ImmutableList zzn;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private LocalizedTimestamp zzb;
        private int zzc;
        private Address zzd;
        private Long zze;
        private LocalizedTimestamp zzf;
        private ServiceProvider zzg;
        private Price zzi;
        private String zzj;
        private Rating zzk;
        private final ImmutableList.Builder zzh = ImmutableList.builder();
        private final ImmutableList.Builder zzl = ImmutableList.builder();
        private final zzai zzm = new zzai();
        @NonNull
        public ImmutableList.Builder<DisplayTimeWindow> displayTimeWindowBuilder = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.displayTimeWindowBuilder.addAll((Iterable<? extends DisplayTimeWindow>) list);
            return this;
        }

        @NonNull
        public Builder addBadge(@NonNull Badge badge) {
            this.zzh.add((ImmutableList.Builder) badge);
            return this;
        }

        @NonNull
        public Builder addBadges(@NonNull List<Badge> list) {
            this.zzh.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategories(@NonNull List<Integer> list) {
            this.zzl.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategory(int i) {
            this.zzl.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.displayTimeWindowBuilder.add((ImmutableList.Builder<DisplayTimeWindow>) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzm.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzm.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzm.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzm.zzf(list);
            return this;
        }

        @NonNull
        public EventReservationEntity build() {
            return new EventReservationEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzm.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzm.zzh(str);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setEndTime(@NonNull Long l) {
            this.zze = l;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzm.zzi(str);
            return this;
        }

        @NonNull
        public Builder setEventMode(int i) {
            this.zzc = i;
            return this;
        }

        @NonNull
        public Builder setLocalizedEndTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzf = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedStartTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzb = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zzd = address;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzi = price;
            return this;
        }

        @NonNull
        public Builder setPriceCallout(@NonNull String str) {
            this.zzj = str;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzk = rating;
            return this;
        }

        @NonNull
        public Builder setReservationId(@NonNull String str) {
            this.zzm.zzi(str);
            return this;
        }

        @NonNull
        public Builder setServiceProvider(@NonNull ServiceProvider serviceProvider) {
            this.zzg = serviceProvider;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStartTime(@NonNull Long l) {
            this.zza = l;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzm.zzj(str);
            return this;
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface EligibleContentCategory {
        public static final int TYPE_DATING = 17;
        public static final int TYPE_DIGITAL_GAMES = 7;
        public static final int TYPE_EDUCATION = 1;
        public static final int TYPE_HEALTH_AND_FITNESS = 14;
        public static final int TYPE_MOVIES_AND_TV_SHOWS = 3;
        public static final int TYPE_MUSIC = 6;
        public static final int TYPE_SPORTS = 2;
        public static final int TYPE_TRAVEL_AND_LOCAL = 8;
    }

    public /* synthetic */ EventReservationEntity(Builder builder, zzc zzcVar) {
        super(33);
        this.zza = builder.zzm.zzk();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
        this.zzi = builder.zzh.build();
        this.zzj = builder.zzi;
        this.zzk = builder.zzj;
        this.zzl = builder.zzk;
        this.zzm = builder.zzl.build();
        this.zzn = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzi;
    }

    @NonNull
    public List<Integer> getContentCategoryList() {
        return this.zzm;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzn;
    }

    @NonNull
    @Deprecated
    public Optional<Long> getEndTime() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzd();
    }

    public int getEventMode() {
        return this.zzd;
    }

    @NonNull
    public Optional<LocalizedTimestamp> getLocalizedEndTime() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    public LocalizedTimestamp getLocalizedStartTime() {
        return this.zzc;
    }

    @NonNull
    public Optional<Address> getLocation() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzj);
    }

    @NonNull
    public Optional<String> getPriceCallout() {
        String str = this.zzk;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zzl);
    }

    @NonNull
    public Optional<String> getReservationId() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<ServiceProvider> getServiceProvider() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    @Deprecated
    public Long getStartTime() {
        return this.zzb;
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
        Long l = this.zzb;
        if (l != null) {
            bundle.putLong("B", l.longValue());
        }
        LocalizedTimestamp localizedTimestamp = this.zzc;
        if (localizedTimestamp != null) {
            bundle.putBundle("L", localizedTimestamp.zza());
        }
        bundle.putInt("C", this.zzd);
        Address address = this.zze;
        if (address != null) {
            bundle.putBundle("D", address.zza());
        }
        Long l2 = this.zzf;
        if (l2 != null) {
            bundle.putLong(ExifInterface.LONGITUDE_EAST, l2.longValue());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zzg;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("M", localizedTimestamp2.zza());
        }
        ServiceProvider serviceProvider = this.zzh;
        if (serviceProvider != null) {
            bundle.putBundle("F", serviceProvider.zza());
        }
        ImmutableList immutableList = this.zzi;
        if (!immutableList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Badge) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList);
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("H", price.zza());
        }
        String str = this.zzk;
        if (str != null) {
            bundle.putString("I", str);
        }
        Rating rating = this.zzl;
        if (rating != null) {
            bundle.putBundle("J", rating.zza());
        }
        ImmutableList immutableList2 = this.zzm;
        if (!immutableList2.isEmpty()) {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.addAll(immutableList2);
            bundle.putIntegerArrayList("K", arrayList2);
        }
        ImmutableList immutableList3 = this.zzn;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            int size2 = immutableList3.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList3.add(((DisplayTimeWindow) immutableList3.get(i2)).zza());
            }
            bundle.putParcelableArrayList("N", arrayList3);
        }
        return bundle;
    }
}
