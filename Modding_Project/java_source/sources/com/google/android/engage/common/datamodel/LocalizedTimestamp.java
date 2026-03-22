package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import org.joda.time.DateTimeZone;
import org.joda.time.Instant;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LocalizedTimestamp {
    private final Instant zza;
    private final DateTimeZone zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Instant zza;
        private DateTimeZone zzb;

        @NonNull
        public LocalizedTimestamp build() {
            return new LocalizedTimestamp(this, null);
        }

        @NonNull
        @KeepForSdk
        public Builder setTimestamp(@NonNull Instant instant) {
            this.zza = instant;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder setTimezone(@NonNull DateTimeZone dateTimeZone) {
            this.zzb = dateTimeZone;
            return this;
        }
    }

    public /* synthetic */ LocalizedTimestamp(Builder builder, zzz zzzVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Instant getTimestamp() {
        return this.zza;
    }

    @NonNull
    public DateTimeZone getTimezone() {
        return this.zzb;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Instant instant = this.zza;
        if (instant != null) {
            bundle.putLong(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, instant.getMillis());
        }
        DateTimeZone dateTimeZone = this.zzb;
        if (dateTimeZone != null) {
            bundle.putString("B", dateTimeZone.getID());
        }
        return bundle;
    }
}
