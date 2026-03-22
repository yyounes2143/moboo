package com.changdu.component.pay.base;

import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayRequestItem;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$requestThirdPayUrl$1", f = "CDPay.kt", i = {}, l = {1271}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$requestThirdPayUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $channelExtInfo;
    final /* synthetic */ String $currencyCode;
    final /* synthetic */ Long $currencyOrderMoney;
    final /* synthetic */ CDPay.OnThirdPayUrlListener $listener;
    final /* synthetic */ PayRequestItem $payRequestItem;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDPay$requestThirdPayUrl$1(String str, CDPay.OnThirdPayUrlListener onThirdPayUrlListener, PayRequestItem payRequestItem, String str2, Long l, Continuation<? super CDPay$requestThirdPayUrl$1> continuation) {
        super(2, continuation);
        this.$channelExtInfo = str;
        this.$listener = onThirdPayUrlListener;
        this.$payRequestItem = payRequestItem;
        this.$currencyCode = str2;
        this.$currencyOrderMoney = l;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$requestThirdPayUrl$1(this.$channelExtInfo, this.$listener, this.$payRequestItem, this.$currencyCode, this.$currencyOrderMoney, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object createOrder;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    createOrder = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                int optInt = new JSONObject(this.$channelExtInfo).optInt("PayChanelId", -1);
                if (optInt < 0) {
                    this.$listener.onFail("payChannelId < 0");
                    return Unit.INSTANCE;
                }
                String str = CDComponent.context.getPackageName() + "|" + this.$payRequestItem.getItemId();
                HashMap<String, Object> hashMap = new HashMap<>();
                String str2 = this.$channelExtInfo;
                String str3 = this.$currencyCode;
                Long l = this.$currencyOrderMoney;
                hashMap.put("ChannelExtInfo", str2);
                if (str3 != null) {
                    hashMap.put("CurrencyCode", str3);
                }
                if (l != null) {
                    hashMap.put("CurrencyOrderMoney", Boxing.boxDouble(CDPay.access$getPriceDoubleDollar(CDPay.INSTANCE, l.longValue())));
                }
                CDPay cDPay = CDPay.INSTANCE;
                int payConfigId = this.$payRequestItem.getPayConfigId();
                String itemId = this.$payRequestItem.getItemId();
                String shopItemId = this.$payRequestItem.getShopItemId();
                String orderPrice = this.$payRequestItem.getOrderPrice();
                String couponId = this.$payRequestItem.getCouponId();
                String paySource = this.$payRequestItem.getPaySource();
                String payCustomData = this.$payRequestItem.getPayCustomData();
                this.label = 1;
                createOrder = cDPay.createOrder(optInt, optInt, payConfigId, itemId, shopItemId, orderPrice, couponId, paySource, payCustomData, str, hashMap, this);
                if (createOrder == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            PayCreateOrderResult payCreateOrderResult = (PayCreateOrderResult) createOrder;
            if (payCreateOrderResult != null && payCreateOrderResult.isSuccess()) {
                this.$listener.onSuccess(payCreateOrderResult.getJumpUrl(), payCreateOrderResult.getParameter());
            } else {
                this.$listener.onFail("create Order fail: " + payCreateOrderResult);
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.$listener.onFail("exception: " + e);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CDPay$requestThirdPayUrl$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
