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
public final class AccountProfile {
    private final String zza;
    private final String zzb;
    private final String zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private String zzc;

        @NonNull
        public AccountProfile build() {
            return new AccountProfile(this, null);
        }

        @NonNull
        public Builder setAccountId(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setLocale(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setProfileId(@NonNull String str) {
            this.zzb = str;
            return this;
        }
    }

    public /* synthetic */ AccountProfile(Builder builder, zza zzaVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
    }

    @NonNull
    public String getAccountId() {
        return this.zza;
    }

    @NonNull
    public Optional<String> getLocale() {
        String str = this.zzc;
        if (TextUtils.isEmpty(str)) {
            return Optional.absent();
        }
        return Optional.of(str);
    }

    @NonNull
    public Optional<String> getProfileId() {
        String str = this.zzb;
        if (TextUtils.isEmpty(str)) {
            return Optional.absent();
        }
        return Optional.of(str);
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
        String str3 = this.zzc;
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString("C", str3);
        }
        return bundle;
    }
}
