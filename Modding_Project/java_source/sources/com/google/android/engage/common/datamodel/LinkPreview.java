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
public final class LinkPreview {
    private final String zza;
    private final String zzb;
    private final Image zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private Image zzc;

        @NonNull
        public LinkPreview build() {
            return new LinkPreview(this, null);
        }

        @NonNull
        public Builder setHostname(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setImage(@NonNull Image image) {
            this.zzc = image;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ LinkPreview(Builder builder, zzy zzyVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
    }

    @NonNull
    public String getHostname() {
        return this.zzb;
    }

    @NonNull
    public Optional<Image> getImage() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public String getTitle() {
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
        return bundle;
    }
}
