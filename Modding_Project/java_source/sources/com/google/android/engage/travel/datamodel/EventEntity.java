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
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class EventEntity extends Entity {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    @Deprecated
    private final Long zzd;
    private final LocalizedTimestamp zze;
    private final int zzf;
    private final Address zzg;
    @Deprecated
    private final Long zzh;
    private final LocalizedTimestamp zzi;
    private final String zzj;
    private final ImmutableList zzk;
    private final ImmutableList zzl;
    private final Price zzm;
    private final String zzn;
    private final ImmutableList zzo;
    private final ImmutableList zzp;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zza;
        private String zzb;
        private Long zzc;
        private LocalizedTimestamp zzd;
        private int zze;
        private Address zzf;
        private Long zzg;
        private LocalizedTimestamp zzh;
        private String zzi;
        private Price zzl;
        private String zzm;
        private final ImmutableList.Builder zzj = ImmutableList.builder();
        private final ImmutableList.Builder zzk = ImmutableList.builder();
        private final ImmutableList.Builder zzn = ImmutableList.builder();
        private final ImmutableList.Builder zzo = ImmutableList.builder();
        private final zzs zzp = new zzs();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzo.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addBadge(@NonNull Badge badge) {
            this.zzk.add((ImmutableList.Builder) badge);
            return this;
        }

        @NonNull
        public Builder addBadges(@NonNull List<Badge> list) {
            this.zzk.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategories(@NonNull List<Integer> list) {
            this.zzn.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addContentCategory(int i) {
            this.zzn.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzo.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzp.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzp.zzb(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzj.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzj.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public EventEntity build() {
            return new EventEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzi = str;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setEndTime(@NonNull Long l) {
            this.zzg = l;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzp.zzc(str);
            return this;
        }

        @NonNull
        public Builder setEventMode(int i) {
            this.zze = i;
            return this;
        }

        @NonNull
        public Builder setLocalizedEndTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzh = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedStartTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzd = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zzf = address;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzl = price;
            return this;
        }

        @NonNull
        public Builder setPriceCallout(@NonNull String str) {
            this.zzm = str;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStartTime(@NonNull Long l) {
            this.zzc = l;
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
        public static final int TYPE_DATING = 17;
        public static final int TYPE_DIGITAL_GAMES = 7;
        public static final int TYPE_EDUCATION = 1;
        public static final int TYPE_HEALTH_AND_FITNESS = 14;
        public static final int TYPE_MOVIES_AND_TV_SHOWS = 3;
        public static final int TYPE_MUSIC = 6;
        public static final int TYPE_SPORTS = 2;
        public static final int TYPE_TRAVEL_AND_LOCAL = 8;
    }

    public /* synthetic */ EventEntity(Builder builder, zzb zzbVar) {
        super(32);
        this.zza = builder.zzp.zzd();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
        this.zzi = builder.zzh;
        this.zzj = builder.zzi;
        this.zzk = builder.zzj.build();
        this.zzl = builder.zzk.build();
        this.zzm = builder.zzl;
        this.zzn = builder.zzm;
        this.zzo = builder.zzn.build();
        this.zzp = builder.zzo.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zzb;
    }

    @NonNull
    public List<Badge> getBadgeList() {
        return this.zzl;
    }

    @NonNull
    public List<Integer> getContentCategoryList() {
        return this.zzo;
    }

    @NonNull
    public Optional<String> getDescription() {
        String str = this.zzj;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzp;
    }

    @NonNull
    @Deprecated
    public Optional<Long> getEndTime() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzb();
    }

    public int getEventMode() {
        return this.zzf;
    }

    @NonNull
    public Optional<LocalizedTimestamp> getLocalizedEndTime() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public LocalizedTimestamp getLocalizedStartTime() {
        return this.zze;
    }

    @NonNull
    public Optional<Address> getLocation() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzm);
    }

    @NonNull
    public Optional<String> getPriceCallout() {
        String str = this.zzn;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    @Deprecated
    public Long getStartTime() {
        return this.zzd;
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zzk;
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
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        LocalizedTimestamp localizedTimestamp = this.zze;
        if (localizedTimestamp != null) {
            bundle.putBundle("N", localizedTimestamp.zza());
        }
        bundle.putInt(ExifInterface.LONGITUDE_EAST, this.zzf);
        Address address = this.zzg;
        if (address != null) {
            bundle.putBundle("F", address.zza());
        }
        Long l2 = this.zzh;
        if (l2 != null) {
            bundle.putLong(RequestConfiguration.MAX_AD_CONTENT_RATING_G, l2.longValue());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zzi;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("O", localizedTimestamp2.zza());
        }
        String str2 = this.zzj;
        if (str2 != null) {
            bundle.putString("H", str2);
        }
        ImmutableList immutableList = this.zzk;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("I", (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzl;
        if (!immutableList2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Badge) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList("J", arrayList);
        }
        Price price = this.zzm;
        if (price != null) {
            bundle.putBundle("K", price.zza());
        }
        String str3 = this.zzn;
        if (str3 != null) {
            bundle.putString("L", str3);
        }
        ImmutableList immutableList3 = this.zzo;
        if (!immutableList3.isEmpty()) {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.addAll(immutableList3);
            bundle.putIntegerArrayList("M", arrayList2);
        }
        ImmutableList immutableList4 = this.zzp;
        if (!immutableList4.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            int size2 = immutableList4.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList3.add(((DisplayTimeWindow) immutableList4.get(i2)).zza());
            }
            bundle.putParcelableArrayList("P", arrayList3);
        }
        return bundle;
    }
}
