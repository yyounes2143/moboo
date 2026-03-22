package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class Image {
    private final Uri zza;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private final int zze;
    private final int zzf;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zza;
        private String zzd;
        private int zzb = -1;
        private int zzc = -1;
        private int zze = 0;
        private int zzf = 0;

        @NonNull
        public Image build() {
            return new Image(this, null);
        }

        @NonNull
        public Builder setAccessibilityText(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setImageCropType(int i) {
            this.zzf = i;
            return this;
        }

        @NonNull
        public Builder setImageHeightInPixel(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        public Builder setImageTheme(int i) {
            this.zze = i;
            return this;
        }

        @NonNull
        public Builder setImageUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        @NonNull
        public Builder setImageWidthInPixel(int i) {
            this.zzc = i;
            return this;
        }
    }

    public /* synthetic */ Image(Builder builder, zzx zzxVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
    }

    @NonNull
    public Optional<String> getAccessibilityText() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public int getImageCropType() {
        return this.zzf;
    }

    public int getImageHeightInPixel() {
        return this.zzb;
    }

    public int getImageTheme() {
        return this.zze;
    }

    @NonNull
    public Uri getImageUri() {
        return this.zza;
    }

    public int getImageWidthInPixel() {
        return this.zzc;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Uri uri = this.zza;
        if (uri != null) {
            bundle.putParcelable(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, uri);
        }
        bundle.putInt("B", this.zzb);
        bundle.putInt("C", this.zzc);
        bundle.putInt(ExifInterface.LONGITUDE_EAST, this.zze);
        bundle.putInt("F", this.zzf);
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("D", str);
        }
        return bundle;
    }
}
