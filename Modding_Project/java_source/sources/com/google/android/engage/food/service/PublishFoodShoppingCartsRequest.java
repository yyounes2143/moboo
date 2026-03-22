package com.google.android.engage.food.service;

import androidx.annotation.NonNull;
import com.google.android.engage.food.datamodel.FoodShoppingCart;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import j$.lang.Iterable$EL;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishFoodShoppingCartsRequest {
    private final ImmutableList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final ImmutableList.Builder zza = ImmutableList.builder();

        @NonNull
        public Builder addFoodShoppingCart(@NonNull FoodShoppingCart foodShoppingCart) {
            this.zza.add((ImmutableList.Builder) foodShoppingCart);
            return this;
        }

        @NonNull
        public Builder addFoodShoppingCarts(@NonNull List<FoodShoppingCart> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PublishFoodShoppingCartsRequest build() {
            return new PublishFoodShoppingCartsRequest(this, null);
        }
    }

    public /* synthetic */ PublishFoodShoppingCartsRequest(Builder builder, zzn zznVar) {
        this.zza = builder.zza.build();
    }

    @NonNull
    public ImmutableList<FoodShoppingCart> getFoodShoppingCarts() {
        return this.zza;
    }

    public final zzac zza() {
        final zzab zzabVar = new zzab();
        Iterable$EL.forEach(this.zza, new Consumer() { // from class: com.google.android.engage.food.service.zzm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzab.this.zza((FoodShoppingCart) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return new zzac(zzabVar);
    }
}
