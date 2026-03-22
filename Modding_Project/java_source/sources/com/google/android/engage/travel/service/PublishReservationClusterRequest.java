package com.google.android.engage.travel.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.travel.datamodel.ReservationCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PublishReservationClusterRequest {
    private final ReservationCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private ReservationCluster zza;

        @NonNull
        public PublishReservationClusterRequest build() {
            return new PublishReservationClusterRequest(this, null);
        }

        @NonNull
        public Builder setReservationCluster(@NonNull ReservationCluster reservationCluster) {
            this.zza = reservationCluster;
            return this;
        }
    }

    public /* synthetic */ PublishReservationClusterRequest(Builder builder, zzj zzjVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ReservationCluster getReservationCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
