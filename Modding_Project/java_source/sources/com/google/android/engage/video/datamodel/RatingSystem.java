package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RatingSystem {
    private final String zza;
    private final String zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;

        @NonNull
        public RatingSystem build() {
            return new RatingSystem(this, null);
        }

        @NonNull
        public Builder setAgencyName(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    public /* synthetic */ RatingSystem(Builder builder, zzf zzfVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public String getAgencyName() {
        return this.zza;
    }

    @NonNull
    public String getRating() {
        return this.zzb;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        String str2 = this.zzb;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("B", str2);
        }
        return bundle;
    }
}
