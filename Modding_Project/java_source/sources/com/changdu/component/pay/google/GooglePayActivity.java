package com.changdu.component.pay.google;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.PayUtil;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import com.changdu.component.pay.base.service.IPayServiceGoogle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/changdu/component/pay/google/GooglePayActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GooglePayActivity extends AppCompatActivity {
    public static volatile int f;

    /* renamed from: a  reason: collision with root package name */
    public boolean f5349a;
    public final C0244a b = new C0244a(this);
    public x c;
    public PayRequestItem d;
    public PayCreateOrderResult e;

    public static final void c(GooglePayActivity googlePayActivity) {
        IPayServiceGoogle googlePayService = CDPay.INSTANCE.getGooglePayService();
        if (googlePayService != null) {
            googlePayService.handleCallbackCancel();
        }
        super.finish();
    }

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String parameter;
        String jumpUrl;
        f++;
        getWindow().setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        super.onCreate(bundle);
        if (f > 1) {
            a(1007, new PayReportMessage(null, "还有支付正在处理中，此次支付请求失败，直接关闭activity", null, null, null, null, 61, null));
        } else if (getIntent() == null) {
            a(1002, new PayReportMessage(null, "启动Google支持页时无有效的intent", null, null, null, null, 61, null));
        } else {
            String stringExtra = getIntent().getStringExtra("payRequestItem");
            String str = "";
            if (stringExtra == null) {
                stringExtra = "";
            }
            String stringExtra2 = getIntent().getStringExtra("payCreateOrderResult");
            if (stringExtra2 != null) {
                str = stringExtra2;
            }
            if (!StringsKt.isBlank(stringExtra) && !StringsKt.isBlank(str)) {
                PayUtil payUtil = PayUtil.INSTANCE;
                PayRequestItem payRequestItem = (PayRequestItem) payUtil.fromJsonStr(stringExtra, PayRequestItem.class);
                PayCreateOrderResult payCreateOrderResult = (PayCreateOrderResult) payUtil.fromJsonStr(str, PayCreateOrderResult.class);
                if (payRequestItem != null && payCreateOrderResult != null) {
                    this.d = payRequestItem;
                    this.e = payCreateOrderResult;
                    String itemId = payRequestItem.getItemId();
                    if (itemId != null && itemId.length() != 0 && (parameter = payCreateOrderResult.getParameter()) != null && parameter.length() != 0 && (jumpUrl = payCreateOrderResult.getJumpUrl()) != null && jumpUrl.length() != 0) {
                        x a2 = x.f.a(getApplicationContext());
                        this.c = a2;
                        a2.a(this.b, String.valueOf(hashCode()));
                        return;
                    }
                    a(1002, new PayReportMessage(null, "GooglePlay 支付失败，请求参数业务错误", "payRequestItem: " + stringExtra + "\npayCreateOrderResult: " + str, null, null, null, 57, null));
                    return;
                }
                a(1002, new PayReportMessage(null, "GooglePlay 支付失败，请求参数转换为json错误", "payRequestItem: " + stringExtra + "\npayCreateOrderResult: " + str, null, null, null, 57, null));
                return;
            }
            a(1002, new PayReportMessage(null, "GooglePlay 支付失败，请求参数入口错误", "payRequestItem: " + stringExtra + "\npayCreateOrderResult: " + str, null, null, null, 57, null));
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        f--;
        if (f < 0) {
            f = 0;
        }
        x xVar = this.c;
        if (xVar != null && Intrinsics.areEqual(String.valueOf(hashCode()), xVar.b)) {
            xVar.c = null;
            xVar.b = "";
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        overridePendingTransition(0, 0);
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    public static final void a(GooglePayActivity googlePayActivity, String str, String str2) {
        IPayServiceGoogle googlePayService = CDPay.INSTANCE.getGooglePayService();
        if (googlePayService != null) {
            googlePayService.handleCallbackSuccess(str, str2);
        }
        super.finish();
    }

    public final void a(int i, PayReportMessage payReportMessage) {
        IPayServiceGoogle googlePayService = CDPay.INSTANCE.getGooglePayService();
        if (googlePayService != null) {
            googlePayService.handleCallbackFailed(i, payReportMessage);
        }
        super.finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
    }
}
