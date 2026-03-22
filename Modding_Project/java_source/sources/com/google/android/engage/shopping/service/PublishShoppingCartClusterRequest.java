package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingCart;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingCartClusterRequest {
    private final ShoppingCart zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private ShoppingCart zza;

        @NonNull
        public PublishShoppingCartClusterRequest build() {
            return new PublishShoppingCartClusterRequest(this, null);
        }

        @NonNull
        public Builder setShoppingCart(@NonNull ShoppingCart shoppingCart) {
            this.zza = shoppingCart;
            return this;
        }
    }

    public /* synthetic */ PublishShoppingCartClusterRequest(Builder builder, zzm zzmVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ShoppingCart getShoppingCart() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
