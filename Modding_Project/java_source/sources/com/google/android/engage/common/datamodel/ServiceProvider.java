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
public final class ServiceProvider {
    private final String zza;
    private final Image zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private Image zzb;

        @NonNull
        public ServiceProvider build() {
            return new ServiceProvider(this, null);
        }

        @NonNull
        public Builder setImage(@NonNull Image image) {
            this.zzb = image;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ ServiceProvider(Builder builder, zzal zzalVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Optional<Image> getImage() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public Optional<String> getName() {
        String str = this.zza;
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
        Image image = this.zzb;
        if (image != null) {
            bundle.putParcelable("B", image.zza());
        }
        return bundle;
    }
}
