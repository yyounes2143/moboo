package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
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
public final class GenericFeaturedEntity extends Entity {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    private final String zzd;
    private final ImmutableList zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;
    private final ImmutableList zzh;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private String zzc;
        private String zzd;
        private final zzs zza = new zzs();
        private final ImmutableList.Builder zze = ImmutableList.builder();
        private final ImmutableList.Builder zzf = ImmutableList.builder();
        private final ImmutableList.Builder zzg = ImmutableList.builder();
        private final ImmutableList.Builder zzh = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzh.addAll((Iterable) list);
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
        public Builder addContentCategories(@NonNull List<Integer> list) {
            this.zzg.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategory(int i) {
            this.zzg.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzh.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzb(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zze.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zze.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public GenericFeaturedEntity build() {
            return new GenericFeaturedEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzc = str;
            return this;
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface EligibleContentCategory {
        public static final int TYPE_AUDIOBOOKS = 5;
        public static final int TYPE_BOOKS = 4;
        public static final int TYPE_BUSINESS = 10;
        public static final int TYPE_DATING = 17;
        public static final int TYPE_DIGITAL_GAMES = 7;
        public static final int TYPE_EDUCATION = 1;
        public static final int TYPE_FOOD_AND_DRINK = 12;
        public static final int TYPE_HEALTH_AND_FITNESS = 14;
        public static final int TYPE_HOME_AND_AUTO = 9;
        public static final int TYPE_MEDICAL = 15;
        public static final int TYPE_MOVIES_AND_TV_SHOWS = 3;
        public static final int TYPE_MUSIC = 6;
        public static final int TYPE_NEWS = 11;
        public static final int TYPE_PARENTING = 16;
        public static final int TYPE_SHOPPING = 13;
        public static final int TYPE_SPORTS = 2;
        public static final int TYPE_TRAVEL_AND_LOCAL = 8;
    }

    public /* synthetic */ GenericFeaturedEntity(Builder builder, zzw zzwVar) {
        super(36);
        this.zza = new zzu(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze.build();
        this.zzf = builder.zzf.build();
        this.zzg = builder.zzg.build();
        this.zzh = builder.zzh.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zzb;
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzf;
    }

    @NonNull
    public List<Integer> getContentCategoryList() {
        return this.zzg;
    }

    @NonNull
    public Optional<String> getDescription() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzh;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzb();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzc();
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zze;
    }

    @NonNull
    public Optional<String> getTitle() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
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
        String str2 = this.zzd;
        if (str2 != null) {
            bundle.putString("D", str2);
        }
        ImmutableList immutableList = this.zze;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray(ExifInterface.LONGITUDE_EAST, (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzf;
        if (!immutableList2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Badge) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList("F", arrayList);
        }
        ImmutableList immutableList3 = this.zzg;
        if (!immutableList3.isEmpty()) {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.addAll(immutableList3);
            bundle.putIntegerArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList2);
        }
        ImmutableList immutableList4 = this.zzh;
        if (!immutableList4.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            int size2 = immutableList4.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList3.add(((DisplayTimeWindow) immutableList4.get(i2)).zza());
            }
            bundle.putParcelableArrayList("H", arrayList3);
        }
        return bundle;
    }
}
