package com.google.android.engage.travel.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.zzk;
import com.google.android.engage.common.datamodel.zzm;
import com.google.android.engage.food.datamodel.RestaurantReservationEntity;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class ReservationCluster extends com.google.android.engage.common.datamodel.zzf {
    private final zzm zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzk zza = new zzk();

        @NonNull
        public Builder addEventReservationEntity(@NonNull EventReservationEntity eventReservationEntity) {
            this.zza.zzd(eventReservationEntity);
            return this;
        }

        @NonNull
        public Builder addLodgingReservationEntity(@NonNull LodgingReservationEntity lodgingReservationEntity) {
            this.zza.zzd(lodgingReservationEntity);
            return this;
        }

        @NonNull
        public Builder addRestaurantReservationEntity(@NonNull RestaurantReservationEntity restaurantReservationEntity) {
            this.zza.zzd(restaurantReservationEntity);
            return this;
        }

        @NonNull
        public Builder addTransportationReservationEntity(@NonNull TransportationReservationEntity transportationReservationEntity) {
            this.zza.zzd(transportationReservationEntity);
            return this;
        }

        @NonNull
        public Builder addVehicleRentalReservationEntity(@NonNull VehicleRentalReservationEntity vehicleRentalReservationEntity) {
            this.zza.zzd(vehicleRentalReservationEntity);
            return this;
        }

        @NonNull
        public ReservationCluster build() {
            return new ReservationCluster(this, null);
        }
    }

    public /* synthetic */ ReservationCluster(Builder builder, zzg zzgVar) {
        super(14);
        this.zza = builder.zza.zzg();
    }

    @NonNull
    public List<Entity> getEntities() {
        return this.zza.zzd();
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        return zza;
    }
}
