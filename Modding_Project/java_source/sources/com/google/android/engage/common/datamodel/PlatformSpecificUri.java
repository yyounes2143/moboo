package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PlatformSpecificUri {
    private final Uri zza;
    private final int zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zza;
        private int zzb = 0;

        @NonNull
        public PlatformSpecificUri build() {
            return new PlatformSpecificUri(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zza = uri;
            return this;
        }

        @NonNull
        public Builder setPlatformType(int i) {
            this.zzb = i;
            return this;
        }
    }

    public /* synthetic */ PlatformSpecificUri(Builder builder, zzae zzaeVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza;
    }

    public int getPlatformType() {
        return this.zzb;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Uri uri = this.zza;
        if (uri != null) {
            bundle.putParcelable(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, uri);
        }
        bundle.putInt("B", this.zzb);
        return bundle;
    }
}
