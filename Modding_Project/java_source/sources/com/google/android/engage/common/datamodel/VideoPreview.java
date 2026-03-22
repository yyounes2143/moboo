package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class VideoPreview {
    private final Long zza;
    private final Image zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Long zza;
        private Image zzb;

        @NonNull
        public VideoPreview build() {
            return new VideoPreview(this, null);
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zza = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setImage(@NonNull Image image) {
            this.zzb = image;
            return this;
        }
    }

    public /* synthetic */ VideoPreview(Builder builder, zzar zzarVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Long getDurationMillis() {
        return this.zza;
    }

    @NonNull
    public Optional<Image> getImage() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Long l = this.zza;
        if (l != null) {
            bundle.putLong(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, l.longValue());
        }
        Image image = this.zzb;
        if (image != null) {
            bundle.putBundle("B", image.zza());
        }
        return bundle;
    }
}
