package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class SubscriptionCluster extends zzf {
    private final ImmutableList zza;
    private final AccountProfile zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private AccountProfile zza;
        private final ImmutableList.Builder zzb = ImmutableList.builder();

        @NonNull
        public Builder addSubscriptionEntity(@NonNull SubscriptionEntity subscriptionEntity) {
            this.zzb.add((ImmutableList.Builder) subscriptionEntity);
            return this;
        }

        @NonNull
        public SubscriptionCluster build() {
            return new SubscriptionCluster(this, null);
        }

        @NonNull
        public Builder setAccountProfile(@NonNull AccountProfile accountProfile) {
            this.zza = accountProfile;
            return this;
        }
    }

    public /* synthetic */ SubscriptionCluster(Builder builder, zzan zzanVar) {
        super(12);
        this.zzb = builder.zza;
        this.zza = builder.zzb.build();
    }

    @NonNull
    public Optional<AccountProfile> getAccountProfile() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public ImmutableList<SubscriptionEntity> getSubscriptionEntities() {
        return this.zza;
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        AccountProfile accountProfile = this.zzb;
        Bundle zza = super.zza();
        if (accountProfile != null) {
            zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, accountProfile.zza());
        }
        ImmutableList immutableList = this.zza;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((SubscriptionEntity) immutableList.get(i)).toBundle());
            }
            zza.putParcelableArrayList("B", arrayList);
        }
        return zza;
    }
}
