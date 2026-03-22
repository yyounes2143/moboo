package com.changdu.component.pay.google;

import com.android.billingclient.api.Purchase;
import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.base.PayUtil;
import com.changdu.component.pay.base.internal.ALocalCache;
import com.changdu.component.pay.google.localdb.LocalBillingDb;
import com.changdu.component.pay.google.localdb.PurchaseOrder;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f5351a = LazyKt.lazy(G.f5348a);

    public static final LocalBillingDb a() {
        return (LocalBillingDb) f5351a.getValue();
    }

    public static final Object a(E e) {
        return BuildersKt.withContext(Dispatchers.getIO(), new A(null), e);
    }

    public static final Object a(String str, C c) {
        return BuildersKt.withContext(Dispatchers.getIO(), new B(str, null), c);
    }

    public static Object a(String str, String str2, String str3, String str4, Purchase purchase, m mVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F(str, str2, str3, str4, purchase, null), mVar);
    }

    public static final Object a(PurchaseOrder purchaseOrder, C c) {
        return BuildersKt.withContext(Dispatchers.getIO(), new H(purchaseOrder, null), c);
    }

    public static final Object a(String str, SuspendLambda suspendLambda) {
        return BuildersKt.withContext(Dispatchers.getIO(), new y(str, null), suspendLambda);
    }

    public static void a(Purchase purchase) {
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getIoLoaderScope(), null, null, new C(purchase, null), 3, null);
    }

    public static final Object a(String str, String str2, String str3, String str4, SuspendLambda suspendLambda) {
        return BuildersKt.withContext(Dispatchers.getIO(), new z(str, str2, str3, str4, null), suspendLambda);
    }

    public static final String a(String str) {
        try {
            ALocalCache aLocalCache = ALocalCache.get(CDComponent.context, "googlePurchaseHistory");
            String asString = aLocalCache != null ? aLocalCache.getAsString(str) : null;
            return asString == null ? "" : asString;
        } catch (Exception unused) {
            return "";
        }
    }

    public static final void a(String str, String str2) {
        try {
            ALocalCache aLocalCache = ALocalCache.get(CDComponent.context, "googlePurchaseHistory");
            if (aLocalCache != null) {
                aLocalCache.put(str, str2);
            }
        } catch (Exception unused) {
        }
    }
}
