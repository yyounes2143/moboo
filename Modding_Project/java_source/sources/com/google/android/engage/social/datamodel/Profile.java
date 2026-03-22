package com.google.android.engage.social.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class Profile {
    private final String zza;
    private final String zzb;
    private final Image zzc;
    private final Image zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private Image zzc;
        private Image zzd;

        @NonNull
        public Profile build() {
            return new Profile(this, null);
        }

        @NonNull
        public Builder setAdditionalImage(@NonNull Image image) {
            this.zzd = image;
            return this;
        }

        @NonNull
        public Builder setAdditionalText(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setAvatar(@NonNull Image image) {
            this.zzc = image;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ Profile(Builder builder, zzg zzgVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
    }

    @NonNull
    public Optional<Image> getAdditionalImage() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<String> getAdditionalText() {
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Image getAvatar() {
        return this.zzc;
    }

    @NonNull
    public String getName() {
        return this.zza;
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
        Image image = this.zzc;
        if (image != null) {
            bundle.putBundle("C", image.zza());
        }
        Image image2 = this.zzd;
        if (image2 != null) {
            bundle.putBundle("D", image2.zza());
        }
        return bundle;
    }
}
