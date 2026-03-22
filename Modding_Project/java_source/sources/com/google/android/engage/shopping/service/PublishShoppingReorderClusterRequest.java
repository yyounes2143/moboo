package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingReorderCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingReorderClusterRequest {
    private final ShoppingReorderCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private ShoppingReorderCluster zza;

        @NonNull
        public PublishShoppingReorderClusterRequest build() {
            return new PublishShoppingReorderClusterRequest(this, null);
        }

        @NonNull
        public Builder setReorderCluster(@NonNull ShoppingReorderCluster shoppingReorderCluster) {
            this.zza = shoppingReorderCluster;
            return this;
        }
    }

    public /* synthetic */ PublishShoppingReorderClusterRequest(Builder builder, zzt zztVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ShoppingReorderCluster getReorderCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
