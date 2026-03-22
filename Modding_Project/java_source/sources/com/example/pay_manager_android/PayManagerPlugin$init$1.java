package com.example.pay_manager_android;

import android.app.Activity;
import com.applovin.sdk.AppLovinEventParameters;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.model.PayReportMessage;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0013"}, d2 = {"com/example/pay_manager_android/PayManagerPlugin$init$1", "Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;", "googlePlayPurchaseSuccess", "", "cdOrderId", "", "isSubscribe", "", "price", AppLovinEventParameters.PRODUCT_IDENTIFIER, "receiptOriginalJson", "receiptSignature", "purchaseToken", "purchaseTime", "", "callbackPayInfo", "onReceiveReportMessage", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "remove_manager_update_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayManagerPlugin$init$1 implements CDPay.OnPayModuleListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ PayManagerPlugin f5853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PayManagerPlugin$init$1(PayManagerPlugin payManagerPlugin) {
        this.f5853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = payManagerPlugin;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PayManagerPlugin payManagerPlugin, HashMap hashMap) {
        MethodChannel methodChannel;
        methodChannel = payManagerPlugin.f5849Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("googlePlayPurchaseSuccess", hashMap);
        }
    }

    @Override // com.changdu.component.pay.base.CDPay.OnPayModuleListener
    public void googlePlayPurchaseSuccess(String str, boolean z, String str2, String str3, String str4, String str5, String str6, long j, String str7) {
        Activity activity;
        try {
            final HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("isSubscribe", Boolean.valueOf(z)), TuplesKt.to("price", str2), TuplesKt.to(AppLovinEventParameters.PRODUCT_IDENTIFIER, str3), TuplesKt.to("googleOrderId", ""), TuplesKt.to("receiptOriginalJson", str4), TuplesKt.to("receiptSignature", str5), TuplesKt.to("purchaseToken", str6), TuplesKt.to("purchaseTime", Long.valueOf(j)), TuplesKt.to("callbackPayInfo", str7));
            activity = this.f5853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                final PayManagerPlugin payManagerPlugin = this.f5853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activity.runOnUiThread(new Runnable() { // from class: com.example.pay_manager_android.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayManagerPlugin$init$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PayManagerPlugin.this, hashMapOf);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.changdu.component.pay.base.CDPay.OnPayModuleListener
    public void onReceiveReportMessage(PayReportMessage payReportMessage) {
        this.f5853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(payReportMessage);
    }
}
