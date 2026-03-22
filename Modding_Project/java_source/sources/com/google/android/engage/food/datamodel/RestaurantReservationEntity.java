package com.google.android.engage.food.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Address;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.LocalizedTimestamp;
import com.google.android.engage.common.datamodel.zzai;
import com.google.android.engage.common.datamodel.zzak;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RestaurantReservationEntity extends Entity {
    private final zzak zza;
    private final Address zzb;
    @Deprecated
    private final Long zzc;
    private final LocalizedTimestamp zzd;
    private final Integer zze;
    private final ImmutableList zzf;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Address zza;
        private Long zzb;
        private LocalizedTimestamp zzc;
        private Integer zzd;
        private final zzai zze = new zzai();
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
            this.zze.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zze.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zze.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zze.zzf(list);
            return this;
        }

        @NonNull
        public RestaurantReservationEntity build() {
            return new RestaurantReservationEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zze.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zze.zzh(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zze.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLocalizedReservationStartTime(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzc = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocation(@NonNull Address address) {
            this.zza = address;
            return this;
        }

        @NonNull
        public Builder setReservationId(@NonNull String str) {
            this.zze.zzi(str);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setReservationStartTime(@NonNull Long l) {
            this.zzb = l;
            return this;
        }

        @NonNull
        public Builder setTableSize(@NonNull Integer num) {
            this.zzd = num;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zze.zzj(str);
            return this;
        }
    }

    public /* synthetic */ RestaurantReservationEntity(Builder builder, zzi zziVar) {
        super(27);
        this.zza = builder.zze.zzk();
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.displayTimeWindowBuilder.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzc();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzf;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzd();
    }

    @NonNull
    public LocalizedTimestamp getLocalizedReservationStartTime() {
        return this.zzd;
    }

    @NonNull
    public Address getLocation() {
        return this.zzb;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<String> getReservationId() {
        return this.zza.zzd();
    }

    @Deprecated
    public long getReservationStartTime() {
        return this.zzc.longValue();
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<Integer> getTableSize() {
        return Optional.fromNullable(this.zze);
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
        Address address = this.zzb;
        if (address != null) {
            bundle.putParcelable("B", address.zza());
        }
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        LocalizedTimestamp localizedTimestamp = this.zzd;
        if (localizedTimestamp != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, localizedTimestamp.zza());
        }
        Integer num = this.zze;
        if (num != null) {
            bundle.putInt("D", num.intValue());
        }
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("F", arrayList);
        }
        return bundle;
    }
}
