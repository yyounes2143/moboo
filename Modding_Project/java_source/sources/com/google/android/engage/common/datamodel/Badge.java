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
public final class Badge {
    private final String zza;
    private final Image zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private Image zzb;

        @NonNull
        public Badge build() {
            return new Badge(this, null);
        }

        @NonNull
        public Builder setImage(@NonNull Image image) {
            this.zzb = image;
            return this;
        }

        @NonNull
        public Builder setText(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ Badge(Builder builder, zze zzeVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Optional<Image> getImage() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public Optional<String> getText() {
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
            bundle.putBundle("B", image.zza());
        }
        return bundle;
    }
}
