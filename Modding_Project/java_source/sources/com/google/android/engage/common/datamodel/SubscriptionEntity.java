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
public final class SubscriptionEntity extends Entity {
    private final String zza;
    private final int zzb;
    private final Long zzc;
    private final ImmutableList zzd;
    private final ImmutableList zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private Long zzc;
        private int zzb = 0;
        private final ImmutableList.Builder zzd = ImmutableList.builder();
        private final ImmutableList.Builder zze = ImmutableList.builder();

        @NonNull
        public Builder addBundledSubscription(@NonNull BundledSubscription bundledSubscription) {
            this.zze.add((ImmutableList.Builder) bundledSubscription);
            return this;
        }

        @NonNull
        public Builder addBundledSubscriptions(@NonNull List<BundledSubscription> list) {
            this.zze.addAll((Iterable) list);
            return this;
        }

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
        public SubscriptionEntity build() {
            return new SubscriptionEntity(this, null);
        }

        @NonNull
        public Builder setExpirationTimeMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setProviderPackageName(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setSubscriptionType(int i) {
            this.zzb = i;
            return this;
        }
    }

    public /* synthetic */ SubscriptionEntity(Builder builder, zzap zzapVar) {
        super(41);
        this.zza = builder.zza;
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd.build();
        this.zze = builder.zze.build();
    }

    @NonNull
    public ImmutableList<BundledSubscription> getBundledSubscriptions() {
        return this.zze;
    }

    @NonNull
    public ImmutableList<SubscriptionEntitlement> getEntitlements() {
        return this.zzd;
    }

    @NonNull
    public Long getExpirationTimeMillis() {
        return this.zzc;
    }

    @NonNull
    public String getProviderPackageName() {
        return this.zza;
    }

    public int getSubscriptionType() {
        return this.zzb;
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public Bundle toBundle() {
        String str = this.zza;
        Bundle bundle = super.toBundle();
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
        ImmutableList immutableList2 = this.zze;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size2 = immutableList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList2.add(((BundledSubscription) immutableList2.get(i2)).toBundle());
            }
            bundle.putParcelableArrayList(ExifInterface.LONGITUDE_EAST, arrayList2);
        }
        return bundle;
    }
}
