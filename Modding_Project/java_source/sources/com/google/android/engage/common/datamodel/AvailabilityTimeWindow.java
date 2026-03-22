package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class AvailabilityTimeWindow {
    @Deprecated
    private final Long zza;
    private final LocalizedTimestamp zzb;
    @Deprecated
    private final Long zzc;
    private final LocalizedTimestamp zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private LocalizedTimestamp zzb;
        private Long zzc;
        private LocalizedTimestamp zzd;

        @NonNull
        public AvailabilityTimeWindow build() {
            return new AvailabilityTimeWindow(this, null);
        }

        @NonNull
        @Deprecated
        public Builder setEndTimestampMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setLocalizedEndTimestamp(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzd = localizedTimestamp;
            return this;
        }

        @NonNull
        public Builder setLocalizedStartTimestamp(@NonNull LocalizedTimestamp localizedTimestamp) {
            this.zzb = localizedTimestamp;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStartTimestampMillis(long j) {
            this.zza = Long.valueOf(j);
            return this;
        }
    }

    public /* synthetic */ AvailabilityTimeWindow(Builder builder, zzd zzdVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
    }

    @NonNull
    @Deprecated
    public Long getEndTimestampMillis() {
        return this.zzc;
    }

    @NonNull
    public LocalizedTimestamp getLocalizedEndTimestamp() {
        return this.zzd;
    }

    @NonNull
    public LocalizedTimestamp getLocalizedStartTimestamp() {
        return this.zzb;
    }

    @NonNull
    @Deprecated
    public Long getStartTimestampMillis() {
        return this.zza;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Long l = this.zza;
        if (l != null) {
            bundle.putLong(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, l.longValue());
        }
        LocalizedTimestamp localizedTimestamp = this.zzb;
        if (localizedTimestamp != null) {
            bundle.putBundle("C", localizedTimestamp.zza());
        }
        Long l2 = this.zzc;
        if (l2 != null) {
            bundle.putLong("B", l2.longValue());
        }
        LocalizedTimestamp localizedTimestamp2 = this.zzd;
        if (localizedTimestamp2 != null) {
            bundle.putBundle("D", localizedTimestamp2.zza());
        }
        return bundle;
    }
}
