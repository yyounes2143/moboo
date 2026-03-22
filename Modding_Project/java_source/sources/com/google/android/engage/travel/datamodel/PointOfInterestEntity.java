package com.google.android.engage.travel.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Address;
import com.google.android.engage.common.datamodel.AvailabilityTimeWindow;
import com.google.android.engage.common.datamodel.Badge;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzs;
import com.google.android.engage.common.datamodel.zzu;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.joda.time.Instant;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PointOfInterestEntity extends Entity {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    private final Address zzd;
    private final AvailabilityTimeWindow zze;
    private final ImmutableList zzf;
    private final String zzg;
    private final ImmutableList zzh;
    private final Rating zzi;
    private final Price zzj;
    private final String zzk;
    private final ImmutableList zzl;
    private final Instant zzm;
    private final ImmutableList zzn;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zza;
        private String zzb;
        private Address zzc;
        private AvailabilityTimeWindow zzd;
        private String zzf;
        private Rating zzh;
        private Price zzi;
        private String zzj;
        private Instant zzl;
        private final ImmutableList.Builder zze = ImmutableList.builder();
        private final ImmutableList.Builder zzg = ImmutableList.builder();
        private final ImmutableList.Builder zzk = ImmutableList.builder();
        private final zzs zzm = new zzs();
        @NonNull
        public ImmutableList.Builder<DisplayTimeWindow> displayTimeWindowBuilder = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.displayTimeWindowBuilder.addAll((Iterable<? extends DisplayTimeWindow>) list);
            return this;
        }

        @NonNull
        public Builder addBadge(@NonNull Badge badge) {
            this.zze.add((ImmutableList.Builder) badge);
            return this;
        }

        @NonNull
        public Builder addBadges(@NonNull List<Badge> list) {
            this.zze.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategories(@NonNull List<Integer> list) {
            this.zzk.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategory(int i) {
            this.zzk.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.displayTimeWindowBuilder.add((ImmutableList.Builder<DisplayTimeWindow>) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzm.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzm.zzb(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzg.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzg.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PointOfInterestEntity build() {
            return new PointOfInterestEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        @NonNull
        public Builder setAvailabilityTimeWindow(@NonNull AvailabilityTimeWindow availabilityTimeWindow) {
            this.zzd = availabilityTimeWindow;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzm.zzc(str);
            return this;
        }

        @NonNull
        public Builder setLastEngagementTime(@NonNull Instant instant) {
            this.zzl = instant;
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zzc = address;
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
            this.zzh = rating;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface EligibleContentCategory {
        public static final int TYPE_EDUCATION = 1;
        public static final int TYPE_MEDICAL = 15;
        public static final int TYPE_MOVIES_AND_TV_SHOWS = 3;
        public static final int TYPE_SPORTS = 2;
        public static final int TYPE_TRAVEL_AND_LOCAL = 8;
    }

    public /* synthetic */ PointOfInterestEntity(Builder builder, zzf zzfVar) {
        super(34);
        this.zza = builder.zzm.zzd();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze.build();
        this.zzg = builder.zzf;
        this.zzh = builder.zzg.build();
        this.zzi = builder.zzh;
        this.zzj = builder.zzi;
        this.zzk = builder.zzj;
        this.zzl = builder.zzk.build();
        this.zzm = builder.zzl;
        this.zzn = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<AvailabilityTimeWindow> getAvailabilityTimeWindow() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzf;
    }

    @NonNull
    public List<Integer> getContentCategoryList() {
        return this.zzl;
    }

    @NonNull
    public Optional<String> getDescription() {
        String str = this.zzg;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzn;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Instant> getLastEngagementTime() {
        return Optional.fromNullable(this.zzm);
    }

    @NonNull
    public Address getLocation() {
        return this.zzd;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzc();
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
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zzh;
    }

    @NonNull
    public String getTitle() {
        return this.zzc;
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
        String str = this.zzc;
        if (str != null) {
            bundle.putString("C", str);
        }
        Address address = this.zzd;
        if (address != null) {
            bundle.putBundle("D", address.zza());
        }
        AvailabilityTimeWindow availabilityTimeWindow = this.zze;
        if (availabilityTimeWindow != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, availabilityTimeWindow.zza());
        }
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Badge) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("F", arrayList);
        }
        String str2 = this.zzg;
        if (str2 != null) {
            bundle.putString(RequestConfiguration.MAX_AD_CONTENT_RATING_G, str2);
        }
        ImmutableList immutableList2 = this.zzh;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("H", (String[]) immutableList2.toArray(new String[0]));
        }
        Rating rating = this.zzi;
        if (rating != null) {
            bundle.putBundle("I", rating.zza());
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("J", price.zza());
        }
        String str3 = this.zzk;
        if (str3 != null) {
            bundle.putString("K", str3);
        }
        ImmutableList immutableList3 = this.zzl;
        if (!immutableList3.isEmpty()) {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.addAll(immutableList3);
            bundle.putIntegerArrayList("L", arrayList2);
        }
        Instant instant = this.zzm;
        if (instant != null) {
            bundle.putLong("M", instant.getMillis());
        }
        ImmutableList immutableList4 = this.zzn;
        if (!immutableList4.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            int size2 = immutableList4.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList3.add(((DisplayTimeWindow) immutableList4.get(i2)).zza());
            }
            bundle.putParcelableArrayList("N", arrayList3);
        }
        return bundle;
    }
}
