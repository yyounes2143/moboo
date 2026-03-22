package com.changdu.component.pay.google;

import android.util.Log;
import com.android.billingclient.api.Purchase;
import com.changdu.component.pay.base.PayUtil;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import com.changdu.component.router.biz.ISensorsDataModuleService;
import java.util.HashMap;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.a  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0244a implements OnPurchaseListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GooglePayActivity f5352a;

    public C0244a(GooglePayActivity googlePayActivity) {
        this.f5352a = googlePayActivity;
    }

    @Override // com.changdu.component.pay.google.OnPurchaseListener
    public final void onError(int i, String str, Throwable th) {
        String stackTraceString;
        PayRequestItem payRequestItem;
        Object obj;
        if (i == 1) {
            GooglePayActivity.c(this.f5352a);
            return;
        }
        Object obj2 = "";
        if (th == null) {
            stackTraceString = "";
        } else {
            stackTraceString = Log.getStackTraceString(th);
        }
        HashMap hashMap = new HashMap();
        hashMap.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_ERROR_CODE, Integer.valueOf(i));
        GooglePayActivity googlePayActivity = this.f5352a;
        if (str == null) {
            str = "";
        }
        String str2 = "GooglePlay 支付失败\nerrorCode: " + i + "\nerrorMsg: " + str + "\nthrowable: " + stackTraceString;
        payRequestItem = this.f5352a.d;
        if (payRequestItem == null) {
            payRequestItem = "";
        }
        obj = this.f5352a.e;
        if (obj != null) {
            obj2 = obj;
        }
        googlePayActivity.a(i, new PayReportMessage(null, str2, "payRequestItem: " + payRequestItem + "\npayCreateOrderResult: " + obj2, null, null, hashMap, 25, null));
    }

    @Override // com.changdu.component.pay.google.OnPurchaseListener
    public final void onPurchasePaySuccess(Purchase purchase) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        GooglePayActivity googlePayActivity = this.f5352a;
        PayCreateOrderResult payCreateOrderResult = googlePayActivity.e;
        String str = "";
        String str2 = (payCreateOrderResult == null || (str2 = payCreateOrderResult.getParameter()) == null) ? "" : "";
        if (purchase != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        GooglePayActivity.a(googlePayActivity, str2, str);
    }

    @Override // com.changdu.component.pay.google.OnPurchaseListener
    public final void onReady() {
        String itemId;
        String parameter;
        String jumpUrl;
        GooglePayActivity googlePayActivity = this.f5352a;
        if (!googlePayActivity.f5349a) {
            googlePayActivity.f5349a = true;
            x xVar = googlePayActivity.c;
            if (xVar != null) {
                PayRequestItem payRequestItem = googlePayActivity.d;
                PayCreateOrderResult payCreateOrderResult = googlePayActivity.e;
                if (payRequestItem != null && payCreateOrderResult != null && (itemId = payRequestItem.getItemId()) != null && itemId.length() != 0 && (parameter = payCreateOrderResult.getParameter()) != null && parameter.length() != 0 && (jumpUrl = payCreateOrderResult.getJumpUrl()) != null && jumpUrl.length() != 0) {
                    BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getMainLoaderScope(), null, null, new q(payRequestItem, xVar, payCreateOrderResult, googlePayActivity, null), 3, null);
                    return;
                }
                C0244a c0244a = xVar.c;
                if (c0244a != null) {
                    AbstractC0245b.a(c0244a, 1002, null, 6);
                }
            }
        }
    }
}
