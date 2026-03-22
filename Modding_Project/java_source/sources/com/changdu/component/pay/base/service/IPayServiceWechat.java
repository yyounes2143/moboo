package com.changdu.component.pay.base.service;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/changdu/component/pay/base/service/IPayServiceWechat;", "Lcom/changdu/component/pay/base/service/IPayService;", "handleResultCallback", "", "errorCode", "", "errorMsg", "", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface IPayServiceWechat extends IPayService {
    void handleResultCallback(int i, @Nullable String str);
}
