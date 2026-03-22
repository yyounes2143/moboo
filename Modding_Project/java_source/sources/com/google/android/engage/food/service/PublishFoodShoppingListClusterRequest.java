package com.google.android.engage.food.service;

import androidx.annotation.NonNull;
import com.google.android.engage.food.datamodel.FoodShoppingList;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishFoodShoppingListClusterRequest {
    private final FoodShoppingList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private FoodShoppingList zza;

        @NonNull
        public PublishFoodShoppingListClusterRequest build() {
            return new PublishFoodShoppingListClusterRequest(this, null);
        }

        @NonNull
        public Builder setFoodShoppingList(@NonNull FoodShoppingList foodShoppingList) {
            this.zza = foodShoppingList;
            return this;
        }
    }

    public /* synthetic */ PublishFoodShoppingListClusterRequest(Builder builder, zzo zzoVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public FoodShoppingList getFoodShoppingList() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
