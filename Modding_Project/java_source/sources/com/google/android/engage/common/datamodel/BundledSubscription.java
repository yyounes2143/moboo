package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class BundledSubscription {
    private final String zza;
    private final int zzb;
    private final Long zzc;
    private final ImmutableList zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private Long zzc;
        private int zzb = 0;
        private final ImmutableList.Builder zzd = ImmutableList.builder();

        @NonNull
        public Builder addEntitlement(@NonNull SubscriptionEntitlement subscriptionEntitlement) {
            this.zzd.add((ImmutableList.Builder) subscriptionEntitlement);
            return this;
        }

        @NonNull
        public Builder addEntitlements(@NonNull List<SubscriptionEntitlement> list) {
            this.zzd.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public BundledSubscription build() {
            return new BundledSubscription(this, null);
        }

        @NonNull
        public Builder setBundledSubscriptionProviderPackageName(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setExpirationTimeMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setSubscriptionType(int i) {
            this.zzb = i;
            return this;
        }
    }

    public /* synthetic */ BundledSubscription(Builder builder, zzg zzgVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd.build();
    }

    @NonNull
    public String getBundledSubscriptionProviderPackageName() {
        return this.zza;
    }

    @NonNull
    public ImmutableList<SubscriptionEntitlement> getEntitlements() {
        return this.zzd;
    }

    @NonNull
    public Long getExpirationTimeMillis() {
        return this.zzc;
    }

    public int getSubscriptionType() {
        return this.zzb;
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        bundle.putInt("B", this.zzb);
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("C", l.longValue());
        }
        ImmutableList immutableList = this.zzd;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((SubscriptionEntitlement) immutableList.get(i)).toBundle());
            }
            bundle.putParcelableArrayList("D", arrayList);
        }
        return bundle;
    }
}
