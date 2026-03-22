package com.google.android.engage.food.service;

import androidx.annotation.NonNull;
import com.google.android.engage.food.datamodel.FoodReorderCluster;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishReorderClusterRequest {
    private final FoodReorderCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private FoodReorderCluster zza;

        @NonNull
        public PublishReorderClusterRequest build() {
            return new PublishReorderClusterRequest(this, null);
        }

        @NonNull
        public Builder setReorderCluster(@NonNull FoodReorderCluster foodReorderCluster) {
            this.zza = foodReorderCluster;
            return this;
        }
    }

    public /* synthetic */ PublishReorderClusterRequest(Builder builder, zzr zzrVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public FoodReorderCluster getReorderCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
