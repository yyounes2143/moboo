package com.google.android.engage.food.service;

import androidx.annotation.NonNull;
import com.google.android.engage.food.datamodel.FoodShoppingCart;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishFoodShoppingCartClusterRequest {
    private final FoodShoppingCart zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private FoodShoppingCart zza;

        @NonNull
        public PublishFoodShoppingCartClusterRequest build() {
            return new PublishFoodShoppingCartClusterRequest(this, null);
        }

        @NonNull
        public Builder setShoppingCart(@NonNull FoodShoppingCart foodShoppingCart) {
            this.zza = foodShoppingCart;
            return this;
        }
    }

    public /* synthetic */ PublishFoodShoppingCartClusterRequest(Builder builder, zzl zzlVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public FoodShoppingCart getShoppingCart() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
