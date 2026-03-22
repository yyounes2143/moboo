package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class OrderReadyTimeWindow {
    private final Long zza;
    private final Long zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private Long zzb;

        @NonNull
        public OrderReadyTimeWindow build() {
            return new OrderReadyTimeWindow(this, null);
        }

        @NonNull
        public Builder setEndTimestampMillis(long j) {
            this.zzb = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setStartTimestampMillis(long j) {
            this.zza = Long.valueOf(j);
            return this;
        }
    }

    public /* synthetic */ OrderReadyTimeWindow(Builder builder, zzaa zzaaVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Optional<Long> getEndTimestampMillis() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public Optional<Long> getStartTimestampMillis() {
        return Optional.fromNullable(this.zza);
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Long l = this.zza;
        if (l != null) {
            bundle.putLong(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, l.longValue());
        }
        Long l2 = this.zzb;
        if (l2 != null) {
            bundle.putLong("B", l2.longValue());
        }
        return bundle;
    }
}
