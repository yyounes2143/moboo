package com.google.android.engage.shopping.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.shopping.datamodel.ShoppingCart;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import j$.lang.Iterable$EL;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishShoppingCartClustersRequest {
    private final ImmutableList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final ImmutableList.Builder zza = ImmutableList.builder();

        @NonNull
        public Builder addShoppingCart(@NonNull ShoppingCart shoppingCart) {
            this.zza.add((ImmutableList.Builder) shoppingCart);
            return this;
        }

        @NonNull
        public Builder addShoppingCarts(@NonNull List<ShoppingCart> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PublishShoppingCartClustersRequest build() {
            return new PublishShoppingCartClustersRequest(this, null);
        }
    }

    public /* synthetic */ PublishShoppingCartClustersRequest(Builder builder, zzo zzoVar) {
        this.zza = builder.zza.build();
    }

    @NonNull
    public ImmutableList<ShoppingCart> getShoppingCarts() {
        return this.zza;
    }

    public final zzac zza() {
        final zzab zzabVar = new zzab();
        Iterable$EL.forEach(this.zza, new Consumer() { // from class: com.google.android.engage.shopping.service.zzn
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzab.this.zza((ShoppingCart) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return new zzac(zzabVar);
    }
}
