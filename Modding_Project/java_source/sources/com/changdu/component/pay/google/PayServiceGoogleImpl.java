package com.changdu.component.pay.google;

import android.app.Activity;
import android.content.Intent;
import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.base.IPayCallback;
import com.changdu.component.pay.base.PayUtil;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import com.changdu.component.pay.base.service.IPayServiceGoogle;
import com.changdu.component.pay.base.service.OnPurchaseMonetizationListener;
import com.didi.drouter.annotation.Service;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Service(cache = 2, function = {IPayServiceGoogle.class})
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\u001a\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016J*\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J@\u0010\u001b\u001a\u00020\u00062\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\b0\u001dj\b\u0012\u0004\u0012\u00020\b`\u001e2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\b0\u001dj\b\u0012\u0004\u0012\u00020\b`\u001e2\u0006\u0010 \u001a\u00020!H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/changdu/component/pay/google/PayServiceGoogleImpl;", "Lcom/changdu/component/pay/base/service/IPayServiceGoogle;", "()V", "mPayCallback", "Lcom/changdu/component/pay/base/IPayCallback;", "checkPayStatus", "", "getCountryCode", "", "handleCallbackCancel", "handleCallbackFailed", "errorCode", "", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "handleCallbackSuccess", "cdOrderId", "playOrderId", "init", "pay", "activity", "Landroid/app/Activity;", "payRequestItem", "Lcom/changdu/component/pay/base/model/PayRequestItem;", "payCreateOrderResult", "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;", "payCallback", "requestPurchaseMonetization", "inappItemIdList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "subsItemIdList", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayServiceGoogleImpl implements IPayServiceGoogle {
    @Nullable
    private IPayCallback mPayCallback;

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void checkPayStatus() {
        x.f.a(CDComponent.context.getApplicationContext()).a();
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    @NotNull
    public String getCountryCode() {
        return x.f.a(CDComponent.context.getApplicationContext()).e;
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void handleCallbackCancel() {
        IPayCallback iPayCallback = this.mPayCallback;
        if (iPayCallback != null) {
            iPayCallback.cancel();
        }
        this.mPayCallback = null;
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void handleCallbackFailed(int i, @Nullable PayReportMessage payReportMessage) {
        IPayCallback iPayCallback = this.mPayCallback;
        if (iPayCallback != null) {
            iPayCallback.failed(i, payReportMessage);
        }
        this.mPayCallback = null;
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void handleCallbackSuccess(@NotNull String str, @NotNull String str2) {
        IPayCallback iPayCallback = this.mPayCallback;
        if (iPayCallback != null) {
            iPayCallback.success(str, str2);
        }
        this.mPayCallback = null;
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void init() {
        x.f.a(CDComponent.context.getApplicationContext()).b();
    }

    @Override // com.changdu.component.pay.base.service.IPayService
    public void pay(@NotNull Activity activity, @NotNull PayRequestItem payRequestItem, @NotNull PayCreateOrderResult payCreateOrderResult, @Nullable IPayCallback iPayCallback) {
        String parameter;
        String jumpUrl;
        String itemId;
        String parameter2;
        String jumpUrl2;
        int i = GooglePayActivity.f;
        if (GooglePayActivity.f > 0) {
            if (iPayCallback != null) {
                iPayCallback.failed(1007, new PayReportMessage(null, "还有支付正在处理中，此次支付请求失败", null, null, null, null, 61, null));
                return;
            }
            return;
        }
        String itemId2 = payRequestItem.getItemId();
        if (itemId2 != null && !StringsKt.isBlank(itemId2) && (parameter = payCreateOrderResult.getParameter()) != null && parameter.length() != 0 && (jumpUrl = payCreateOrderResult.getJumpUrl()) != null && jumpUrl.length() != 0) {
            this.mPayCallback = iPayCallback;
            if (GooglePayActivity.f <= 0 && activity != null && (itemId = payRequestItem.getItemId()) != null && itemId.length() != 0 && (parameter2 = payCreateOrderResult.getParameter()) != null && parameter2.length() != 0 && (jumpUrl2 = payCreateOrderResult.getJumpUrl()) != null && jumpUrl2.length() != 0) {
                PayUtil payUtil = PayUtil.INSTANCE;
                String jsonStr = payUtil.toJsonStr(payRequestItem);
                String jsonStr2 = payUtil.toJsonStr(payCreateOrderResult);
                if (jsonStr != null && !StringsKt.isBlank(jsonStr) && jsonStr2 != null && !StringsKt.isBlank(jsonStr2)) {
                    Intent intent = new Intent(activity, GooglePayActivity.class);
                    intent.putExtra("payRequestItem", jsonStr);
                    intent.putExtra("payCreateOrderResult", jsonStr2);
                    activity.startActivity(intent);
                    return;
                }
            }
            handleCallbackFailed(1008, new PayReportMessage(null, "启动Google支付页失败", null, null, null, null, 61, null));
        } else if (iPayCallback != null) {
            iPayCallback.failed(1002, new PayReportMessage(null, "参数不合法，此次支付请求失败", null, null, null, null, 61, null));
        }
    }

    @Override // com.changdu.component.pay.base.service.IPayServiceGoogle
    public void requestPurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener) {
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getMainLoaderScope(), null, null, new C0246c(arrayList, arrayList2, onPurchaseMonetizationListener, null), 3, null);
    }
}
