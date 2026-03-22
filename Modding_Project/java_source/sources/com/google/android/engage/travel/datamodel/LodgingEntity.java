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
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LodgingEntity extends Entity {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    private final Address zzd;
    private final Price zze;
    private final String zzf;
    private final List zzg;
    private final String zzh;
    private final List zzi;
    private final AvailabilityTimeWindow zzj;
    private final Rating zzk;
    private final ImmutableList zzl;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zza;
        private String zzb;
        private Address zzc;
        private Price zzd;
        private String zze;
        private String zzg;
        private AvailabilityTimeWindow zzi;
        private Rating zzj;
        private final ImmutableList.Builder zzf = ImmutableList.builder();
        private final ImmutableList.Builder zzh = ImmutableList.builder();
        private final zzs zzk = new zzs();
        private final ImmutableList.Builder zzl = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzl.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addBadge(@NonNull Badge badge) {
            this.zzf.add((ImmutableList.Builder) badge);
            return this;
        }

        @NonNull
        public Builder addBadges(@NonNull List<Badge> list) {
            this.zzf.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzl.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzk.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzk.zzb(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzh.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzh.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public LodgingEntity build() {
            return new LodgingEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        @NonNull
        public Builder setAvailabilityTimeWindow(@NonNull AvailabilityTimeWindow availabilityTimeWindow) {
            this.zzi = availabilityTimeWindow;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzg = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzk.zzc(str);
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zzc = address;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzd = price;
            return this;
        }

        @NonNull
        public Builder setPriceCallout(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzj = rating;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    public /* synthetic */ LodgingEntity(Builder builder, zzd zzdVar) {
        super(28);
        this.zza = builder.zzk.zzd();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf.build();
        this.zzh = builder.zzg;
        this.zzi = builder.zzh.build();
        this.zzj = builder.zzi;
        this.zzk = builder.zzj;
        this.zzl = builder.zzl.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<AvailabilityTimeWindow> getAvailabilityTimeWindow() {
        return Optional.fromNullable(this.zzj);
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzg;
    }

    @NonNull
    public Optional<String> getDescription() {
        String str = this.zzh;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzl;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzb();
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
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public Optional<String> getPriceCallout() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zzk);
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zzi;
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
        Price price = this.zze;
        if (price != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, price.zza());
        }
        String str2 = this.zzf;
        if (str2 != null) {
            bundle.putString("F", str2);
        }
        List<Badge> list = this.zzg;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (Badge badge : list) {
                arrayList.add(badge.zza());
            }
            bundle.putParcelableArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList);
        }
        String str3 = this.zzh;
        if (str3 != null) {
            bundle.putString("H", str3);
        }
        List list2 = this.zzi;
        if (!list2.isEmpty()) {
            bundle.putStringArray("I", (String[]) list2.toArray(new String[0]));
        }
        AvailabilityTimeWindow availabilityTimeWindow = this.zzj;
        if (availabilityTimeWindow != null) {
            bundle.putBundle("J", availabilityTimeWindow.zza());
        }
        Rating rating = this.zzk;
        if (rating != null) {
            bundle.putBundle("K", rating.zza());
        }
        ImmutableList immutableList = this.zzl;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("L", arrayList2);
        }
        return bundle;
    }
}
