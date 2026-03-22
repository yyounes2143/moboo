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
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class s extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5368a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ x c;
    public final /* synthetic */ ArrayList d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(ArrayList arrayList, x xVar, ArrayList arrayList2, Continuation continuation) {
        super(2, continuation);
        this.b = arrayList;
        this.c = xVar;
        this.d = arrayList2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new s(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((s) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List<ProductDetails> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5368a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = this.b;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    arrayList3.add(QueryProductDetailsParams.Product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("inapp").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                arrayList.addAll(arrayList3);
                QueryProductDetailsParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = QueryProductDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                BillingClient billingClient = this.c.f5373a;
                this.f5368a = 1;
                obj = BillingClientKotlinKt.Wwwwwwwwwwwwwwwwwwww(billingClient, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            ProductDetailsResult productDetailsResult = (ProductDetailsResult) obj;
            if (productDetailsResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetailsResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                ArrayList arrayList4 = this.d;
                for (ProductDetails productDetails : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    ProductDetails.OneTimePurchaseOfferDetails Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        arrayList4.add(new PurchaseItemMonetization(false, productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                    }
                }
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
