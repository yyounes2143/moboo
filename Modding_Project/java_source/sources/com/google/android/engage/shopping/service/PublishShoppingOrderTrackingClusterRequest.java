package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingOrderTrackingCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingOrderTrackingClusterRequest {
    private final ShoppingOrderTrackingCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private ShoppingOrderTrackingCluster zza;

        @NonNull
        public PublishShoppingOrderTrackingClusterRequest build() {
            return new PublishShoppingOrderTrackingClusterRequest(this, null);
        }

        @NonNull
        public Builder setShoppingOrderTrackingCluster(@NonNull ShoppingOrderTrackingCluster shoppingOrderTrackingCluster) {
            this.zza = shoppingOrderTrackingCluster;
            return this;
        }
    }

    public /* synthetic */ PublishShoppingOrderTrackingClusterRequest(Builder builder, zzs zzsVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ShoppingOrderTrackingCluster getShoppingOrderTrackingCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
