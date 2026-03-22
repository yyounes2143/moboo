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
import com.google.android.engage.common.datamodel.ServiceProvider;
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
public final class VehicleRentalReservationEntity extends Entity {
    private final zzak zza;
    @Deprecated
    private final Long zzb;
    private final LocalizedTimestamp zzc;
    @Deprecated
    private final Long zzd;
    private final LocalizedTimestamp zze;
    private final Address zzf;
    private final Address zzg;
    private final ServiceProvider zzh;
    private final Price zzi;
    private final String zzj;
    private final ImmutableList zzk;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private LocalizedTimestamp zzb;
        private Long zzc;
        private LocalizedTimestamp zzd;
        private Address zze;
        private Address zzf;
        private ServiceProvider zzg;
        private Price zzh;
        private String zzi;
        private final zzai zzj = new zzai();
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
            this.zzj.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzj.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzj.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzj.zzf(list);
            return this;
        }

        @NonNull
        public VehicleRentalReservationEntity build() {
            return new VehicleRentalReservationEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzj.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setConfirmationId(@NonNull String str) {
            this.zzj.zzi(str);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzj.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzj.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLocalizedPickupTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzb = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedReturnTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzd = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setPickupAddress(@NonNull Address address) {
            this.zze = address;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setPickupTime(@NonNull Long l) {
            this.zza = l;
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzh = price;
            return this;
        }

        @NonNull
        public Builder setPriceCallout(@NonNull String str) {
            this.zzi = str;
            return this;
        }

        @NonNull
        public Builder setReturnAddress(@NonNull Address address) {
            this.zzf = address;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setReturnTime(@NonNull Long l) {
            this.zzc = l;
            return this;
        }

        @NonNull
        public Builder setServiceProvider(@NonNull ServiceProvider serviceProvider) {
            this.zzg = serviceProvider;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzj.zzj(str);
            return this;
        }
    }

    public /* synthetic */ VehicleRentalReservationEntity(Builder builder, zzi zziVar) {
        super(30);
        this.zza = builder.zzj.zzk();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
        this.zzi = builder.zzh;
        this.zzj = builder.zzi;
        this.zzk = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<String> getConfirmationId() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzk;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzd();
    }

    @NonNull
    public LocalizedTimestamp getLocalizedPickupTime() {
        return this.zzc;
    }

    @NonNull
    public Optional<LocalizedTimestamp> getLocalizedReturnTime() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public Optional<Address> getPickupAddress() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    @Deprecated
    public Long getPickupTime() {
        return this.zzb;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public Optional<String> getPriceCallout() {
        String str = this.zzj;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Address> getReturnAddress() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    @Deprecated
    public Optional<Long> getReturnTime() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<ServiceProvider> getServiceProvider() {
        return Optional.fromNullable(this.zzh);
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
            bundle.putBundle("I", localizedTimestamp.zza());
        }
        Long l2 = this.zzd;
        if (l2 != null) {
            bundle.putLong("C", l2.longValue());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zze;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("J", localizedTimestamp2.zza());
        }
        Address address = this.zzf;
        if (address != null) {
            bundle.putBundle("D", address.zza());
        }
        Address address2 = this.zzg;
        if (address2 != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, address2.zza());
        }
        ServiceProvider serviceProvider = this.zzh;
        if (serviceProvider != null) {
            bundle.putBundle("F", serviceProvider.zza());
        }
        Price price = this.zzi;
        if (price != null) {
            bundle.putBundle(RequestConfiguration.MAX_AD_CONTENT_RATING_G, price.zza());
        }
        String str = this.zzj;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("H", str);
        }
        ImmutableList immutableList = this.zzk;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("K", arrayList);
        }
        return bundle;
    }
}
