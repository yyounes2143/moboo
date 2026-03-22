package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingList;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import j$.lang.Iterable$EL;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingListsRequest {
    private final ImmutableList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final ImmutableList.Builder zza = ImmutableList.builder();

        @NonNull
        public Builder addShoppingList(@NonNull ShoppingList shoppingList) {
            this.zza.add((ImmutableList.Builder) shoppingList);
            return this;
        }

        @NonNull
        public Builder addShoppingLists(@NonNull List<ShoppingList> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PublishShoppingListsRequest build() {
            return new PublishShoppingListsRequest(this, null);
        }
    }

    public /* synthetic */ PublishShoppingListsRequest(Builder builder, zzr zzrVar) {
        this.zza = builder.zza.build();
    }

    @NonNull
    public ImmutableList<ShoppingList> getShoppingLists() {
        return this.zza;
    }

    public final zzac zza() {
        final zzab zzabVar = new zzab();
        Iterable$EL.forEach(this.zza, new Consumer() { // from class: com.google.android.engage.shopping.service.zzq
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzab.this.zza((ShoppingList) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return new zzac(zzabVar);
    }
}
