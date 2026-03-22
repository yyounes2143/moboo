package com.changdu.component.pay.google;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientKotlinKt;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResult;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.changdu.component.pay.base.model.PurchaseItemMonetization;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class w extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5372a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ x c;
    public final /* synthetic */ ArrayList d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(ArrayList arrayList, x xVar, ArrayList arrayList2, Continuation continuation) {
        super(2, continuation);
        this.b = arrayList;
        this.c = xVar;
        this.d = arrayList2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BillingClient billingClient;
        Object Wwwwwwwwwwwwwwwwwwww2;
        List<ProductDetails> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ProductDetails.PricingPhase pricingPhase;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5372a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    Wwwwwwwwwwwwwwwwwwww2 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = this.b;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    String str = (String) obj2;
                    if (StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
                        try {
                            str = (String) StringsKt.split$default((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null).get(0);
                        } catch (Exception unused) {
                        }
                    }
                    if (str != null && !StringsKt.isBlank(str) && !arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj3 = arrayList.get(i3);
                    i3++;
                    arrayList3.add(QueryProductDetailsParams.Product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) obj3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("subs").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                QueryProductDetailsParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = QueryProductDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                billingClient = this.c.f5373a;
                this.f5372a = 1;
                Wwwwwwwwwwwwwwwwwwww2 = BillingClientKotlinKt.Wwwwwwwwwwwwwwwwwwww(billingClient, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this);
                if (Wwwwwwwwwwwwwwwwwwww2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            ProductDetailsResult productDetailsResult = (ProductDetailsResult) Wwwwwwwwwwwwwwwwwwww2;
            if (productDetailsResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetailsResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                for (ProductDetails productDetails : productDetailsResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    List<ProductDetails.SubscriptionOfferDetails> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                        PurchaseItemMonetization purchaseItemMonetization = null;
                        for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails : productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            if (subscriptionOfferDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null && (pricingPhase = (ProductDetails.PricingPhase) CollectionsKt.getOrNull(subscriptionOfferDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0)) != null) {
                                if (purchaseItemMonetization == null) {
                                    purchaseItemMonetization = new PurchaseItemMonetization(true, productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                                }
                                String str2 = productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + ":" + subscriptionOfferDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                if (this.b.contains(str2)) {
                                    this.d.add(new PurchaseItemMonetization(true, str2, pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), pricingPhase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                                }
                            }
                        }
                        if (purchaseItemMonetization != null && this.b.contains(productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                            this.d.add(purchaseItemMonetization);
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return Unit.INSTANCE;
    }
}
