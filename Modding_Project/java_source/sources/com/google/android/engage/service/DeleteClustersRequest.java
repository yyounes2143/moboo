package com.google.android.engage.service;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.engage.common.datamodel.AccountProfile;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class DeleteClustersRequest {
    private final ImmutableList zza;
    @Nullable
    private final AccountProfile zzb;
    private final int zzc;
    private final boolean zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        @Nullable
        private AccountProfile zzb;
        private final ImmutableList.Builder zza = ImmutableList.builder();
        private int zzc = 0;
        private boolean zzd = false;

        @NonNull
        public Builder addClusterType(int i) {
            this.zza.add((ImmutableList.Builder) Integer.valueOf(i));
            return this;
        }

        @NonNull
        public DeleteClustersRequest build() {
            return new DeleteClustersRequest(this, null);
        }

        @NonNull
        public Builder setAccountProfile(@NonNull AccountProfile accountProfile) {
            this.zzb = accountProfile;
            return this;
        }

        @NonNull
        public Builder setDeleteReason(int i) {
            this.zzc = i;
            return this;
        }

        @NonNull
        public Builder setSyncAcrossDevices(boolean z) {
            this.zzd = z;
            return this;
        }
    }

    public /* synthetic */ DeleteClustersRequest(Builder builder, zzaf zzafVar) {
        this.zza = builder.zza.build();
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
    }

    @Nullable
    public AccountProfile getAccountProfile() {
        return this.zzb;
    }

    @NonNull
    public ImmutableList<Integer> getClusterTypeList() {
        return this.zza;
    }

    public int getDeleteReason() {
        return this.zzc;
    }

    public boolean getSyncAcrossDevices() {
        return this.zzd;
    }

    @NonNull
    public final Optional zza() {
        ImmutableList immutableList = this.zza;
        if (immutableList.isEmpty()) {
            return Optional.absent();
        }
        zzae zzaeVar = new zzae();
        int size = immutableList.size();
        for (int i = 0; i < size; i++) {
            zzaeVar.zza(((Integer) immutableList.get(i)).intValue());
        }
        return Optional.of(new ClusterMetadata(zzaeVar));
    }
}
