package com.google.android.engage.food.service;

import androidx.annotation.NonNull;
import com.google.android.engage.food.datamodel.FoodShoppingList;
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
public class PublishFoodShoppingListsRequest {
    private final ImmutableList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final ImmutableList.Builder zza = ImmutableList.builder();

        @NonNull
        public Builder addFoodShoppingList(@NonNull FoodShoppingList foodShoppingList) {
            this.zza.add((ImmutableList.Builder) foodShoppingList);
            return this;
        }

        @NonNull
        public Builder addFoodShoppingLists(@NonNull List<FoodShoppingList> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PublishFoodShoppingListsRequest build() {
            return new PublishFoodShoppingListsRequest(this, null);
        }
    }

    public /* synthetic */ PublishFoodShoppingListsRequest(Builder builder, zzq zzqVar) {
        this.zza = builder.zza.build();
    }

    @NonNull
    public ImmutableList<FoodShoppingList> getFoodShoppingLists() {
        return this.zza;
    }

    public final zzac zza() {
        final zzab zzabVar = new zzab();
        Iterable$EL.forEach(this.zza, new Consumer() { // from class: com.google.android.engage.food.service.zzp
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzab.this.zza((FoodShoppingList) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return new zzac(zzabVar);
    }
}
