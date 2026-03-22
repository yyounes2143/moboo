package com.google.android.engage.shopping.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
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
public final class ShoppingEntity extends Entity {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final Price zzf;
    private final Rating zzg;
    private final ImmutableList zzh;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private String zzc;
        private String zzd;
        private String zze;
        private Price zzf;
        private Rating zzg;
        private final zzs zza = new zzs();
        private final ImmutableList.Builder zzh = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzh.addAll((Iterable) list);
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
        public ShoppingEntity build() {
            return new ShoppingEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setCallout(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setCalloutFinePrint(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzf = price;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzg = rating;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzc = str;
            return this;
        }
    }

    public /* synthetic */ ShoppingEntity(Builder builder, zzb zzbVar) {
        super(19);
        this.zza = builder.zza.zzd();
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
        this.zzh = builder.zzh.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<String> getCallout() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getCalloutFinePrint() {
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public List<DisplayTimeWindow> getDisplayTimeWindows() {
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
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zzg);
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
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        String str2 = this.zzd;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("D", str2);
        }
        String str3 = this.zze;
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str3);
        }
        Price price = this.zzf;
        if (price != null) {
            bundle.putBundle("F", price.zza());
        }
        Rating rating = this.zzg;
        if (rating != null) {
            bundle.putBundle(RequestConfiguration.MAX_AD_CONTENT_RATING_G, rating.zza());
        }
        ImmutableList immutableList = this.zzh;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("H", arrayList);
        }
        return bundle;
    }
}
