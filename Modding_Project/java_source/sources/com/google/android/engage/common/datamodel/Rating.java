package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class Rating {
    private final double zza;
    private final double zzb;
    private final String zzc;
    private final Long zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private double zza = Double.MIN_VALUE;
        private double zzb = Double.MIN_VALUE;
        private String zzc;
        private Long zzd;

        @NonNull
        public Rating build() {
            return new Rating(this, null);
        }

        @NonNull
        public Builder setCount(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setCountValue(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setCurrentValue(double d) {
            this.zzb = d;
            return this;
        }

        @NonNull
        public Builder setMaxValue(double d) {
            this.zza = d;
            return this;
        }
    }

    public /* synthetic */ Rating(Builder builder, zzag zzagVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
    }

    @NonNull
    public Optional<String> getCount() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Long getCountValue() {
        return this.zzd;
    }

    public double getCurrentValue() {
        return this.zzb;
    }

    public double getMaxValue() {
        return this.zza;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putDouble(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza);
        bundle.putDouble("B", this.zzb);
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        return bundle;
    }
}
