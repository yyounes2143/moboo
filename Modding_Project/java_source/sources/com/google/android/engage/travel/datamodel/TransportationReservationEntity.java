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
public final class TransportationReservationEntity extends Entity {
    private final zzak zza;
    @Deprecated
    private final Long zzb;
    private final LocalizedTimestamp zzc;
    @Deprecated
    private final Long zzd;
    private final LocalizedTimestamp zze;
    private final int zzf;
    private final Address zzg;
    private final Address zzh;
    private final ServiceProvider zzi;
    private final Price zzj;
    private final String zzk;
    private final String zzl;
    @Deprecated
    private final Long zzm;
    private final LocalizedTimestamp zzn;
    private final ImmutableList zzo;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private LocalizedTimestamp zzb;
        private Long zzc;
        private LocalizedTimestamp zzd;
        private int zze;
        private Address zzf;
        private Address zzg;
        private ServiceProvider zzh;
        private Price zzi;
        private String zzj;
        private String zzk;
        private Long zzl;
        private LocalizedTimestamp zzm;
        private final zzai zzn = new zzai();
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
            this.zzn.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzn.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zzn.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzn.zzf(list);
            return this;
        }

        @NonNull
        public TransportationReservationEntity build() {
            return new TransportationReservationEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzn.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setArrivalLocation(@NonNull Address address) {
            this.zzg = address;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setArrivalTime(@NonNull Long l) {
            this.zzc = l;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setBoardingTime(@NonNull Long l) {
            this.zzl = l;
            return this;
        }

        @NonNull
        public Builder setDepartureLocation(@NonNull Address address) {
            this.zzf = address;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setDepartureTime(@NonNull Long l) {
            this.zza = l;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzn.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzn.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLocalizedArrivalTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzd = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedBoardingTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzm = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedDepartureTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzb = localizedTimestamp;
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
        public Builder setReservationId(@NonNull String str) {
            this.zzn.zzi(str);
            return this;
        }

        @NonNull
        public Builder setServiceProvider(@NonNull ServiceProvider serviceProvider) {
            this.zzh = serviceProvider;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zzn.zzj(str);
            return this;
        }

        @NonNull
        public Builder setTransportationNumber(@NonNull String str) {
            this.zzk = str;
            return this;
        }

        @NonNull
        public Builder setTransportationType(int i) {
            this.zze = i;
            return this;
        }
    }

    public /* synthetic */ TransportationReservationEntity(Builder builder, zzh zzhVar) {
        super(31);
        this.zza = builder.zzn.zzk();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
        this.zzg = builder.zzf;
        this.zzh = builder.zzg;
        this.zzi = builder.zzh;
        this.zzj = builder.zzi;
        this.zzk = builder.zzj;
        this.zzl = builder.zzk;
        this.zzm = builder.zzl;
        this.zzn = builder.zzm;
        this.zzo = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<Address> getArrivalLocation() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    @Deprecated
    public Long getArrivalTime() {
        return this.zzd;
    }

    @NonNull
    @Deprecated
    public Optional<Long> getBoardingTime() {
        return Optional.fromNullable(this.zzm);
    }

    @NonNull
    public Optional<Address> getDepartureLocation() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    @Deprecated
    public Long getDepartureTime() {
        return this.zzb;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzo;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzd();
    }

    @NonNull
    public LocalizedTimestamp getLocalizedArrivalTime() {
        return this.zze;
    }

    @NonNull
    public Optional<LocalizedTimestamp> getLocalizedBoardingTime() {
        return Optional.fromNullable(this.zzn);
    }

    @NonNull
    public LocalizedTimestamp getLocalizedDepartureTime() {
        return this.zzc;
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
    public Optional<String> getReservationId() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<ServiceProvider> getServiceProvider() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zza.zzg();
    }

    @NonNull
    public String getTitle() {
        return this.zza.zze();
    }

    @NonNull
    public Optional<String> getTransportationNumber() {
        String str = this.zzl;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public int getTransportationType() {
        return this.zzf;
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
        Long l2 = this.zzd;
        if (l2 != null) {
            bundle.putLong("C", l2.longValue());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zze;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("M", localizedTimestamp2.zza());
        }
        bundle.putInt("D", this.zzf);
        Address address = this.zzg;
        if (address != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, address.zza());
        }
        Address address2 = this.zzh;
        if (address2 != null) {
            bundle.putBundle("F", address2.zza());
        }
        ServiceProvider serviceProvider = this.zzi;
        if (serviceProvider != null) {
            bundle.putBundle(RequestConfiguration.MAX_AD_CONTENT_RATING_G, serviceProvider.zza());
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("H", price.zza());
        }
        String str = this.zzk;
        if (str != null) {
            bundle.putString("I", str);
        }
        String str2 = this.zzl;
        if (str2 != null) {
            bundle.putString("J", str2);
        }
        Long l3 = this.zzm;
        if (l3 != null) {
            bundle.putLong("K", l3.longValue());
        }
        LocalizedTimestamp localizedTimestamp3 = this.zzn;
        if (localizedTimestamp3 != null) {
            bundle.putBundle("N", localizedTimestamp3.zza());
        }
        ImmutableList immutableList = this.zzo;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("O", arrayList);
        }
        return bundle;
    }
}
