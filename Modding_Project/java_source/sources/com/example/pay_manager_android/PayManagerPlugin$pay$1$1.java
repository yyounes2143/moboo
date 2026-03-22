package com.example.pay_manager_android;

import android.app.Activity;
import com.changdu.component.pay.base.IPayCallback;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¨\u0006\r"}, d2 = {"com/example/pay_manager_android/PayManagerPlugin$pay$1$1", "Lcom/changdu/component/pay/base/IPayCallback;", "cancel", "", "failed", "errorCode", "", "detailMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", FirebaseAnalytics.Param.SUCCESS, "cdOrderId", "", "thirdOrderId", "remove_manager_update_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayManagerPlugin$pay$1$1 implements IPayCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ MethodChannel.Result f5854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ PayManagerPlugin f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PayManagerPlugin$pay$1$1(PayManagerPlugin payManagerPlugin, MethodChannel.Result result) {
        this.f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = payManagerPlugin;
        this.f5854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = result;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, HashMap hashMap) {
        try {
            result.success(hashMap);
        } catch (Throwable unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, HashMap hashMap) {
        try {
            result.success(hashMap);
        } catch (Throwable unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, HashMap hashMap) {
        try {
            result.success(hashMap);
        } catch (Throwable unused) {
        }
    }

    @Override // com.changdu.component.pay.base.IPayCallback
    public void cancel() {
        Activity activity;
        try {
            final HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("resultCode", 0));
            activity = this.f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                final MethodChannel.Result result = this.f5854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activity.runOnUiThread(new Runnable() { // from class: com.example.pay_manager_android.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayManagerPlugin$pay$1$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, hashMapOf);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.changdu.component.pay.base.IPayCallback
    public void failed(int i, PayReportMessage payReportMessage) {
        int i2;
        Activity activity;
        switch (i) {
            case 1002:
            case 1003:
            case 1004:
                i2 = 2;
                break;
            default:
                i2 = -1;
                break;
        }
        try {
            final HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("resultCode", Integer.valueOf(i2)), TuplesKt.to("errorCode", Integer.valueOf(i)));
            activity = this.f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                final MethodChannel.Result result = this.f5854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activity.runOnUiThread(new Runnable() { // from class: com.example.pay_manager_android.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayManagerPlugin$pay$1$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, hashMapOf);
                    }
                });
            }
            if (payReportMessage != null) {
                this.f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(payReportMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.changdu.component.pay.base.IPayCallback
    public void success(String str, String str2) {
        Activity activity;
        try {
            final HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("resultCode", 1), TuplesKt.to("cdOrderId", str), TuplesKt.to("orderId", str2));
            activity = this.f5855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                final MethodChannel.Result result = this.f5854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activity.runOnUiThread(new Runnable() { // from class: com.example.pay_manager_android.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayManagerPlugin$pay$1$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, hashMapOf);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
