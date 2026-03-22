package com.changdu.component.pay.base.service;

import com.changdu.component.pay.base.model.PurchaseItemMonetization;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007H&¨\u0006\t"}, d2 = {"Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;", "", "onPurchaseItemMonetizationResult", "", "inappItemList", "Ljava/util/ArrayList;", "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;", "Lkotlin/collections/ArrayList;", "subsAppItemList", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface OnPurchaseMonetizationListener {
    void onPurchaseItemMonetizationResult(@NotNull ArrayList<PurchaseItemMonetization> arrayList, @NotNull ArrayList<PurchaseItemMonetization> arrayList2);
}
