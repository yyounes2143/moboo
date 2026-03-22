package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class Address {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private String zzc;
        private String zzd;
        private String zze;
        private String zzf;
        private String zzg;

        @NonNull
        public Address build() {
            return new Address(this, null);
        }

        @NonNull
        public Builder setCity(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setCountry(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setDisplayAddress(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setNeighborhood(@NonNull String str) {
            this.zzg = str;
            return this;
        }

        @NonNull
        public Builder setState(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setStreetAddress(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setZipCode(@NonNull String str) {
            this.zzf = str;
            return this;
        }
    }

    public /* synthetic */ Address(Builder builder, zzb zzbVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
    }

    @NonNull
    public String getCity() {
        return this.zza;
    }

    @NonNull
    public String getCountry() {
        return this.zzb;
    }

    @NonNull
    public String getDisplayAddress() {
        return this.zzc;
    }

    @NonNull
    public String getNeighborhood() {
        return this.zzg;
    }

    @NonNull
    public String getState() {
        return this.zze;
    }

    @NonNull
    public String getStreetAddress() {
        return this.zzd;
    }

    @NonNull
    public String getZipCode() {
        return this.zzf;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        String str2 = this.zzb;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str2);
        }
        String str3 = this.zzc;
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str3);
        }
        String str4 = this.zzd;
        if (!TextUtils.isEmpty(str4)) {
            bundle.putString("B", str4);
        }
        String str5 = this.zze;
        if (!TextUtils.isEmpty(str5)) {
            bundle.putString("D", str5);
        }
        String str6 = this.zzf;
        if (!TextUtils.isEmpty(str6)) {
            bundle.putString("F", str6);
        }
        String str7 = this.zzg;
        if (!TextUtils.isEmpty(str7)) {
            bundle.putString(RequestConfiguration.MAX_AD_CONTENT_RATING_G, str7);
        }
        return bundle;
    }
}
