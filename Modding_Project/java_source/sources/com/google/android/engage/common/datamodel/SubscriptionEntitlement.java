package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class SubscriptionEntitlement {
    private final String zza;
    private final String zzb;
    private final Long zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private Long zzc;

        @NonNull
        public SubscriptionEntitlement build() {
            return new SubscriptionEntitlement(this, null);
        }

        @NonNull
        public Builder setDisplayName(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setEntitlementId(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setExpirationTimeMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }
    }

    public /* synthetic */ SubscriptionEntitlement(Builder builder, zzao zzaoVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
    }

    @NonNull
    public String getDisplayName() {
        return this.zzb;
    }

    @NonNull
    public String getEntitlementId() {
        return this.zza;
    }

    @NonNull
    public Long getExpirationTimeMillis() {
        return this.zzc;
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        String str2 = this.zzb;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("B", str2);
        }
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        return bundle;
    }
}
