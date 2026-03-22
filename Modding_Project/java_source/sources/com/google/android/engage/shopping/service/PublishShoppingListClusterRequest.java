package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingList;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingListClusterRequest {
    private final ShoppingList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private ShoppingList zza;

        @NonNull
        public PublishShoppingListClusterRequest build() {
            return new PublishShoppingListClusterRequest(this, null);
        }

        @NonNull
        public Builder setShoppingList(@NonNull ShoppingList shoppingList) {
            this.zza = shoppingList;
            return this;
        }
    }

    public /* synthetic */ PublishShoppingListClusterRequest(Builder builder, zzp zzpVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ShoppingList getShoppingList() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
