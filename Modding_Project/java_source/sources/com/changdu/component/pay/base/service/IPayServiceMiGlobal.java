package com.changdu.component.pay.base.service;

import android.app.Activity;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u001a\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H&J@\u0010\u0013\u001a\u00020\u00032\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0015j\b\u0012\u0004\u0012\u00020\f`\u00162\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\f0\u0015j\b\u0012\u0004\u0012\u00020\f`\u00162\u0006\u0010\u0018\u001a\u00020\u0019H&¨\u0006\u001a"}, d2 = {"Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;", "Lcom/changdu/component/pay/base/service/IPayService;", "checkPayStatus", "", "handleCallbackCancel", "handleCallbackFailed", "errorCode", "", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "handleCallbackSuccess", "cdOrderId", "", "miGlobalOrderId", "init", "openSubscribeManager", "activity", "Landroid/app/Activity;", "requestCode", "requestPurchaseMonetization", "inappItemIdList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "subsItemIdList", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface IPayServiceMiGlobal extends IPayService {
    void checkPayStatus();

    void handleCallbackCancel();

    void handleCallbackFailed(int i, @Nullable PayReportMessage payReportMessage);

    void handleCallbackSuccess(@NotNull String str, @NotNull String str2);

    void init();

    void openSubscribeManager(@NotNull Activity activity, int i);

    void requestPurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener);
}
