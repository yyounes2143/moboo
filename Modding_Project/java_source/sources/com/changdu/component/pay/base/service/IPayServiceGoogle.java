package com.changdu.component.pay.base.service;

import com.changdu.component.pay.base.model.PayReportMessage;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u001a\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H&J\b\u0010\u000f\u001a\u00020\u0003H&J@\u0010\u0010\u001a\u00020\u00032\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0012j\b\u0012\u0004\u0012\u00020\u0005`\u00132\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0012j\b\u0012\u0004\u0012\u00020\u0005`\u00132\u0006\u0010\u0015\u001a\u00020\u0016H&¨\u0006\u0017"}, d2 = {"Lcom/changdu/component/pay/base/service/IPayServiceGoogle;", "Lcom/changdu/component/pay/base/service/IPayService;", "checkPayStatus", "", "getCountryCode", "", "handleCallbackCancel", "handleCallbackFailed", "errorCode", "", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "handleCallbackSuccess", "cdOrderId", "playOrderId", "init", "requestPurchaseMonetization", "inappItemIdList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "subsItemIdList", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface IPayServiceGoogle extends IPayService {
    void checkPayStatus();

    @NotNull
    String getCountryCode();

    void handleCallbackCancel();

    void handleCallbackFailed(int i, @Nullable PayReportMessage payReportMessage);

    void handleCallbackSuccess(@NotNull String str, @NotNull String str2);

    void init();

    void requestPurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener);
}
