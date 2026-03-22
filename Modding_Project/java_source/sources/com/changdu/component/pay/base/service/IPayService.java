package com.changdu.component.pay.base.service;

import android.app.Activity;
import com.changdu.component.pay.base.IPayCallback;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayRequestItem;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&¨\u0006\f"}, d2 = {"Lcom/changdu/component/pay/base/service/IPayService;", "", "pay", "", "activity", "Landroid/app/Activity;", "payRequestItem", "Lcom/changdu/component/pay/base/model/PayRequestItem;", "payCreateOrderResult", "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;", "payCallback", "Lcom/changdu/component/pay/base/IPayCallback;", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface IPayService {
    void pay(@NotNull Activity activity, @NotNull PayRequestItem payRequestItem, @NotNull PayCreateOrderResult payCreateOrderResult, @Nullable IPayCallback iPayCallback);
}
