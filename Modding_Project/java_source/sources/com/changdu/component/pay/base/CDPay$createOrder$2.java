package com.changdu.component.pay.base;

import android.util.Log;
import com.changdu.component.core.CDComponent;
import com.changdu.component.http.HttpRequest;
import com.changdu.component.httpbiz.CDHttpRequest;
import com.changdu.component.pay.base.internal.PayApiService;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayHttpRespData;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.router.biz.ISensorsDataModuleService;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$createOrder$2", f = "CDPay.kt", i = {}, l = {1156}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nCDPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDPay.kt\ncom/changdu/component/pay/base/CDPay$createOrder$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1309:1\n215#2,2:1310\n*S KotlinDebug\n*F\n+ 1 CDPay.kt\ncom/changdu/component/pay/base/CDPay$createOrder$2\n*L\n1056#1:1310,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CDPay$createOrder$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PayCreateOrderResult>, Object> {
    final /* synthetic */ String $couponId;
    final /* synthetic */ String $customData;
    final /* synthetic */ HashMap<String, Object> $extraBizParamMap;
    final /* synthetic */ String $extraInfo;
    final /* synthetic */ String $itemId;
    final /* synthetic */ String $orderPrice;
    final /* synthetic */ int $payConfigId;
    final /* synthetic */ int $payId;
    final /* synthetic */ String $paySource;
    final /* synthetic */ int $payType;
    final /* synthetic */ String $shopItemId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDPay$createOrder$2(int i, int i2, int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, HashMap<String, Object> hashMap, Continuation<? super CDPay$createOrder$2> continuation) {
        super(2, continuation);
        this.$payType = i;
        this.$payId = i2;
        this.$payConfigId = i3;
        this.$itemId = str;
        this.$shopItemId = str2;
        this.$orderPrice = str3;
        this.$couponId = str4;
        this.$extraInfo = str5;
        this.$paySource = str6;
        this.$customData = str7;
        this.$extraBizParamMap = hashMap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$createOrder$2(this.$payType, this.$payId, this.$payConfigId, this.$itemId, this.$shopItemId, this.$orderPrice, this.$couponId, this.$extraInfo, this.$paySource, this.$customData, this.$extraBizParamMap, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        int i;
        long j;
        long j2;
        long j3;
        String str;
        String str2;
        long j4;
        long j5;
        String str3;
        int i2;
        Object createOrder;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.label;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(obj);
                HashMap hashMap = new HashMap();
                int i4 = this.$payType;
                int i5 = this.$payId;
                int i6 = this.$payConfigId;
                String str4 = this.$itemId;
                String str5 = this.$shopItemId;
                String str6 = this.$orderPrice;
                String str7 = this.$couponId;
                String str8 = this.$extraInfo;
                String str9 = this.$paySource;
                String str10 = this.$customData;
                HashMap<String, Object> hashMap2 = this.$extraBizParamMap;
                hashMap.put("PayType", Boxing.boxInt(i4));
                hashMap.put("PayId", Boxing.boxInt(i5));
                hashMap.put("PayConfigId", Boxing.boxInt(i6));
                hashMap.put("ItemId", str4);
                hashMap.put("ShopItemId", str5);
                hashMap.put("OrderMoney", (str6 == null || StringsKt.isBlank(str6)) ? "0" : "0");
                hashMap.put("CouponId", str7);
                hashMap.put("ExtInfo", str8);
                hashMap.put("PackageId", str9);
                hashMap.put("UniqueGuid", CDComponent.getInstance().getGuid());
                hashMap.put("AndroidIdForDeviceGUID", CDComponent.getInstance().getAndroidId());
                hashMap.put("CustomData", str10);
                if (hashMap2 != null && hashMap2.size() > 0) {
                    for (Map.Entry<String, Object> entry : hashMap2.entrySet()) {
                        Result.Companion companion = Result.Companion;
                        Result.m438constructorimpl(hashMap.put(entry.getKey(), entry.getValue()));
                    }
                }
                i = CDPay.b;
                hashMap.put("Core", Boxing.boxInt(i));
                hashMap.put("SessionID", "");
                hashMap.put("UserID", CDComponent.getInstance().getUserId());
                hashMap.put("UserName", CDComponent.getInstance().getUserAccountName());
                j = CDPay.g;
                hashMap.put("MerchandiseID", Boxing.boxLong(j));
                CDPay cDPay = CDPay.INSTANCE;
                hashMap.put("MerchandiseName", cDPay.getMMerchandiseName$pay_base_release());
                hashMap.put("CooperatorOrderSerial", UUID.randomUUID().toString());
                hashMap.put("CardNumber", "");
                hashMap.put("CardPassword", "");
                hashMap.put("PhoneNumber", "");
                hashMap.put("BankCode", Boxing.boxInt(0));
                hashMap.put("CheckPayPassword", Boxing.boxInt(0));
                hashMap.put("PayPassword", "");
                hashMap.put("ReturnUrl", "");
                hashMap.put("NotifyUrl", "");
                hashMap.put("IPAddress", Boxing.boxInt(19216801));
                hashMap.put("Remark", "");
                PayUtil payUtil = PayUtil.INSTANCE;
                String jsonStr = payUtil.toJsonStr(hashMap);
                HashMap hashMap3 = new HashMap();
                hashMap3.put("ScreenWidth", Boxing.boxInt(com.changdu.component.pay.base.internal.a.b(CDComponent.context)));
                hashMap3.put("ScreenHeight", Boxing.boxInt(com.changdu.component.pay.base.internal.a.a(CDComponent.context)));
                hashMap3.put("IMEI", "");
                hashMap3.put("LocalLanguage", com.changdu.component.pay.base.internal.a.a());
                hashMap3.put("PhoneModel", StringsKt.replace$default(com.changdu.component.pay.base.internal.a.b(), " ", "", false, 4, (Object) null));
                hashMap3.put("SDKVersion", com.changdu.component.pay.base.internal.a.d());
                hashMap3.put("ReleaseVersion", com.changdu.component.pay.base.internal.a.c());
                hashMap3.put("ServerId", Boxing.boxInt(0));
                String jsonStr2 = payUtil.toJsonStr(hashMap3);
                StringBuilder sb = new StringBuilder();
                sb.append(120006);
                sb.append(cDPay.getMerchantId());
                j2 = CDPay.e;
                sb.append(j2);
                j3 = CDPay.f;
                sb.append(j3);
                sb.append(4);
                sb.append(1);
                sb.append(1);
                sb.append(1);
                sb.append(0);
                sb.append(0);
                str = CDPay.f5338a;
                sb.append(str);
                sb.append(PayUtil.base64EncodeToString$default(payUtil, jsonStr, null, 2, null));
                sb.append(PayUtil.base64EncodeToString$default(payUtil, jsonStr2, null, 2, null));
                str2 = CDPay.l;
                sb.append(str2);
                String b = com.changdu.component.pay.base.internal.a.b(sb.toString());
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("ActionID", "120006");
                linkedHashMap.put("MerchantID", String.valueOf(cDPay.getMerchantId()));
                j4 = CDPay.e;
                linkedHashMap.put("AppID", String.valueOf(j4));
                j5 = CDPay.f;
                linkedHashMap.put("Ver", String.valueOf(j5));
                linkedHashMap.put("OsType", "4");
                linkedHashMap.put("Format", "1");
                linkedHashMap.put("ReturnFormat", "1");
                linkedHashMap.put("SignType", "1");
                linkedHashMap.put("HasCompress", "0");
                linkedHashMap.put("IPAddress", "0");
                str3 = CDPay.f5338a;
                linkedHashMap.put("SessionID", str3);
                linkedHashMap.put("Sign", b);
                linkedHashMap.put("Content", CDPay.access$replaceMd5Data(cDPay, PayUtil.base64EncodeToString$default(payUtil, jsonStr, null, 2, null)));
                linkedHashMap.put("DeviceInfo", CDPay.access$replaceMd5Data(cDPay, PayUtil.base64EncodeToString$default(payUtil, jsonStr2, null, 2, null)));
                linkedHashMap.put("showjson", "1");
                String access$getPayCommonRequestUrl = CDPay.access$getPayCommonRequestUrl(cDPay);
                i2 = 1;
                this.label = 1;
                createOrder = ((PayApiService) HttpRequest.getApiService$default(CDHttpRequest.INSTANCE, PayApiService.class, false, 2, null)).createOrder(access$getPayCommonRequestUrl, linkedHashMap, this);
                if (createOrder == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                createOrder = obj;
                i2 = 1;
            }
            PayHttpRespData payHttpRespData = (PayHttpRespData) createOrder;
            if (payHttpRespData.getStatusCode() == i2) {
                return (PayCreateOrderResult) new Gson().fromJson(payHttpRespData.getResponseObject(), (Class<Object>) PayCreateOrderResult.class);
            }
            HashMap hashMap4 = new HashMap();
            hashMap4.put(ISensorsDataModuleService.APP_CLIENT_BIZ_PARAM_ERROR_CODE, Boxing.boxInt(payHttpRespData.getStatusCode()));
            return new PayCreateOrderResult(null, null, 0L, 0, null, null, new PayReportMessage(null, null, "接口返回失败：" + payHttpRespData, null, null, hashMap4, 27, null), payHttpRespData.toString(), 63, null);
        } catch (Exception e) {
            e.printStackTrace();
            return new PayCreateOrderResult(null, null, 0L, 0, null, null, new PayReportMessage(null, null, "请求创建订单发生异常：payType: " + this.$payType + "\npayId: " + this.$payId + "\npayConfigId: " + this.$payConfigId + "\nitemId: " + this.$itemId + "\nshopItemId: " + this.$shopItemId + "\norderPrice: " + this.$orderPrice + "\ncouponId: " + this.$couponId + "\nextraInfo: " + this.$extraInfo, null, Log.getStackTraceString(e), null, 43, null), null, 191, null);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super PayCreateOrderResult> continuation) {
        return ((CDPay$createOrder$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
