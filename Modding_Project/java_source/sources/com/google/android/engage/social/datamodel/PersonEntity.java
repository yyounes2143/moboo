package com.google.android.engage.social.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Address;
import com.google.android.engage.common.datamodel.Badge;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Rating;
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
public final class PersonEntity extends Entity {
    private final zzj zza;
    private final Profile zzb;
    private final Image zzc;
    private final Popularity zzd;
    private final Rating zze;
    private final Address zzf;
    private final ImmutableList zzg;
    private final String zzh;
    private final ImmutableList zzi;
    private final ImmutableList zzj;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Profile zzb;
        private Image zzc;
        private Popularity zzd;
        private Rating zze;
        private Address zzf;
        private String zzh;
        private final zzh zza = new zzh();
        private final ImmutableList.Builder zzg = ImmutableList.builder();
        private final ImmutableList.Builder zzi = ImmutableList.builder();
        private final ImmutableList.Builder zzj = ImmutableList.builder();

        @NonNull
        public Builder addBadge(@NonNull Badge badge) {
            this.zzg.add((ImmutableList.Builder) badge);
            return this;
        }

        @NonNull
        public Builder addBadges(@NonNull List<Badge> list) {
            this.zzg.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategories(@NonNull List<Integer> list) {
            this.zzj.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategory(int i) {
            this.zzj.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zze(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzf(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzi.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzi.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PersonEntity build() {
            return new PersonEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzh = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzh(str);
            return this;
        }

        @NonNull
        public Builder setHeaderImage(@NonNull Image image) {
            this.zzc = image;
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zzf = address;
            return this;
        }

        @NonNull
        public Builder setPopularity(@NonNull Popularity popularity) {
            this.zzd = popularity;
            return this;
        }

        @NonNull
        public Builder setProfile(@NonNull Profile profile) {
            this.zzb = profile;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zze = rating;
            return this;
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface EligibleContentCategory {
        public static final int TYPE_DATING = 17;
        public static final int TYPE_HEALTH_AND_FITNESS = 14;
        public static final int TYPE_HOME_AND_AUTO = 9;
        public static final int TYPE_SPORTS = 2;
    }

    public /* synthetic */ PersonEntity(Builder builder, zzc zzcVar) {
        super(35);
        this.zza = new zzj(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg.build();
        this.zzh = builder.zzh;
        this.zzi = builder.zzi.build();
        this.zzj = builder.zzj.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zza();
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzg;
    }

    @NonNull
    public List<Integer> getContentCategoryList() {
        return this.zzj;
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
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Image> getHeaderImage() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<Address> getLocation() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<Popularity> getPopularity() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zze();
    }

    @NonNull
    public Profile getProfile() {
        return this.zzb;
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zzi;
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        Profile profile = this.zzb;
        if (profile != null) {
            bundle.putBundle("B", profile.zza());
        }
        Image image = this.zzc;
        if (image != null) {
            bundle.putBundle("J", image.zza());
        }
        Popularity popularity = this.zzd;
        if (popularity != null) {
            bundle.putBundle("C", popularity.zza());
        }
        Rating rating = this.zze;
        if (rating != null) {
            bundle.putBundle("D", rating.zza());
        }
        Address address = this.zzf;
        if (address != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, address.zza());
        }
        ImmutableList immutableList = this.zzg;
        if (!immutableList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Badge) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("F", arrayList);
        }
        String str = this.zzh;
        if (str != null) {
            bundle.putString(RequestConfiguration.MAX_AD_CONTENT_RATING_G, str);
        }
        ImmutableList immutableList2 = this.zzi;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("H", (String[]) immutableList2.toArray(new String[0]));
        }
        ImmutableList immutableList3 = this.zzj;
        if (!immutableList3.isEmpty()) {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.addAll(immutableList3);
            bundle.putIntegerArrayList("I", arrayList2);
        }
        return bundle;
    }
}
