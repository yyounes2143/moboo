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
public final class Price {
    private final String zza;
    private final String zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;

        @NonNull
        public Price build() {
            return new Price(this, null);
        }

        @NonNull
        public Builder setCurrentPrice(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setStrikethroughPrice(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    public /* synthetic */ Price(Builder builder, zzaf zzafVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public String getCurrentPrice() {
        return this.zza;
    }

    @NonNull
    public Optional<String> getStrikethroughPrice() {
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
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
