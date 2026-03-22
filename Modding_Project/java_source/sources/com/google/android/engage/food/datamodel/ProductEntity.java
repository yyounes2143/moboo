package com.google.android.engage.food.datamodel;

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
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class ProductEntity extends Entity {
    private final zzc zza;
    private final String zzb;
    private final String zzc;
    private final Price zzd;
    private final ImmutableList zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zzb;
        private String zzc;
        private Price zzd;
        private final zza zza = new zza();
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
            this.zza.zzd(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zze(list);
            return this;
        }

        @NonNull
        public ProductEntity build() {
            return new ProductEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzf(uri);
            return this;
        }

        @NonNull
        public Builder setCallout(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setCalloutFinePrint(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzg(str);
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzd = price;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zza.zzh(rating);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }
    }

    public /* synthetic */ ProductEntity(Builder builder, zzg zzgVar) {
        super(22);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<String> getCallout() {
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getCalloutFinePrint() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public List<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zze;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<Rating> getRating() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getTitle() {
        return this.zza.zze();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        String str2 = this.zzc;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("C", str2);
        }
        Price price = this.zzd;
        if (price != null) {
            bundle.putBundle("D", price.zza());
        }
        ImmutableList immutableList = this.zze;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList(ExifInterface.LONGITUDE_EAST, arrayList);
        }
        return bundle;
    }
}
