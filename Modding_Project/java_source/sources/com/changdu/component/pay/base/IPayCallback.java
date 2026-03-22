package com.changdu.component.pay.base;

import com.changdu.component.pay.base.model.PayReportMessage;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Lcom/changdu/component/pay/base/IPayCallback;", "", "cancel", "", "failed", "errorCode", "", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", FirebaseAnalytics.Param.SUCCESS, "cdOrderId", "", "thirdOrderId", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface IPayCallback {
    void cancel();

    void failed(int i, @Nullable PayReportMessage payReportMessage);

    void success(@NotNull String str, @NotNull String str2);
}
