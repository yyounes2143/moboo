package com.changdu.component.pay.base;

import android.app.Activity;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.applovin.sdk.AppLovinEventParameters;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.component.core.CDComponent;
import com.changdu.component.pay.base.internal.ALocalCache;
import com.changdu.component.pay.base.model.CDComponentPayConfigs;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import com.changdu.component.pay.base.model.PayServerConfigCategory;
import com.changdu.component.pay.base.model.PayServerConfigChannel;
import com.changdu.component.pay.base.model.PayServerConfigMerchandise;
import com.changdu.component.pay.base.service.IPayServiceAlipay;
import com.changdu.component.pay.base.service.IPayServiceGoogle;
import com.changdu.component.pay.base.service.IPayServiceHuawei;
import com.changdu.component.pay.base.service.IPayServiceMiGlobal;
import com.changdu.component.pay.base.service.IPayServiceWechat;
import com.changdu.component.pay.base.service.OnPurchaseMonetizationListener;
import com.changdu.component.router.CDRouter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b4\bÆ\u0002\u0018\u00002\u00020\u0001:\u0006¥\u0001¦\u0001§\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0015\u0010%\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b%\u0010 J\r\u0010&\u001a\u00020\u001d¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b(\u0010)J/\u00100\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,2\b\u0010/\u001a\u0004\u0018\u00010.¢\u0006\u0004\b0\u00101J\r\u00102\u001a\u00020\u000b¢\u0006\u0004\b2\u00103JE\u0010:\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208¢\u0006\u0004\b:\u0010;JE\u0010<\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208¢\u0006\u0004\b<\u0010;JE\u0010=\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\b\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208¢\u0006\u0004\b=\u0010;JU\u0010G\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020\u001d¢\u0006\u0004\bG\u0010HJ\u0015\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020I¢\u0006\u0004\bK\u0010LJ\r\u0010M\u001a\u00020\u001d¢\u0006\u0004\bM\u0010'J\u001d\u0010O\u001a\u0012\u0012\u0004\u0012\u00020N04j\b\u0012\u0004\u0012\u00020N`5¢\u0006\u0004\bO\u0010PJ\r\u0010Q\u001a\u00020\u0004¢\u0006\u0004\bQ\u0010RJ\u0017\u0010U\u001a\u0004\u0018\u00010T2\u0006\u0010S\u001a\u00020\u0002¢\u0006\u0004\bU\u0010VJ\u001f\u0010Z\u001a\u0004\u0018\u00010Y2\u0006\u0010W\u001a\u00020\u00022\u0006\u0010X\u001a\u00020\u0002¢\u0006\u0004\bZ\u0010[J\u008a\u0001\u0010i\u001a\u0004\u0018\u00010h2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\u00022\u0006\u0010^\u001a\u00020\u001d2\u0006\u0010_\u001a\u00020\u001d2\u0006\u0010`\u001a\u00020\u001d2\u0006\u0010a\u001a\u00020\u001d2\u0006\u0010b\u001a\u00020\u001d2\u0006\u0010c\u001a\u00020\u001d2\u0006\u0010d\u001a\u00020\u001d2&\u0010g\u001a\"\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u00010ej\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u0001`fH\u0086@¢\u0006\u0004\bi\u0010jJ\u0015\u0010k\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*¢\u0006\u0004\bk\u0010lJ\u001f\u0010n\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\b\b\u0002\u0010m\u001a\u00020\u0002¢\u0006\u0004\bn\u0010oJ\r\u0010p\u001a\u00020\u001d¢\u0006\u0004\bp\u0010'J9\u0010u\u001a\u00020\u000b2\u0006\u0010q\u001a\u00020\u001d2\b\u0010r\u001a\u0004\u0018\u00010\u001d2\b\u0010s\u001a\u0004\u0018\u00010!2\u0006\u0010-\u001a\u00020,2\u0006\u00109\u001a\u00020t¢\u0006\u0004\bu\u0010vR\u0014\u0010w\u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\bw\u0010xR\u0014\u0010y\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\by\u0010zR\u0014\u0010{\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b{\u0010zR\u0014\u0010|\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b|\u0010zR\u0014\u0010}\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b}\u0010zR\u0014\u0010~\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b~\u0010zR\u0014\u0010\u007f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u007f\u0010zR\u0016\u0010\u0080\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010zR\u0016\u0010\u0081\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010zR\u0016\u0010\u0082\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010zR\u0016\u0010\u0083\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010zR\u0016\u0010\u0084\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010zR\u0016\u0010\u0085\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010zR\u0016\u0010\u0086\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010zR\u0016\u0010\u0087\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010zR\u0016\u0010\u0088\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010zR\u0016\u0010\u0089\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010zR\u0016\u0010\u008a\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010zR&\u0010\u008e\u0001\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0005\b\u008b\u0001\u0010x\u001a\u0005\b\u008c\u0001\u0010'\"\u0005\b\u008d\u0001\u0010 R(\u0010\u0094\u0001\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0005\b\u0093\u0001\u0010$R&\u0010\u0098\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0095\u0001\u0010x\u001a\u0005\b\u0096\u0001\u0010'\"\u0005\b\u0097\u0001\u0010 R&\u0010\u009c\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0099\u0001\u0010x\u001a\u0005\b\u009a\u0001\u0010'\"\u0005\b\u009b\u0001\u0010 R&\u0010 \u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009d\u0001\u0010x\u001a\u0005\b\u009e\u0001\u0010'\"\u0005\b\u009f\u0001\u0010 R&\u0010¤\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010x\u001a\u0005\b¢\u0001\u0010'\"\u0005\b£\u0001\u0010 ¨\u0006¨\u0001"}, d2 = {"Lcom/changdu/component/pay/base/CDPay;", "", "", "payServerCode", "", "isNativePay", "(I)Z", "Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;", "cdComponentPayConfig", "Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;", "onPayModuleListener", "", "init", "(Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;)V", "Lcom/changdu/component/pay/base/service/IPayServiceGoogle;", "getGooglePayService", "()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;", "Lcom/changdu/component/pay/base/service/IPayServiceHuawei;", "getHuaweiPayService", "()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;", "Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;", "getMiGlobalPayService", "()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;", "Lcom/changdu/component/pay/base/service/IPayServiceWechat;", "getWechatPayService", "()Lcom/changdu/component/pay/base/service/IPayServiceWechat;", "Lcom/changdu/component/pay/base/service/IPayServiceAlipay;", "getAlipayPayService", "()Lcom/changdu/component/pay/base/service/IPayServiceAlipay;", "", "url", "setPayBaseUrl", "(Ljava/lang/String;)V", "", "rechargeItemConfigVersion", "setRechargeItemConfigVersion", "(J)V", "setPurchaseHistoryCallbackUrl", "getPurchaseHistoryCallbackUrl", "()Ljava/lang/String;", "requestPayConfig", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/app/Activity;", "activity", "Lcom/changdu/component/pay/base/model/PayRequestItem;", "payRequestItem", "Lcom/changdu/component/pay/base/IPayCallback;", "payCallback", "pay", "(Landroid/app/Activity;ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;)V", "checkPayStatus", "()V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "inappItemIdList", "subsItemIdList", "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "requestGooglePurchaseMonetization", "(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V", "requestHuaweiPurchaseMonetization", "requestMiGlobalPurchaseMonetization", "cdOrderId", "isSubscribe", "price", AppLovinEventParameters.PRODUCT_IDENTIFIER, "receiptOriginalJson", "receiptSignature", "purchaseToken", "purchaseTime", "callbackPayInfo", "notifyGooglePlayPurchaseSuccess", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "payReportMessage", "notifyReceiveReportMessage", "(Lcom/changdu/component/pay/base/model/PayReportMessage;)V", "getCachedBase64PayConfigContent", "Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;", "getMerchandiseList", "()Ljava/util/ArrayList;", "isPayConfigPrepared", "()Z", "code", "Lcom/changdu/component/pay/base/model/PayServerConfigCategory;", "getPayCategoryByCode", "(I)Lcom/changdu/component/pay/base/model/PayServerConfigCategory;", "payCode", "payType", "Lcom/changdu/component/pay/base/model/PayServerConfigChannel;", "getPayChannelItemByPayCodeType", "(II)Lcom/changdu/component/pay/base/model/PayServerConfigChannel;", "payId", "payConfigId", "itemId", "shopItemId", "orderPrice", "couponId", "paySource", "customData", "extraInfo", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "extraBizParamMap", "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;", "createOrder", "(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openHuaweiSubscribeManager", "(Landroid/app/Activity;)V", "requestCode", "openMiGlobalSubscribeManager", "(Landroid/app/Activity;I)V", "getGooglePlayCountryCode", "channelExtInfo", AppsFlyerProperties.CURRENCY_CODE, "currencyOrderMoney", "Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;", "requestThirdPayUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;)V", "TAG", "Ljava/lang/String;", "ERROR_CODE_COMMON", "I", "ERROR_CODE_NOT_INSTALLED", "ERROR_CODE_ILLEGAL_ARGUMENT", "ERROR_CODE_NO_SERVER_CONFIG", "ERROR_CODE_CREATE_ORDER_FAILED", "ERROR_CODE_NOT_SUPPORT_PAY_TYPE", "ERROR_CODE_PRODUCT_NOT_EXIST", "ERROR_CODE_IS_IN_PROCESSING_PURCHASE", "ERROR_CODE_LAUNCH_FAILED", "ERROR_CODE_NO_PAY_MODULE", "ERROR_CODE_RETURN_VALUE_NULL", "ERROR_CODE_SDK_LOGIN_FAILED", "ERROR_CODE_SIGNATURE_FAILED", "ERROR_CODE_CONSUME_FAILED", "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_ALIPAY", "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_WECHAT", "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_GOOGLE", "h", "getMMerchandiseName$pay_base_release", "setMMerchandiseName$pay_base_release", "mMerchandiseName", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "J", "getMerchantId", "()J", "setMerchantId", "merchantId", j.b, "getHuaweiPayPublicKey", "setHuaweiPayPublicKey", "huaweiPayPublicKey", "p", "getPlayPurchaseCallbackUrl", "setPlayPurchaseCallbackUrl", "playPurchaseCallbackUrl", CampaignEx.JSON_KEY_AD_Q, "getHuaweiPurchaseCallbackUrl", "setHuaweiPurchaseCallbackUrl", "huaweiPurchaseCallbackUrl", "r", "getMiGlobalPurchaseCallbackUrl", "setMiGlobalPurchaseCallbackUrl", "miGlobalPurchaseCallbackUrl", "OnPayModuleListener", "OnThirdPayUrlListener", "PayServerCode", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDPay {
    public static final int ERROR_CODE_COMMON = 1000;
    public static final int ERROR_CODE_CONSUME_FAILED = 1013;
    public static final int ERROR_CODE_CREATE_ORDER_FAILED = 1004;
    public static final int ERROR_CODE_ILLEGAL_ARGUMENT = 1002;
    public static final int ERROR_CODE_IS_IN_PROCESSING_PURCHASE = 1007;
    public static final int ERROR_CODE_LAUNCH_FAILED = 1008;
    public static final int ERROR_CODE_NOT_INSTALLED = 1001;
    public static final int ERROR_CODE_NOT_SUPPORT_PAY_TYPE = 1005;
    public static final int ERROR_CODE_NO_PAY_MODULE = 1009;
    public static final int ERROR_CODE_NO_SERVER_CONFIG = 1003;
    public static final int ERROR_CODE_PRODUCT_NOT_EXIST = 1006;
    public static final int ERROR_CODE_RETURN_VALUE_NULL = 1010;
    public static final int ERROR_CODE_SDK_LOGIN_FAILED = 1011;
    public static final int ERROR_CODE_SIGNATURE_FAILED = 1012;
    public static final int PAY_CREATE_ORDER_RESULT_EXEC_TYPE_ALIPAY = 2;
    public static final int PAY_CREATE_ORDER_RESULT_EXEC_TYPE_GOOGLE = 12;
    public static final int PAY_CREATE_ORDER_RESULT_EXEC_TYPE_WECHAT = 7;
    @NotNull
    public static final String TAG = "CDPay";
    public static OnPayModuleListener o;
    @NotNull
    public static final CDPay INSTANCE = new CDPay();

    /* renamed from: a  reason: collision with root package name */
    public static final String f5338a = UUID.randomUUID().toString();
    public static int b = 3;
    public static String c = "https://mpay.51changdu.com";
    public static String d = "";
    public static long e = 25001;
    public static long f = 101;
    public static long g = 7777;
    public static String h = "阅币充值";
    public static long i = 1001;
    public static String j = "";
    public static String k = "";
    public static String l = "";
    public static final ArrayList m = new ArrayList();
    public static String n = "";
    public static String p = "";
    public static String q = "";
    public static String r = "";

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&¨\u0006\u0013"}, d2 = {"Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;", "", "googlePlayPurchaseSuccess", "", "cdOrderId", "", "isSubscribe", "", "price", AppLovinEventParameters.PRODUCT_IDENTIFIER, "receiptOriginalJson", "receiptSignature", "purchaseToken", "purchaseTime", "", "callbackPayInfo", "onReceiveReportMessage", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnPayModuleListener {
        void googlePlayPurchaseSuccess(@NotNull String str, boolean z, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, long j, @NotNull String str7);

        void onReceiveReportMessage(@NotNull PayReportMessage payReportMessage);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0005H&¨\u0006\t"}, d2 = {"Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;", "", "onFail", "", "error", "", "onSuccess", "url", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnThirdPayUrlListener {
        void onFail(@Nullable String str);

        void onSuccess(@Nullable String str, @Nullable String str2);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/changdu/component/pay/base/CDPay$PayServerCode;", "", "Companion", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    /* loaded from: classes3.dex */
    public @interface PayServerCode {
        public static final int ALIPAY = 3;
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final int GOOGLE = 12;
        public static final int HUAWEI = 24;
        public static final int MI_GLOBAL = 35;
        public static final int THIRD_H5 = 15;
        public static final int WECHAT = 14;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;", "", "()V", "ALIPAY", "", "GOOGLE", "HUAWEI", "MI_GLOBAL", "THIRD_H5", "WECHAT", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int ALIPAY = 3;
            public static final int GOOGLE = 12;
            public static final int HUAWEI = 24;
            public static final int MI_GLOBAL = 35;
            public static final int THIRD_H5 = 15;
            public static final int WECHAT = 14;

            private Companion() {
            }
        }
    }

    public static String a() {
        String str = c;
        return str + "/paysdk.ashx?";
    }

    public static final Object access$decodePayConfig(CDPay cDPay, String str, Continuation continuation) {
        cDPay.getClass();
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$decodePayConfig$2(str, null), continuation);
    }

    public static final String access$getCachedPayConfigContent(CDPay cDPay) {
        String str;
        cDPay.getClass();
        try {
            ALocalCache aLocalCache = ALocalCache.get(CDComponent.context, "pcc");
            if (aLocalCache != null) {
                str = aLocalCache.getAsString("content");
            } else {
                str = null;
            }
            if (str == null) {
                return "";
            }
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static final Object access$getConfigBase64Content(CDPay cDPay, Continuation continuation) {
        cDPay.getClass();
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$getConfigBase64Content$2(null), continuation);
    }

    public static final /* synthetic */ String access$getPayCommonRequestUrl(CDPay cDPay) {
        cDPay.getClass();
        return a();
    }

    public static final /* synthetic */ String access$getPayConfigUrl(CDPay cDPay) {
        cDPay.getClass();
        return b();
    }

    public static final double access$getPriceDoubleDollar(CDPay cDPay, long j2) {
        cDPay.getClass();
        try {
            return new BigDecimal(j2).divide(new BigDecimal(1000000), 2, RoundingMode.UP).doubleValue();
        } catch (Exception unused) {
            return (j2 * 1.0d) / 1000000;
        }
    }

    public static final Object access$getRandomKey(CDPay cDPay, Continuation continuation) {
        cDPay.getClass();
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$getRandomKey$2(null), continuation);
    }

    public static final Object access$parsePayConfigXml(CDPay cDPay, String str, Continuation continuation) {
        cDPay.getClass();
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$parsePayConfigXml$2(str, null), continuation);
    }

    public static final String access$replaceMd5Data(CDPay cDPay, String str) {
        cDPay.getClass();
        return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(str, "+", "~", false, 4, (Object) null), "/", "@", false, 4, (Object) null), "=", "$", false, 4, (Object) null);
    }

    public static final void access$saveCachedPayConfigContent(CDPay cDPay, String str) {
        cDPay.getClass();
        try {
            ALocalCache aLocalCache = ALocalCache.get(CDComponent.context, "pcc");
            if (aLocalCache != null) {
                aLocalCache.put("content", str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String b() {
        String str = c;
        return str + "/paysdk.ashx?MerchantID=%s&AppID=%s&ParserVer=%s&Ver=%s&SessionID=%s&DynamicAppKey=%s&Sign=%s";
    }

    public static /* synthetic */ void openMiGlobalSubscribeManager$default(CDPay cDPay, Activity activity, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 35;
        }
        cDPay.openMiGlobalSubscribeManager(activity, i2);
    }

    public final void checkPayStatus() {
        try {
            IPayServiceGoogle googlePayService = getGooglePayService();
            if (googlePayService != null) {
                googlePayService.checkPayStatus();
            }
        } catch (Exception unused) {
        }
        try {
            IPayServiceHuawei huaweiPayService = getHuaweiPayService();
            if (huaweiPayService != null) {
                huaweiPayService.checkPayStatus();
            }
        } catch (Exception unused2) {
        }
        try {
            IPayServiceMiGlobal miGlobalPayService = getMiGlobalPayService();
            if (miGlobalPayService != null) {
                miGlobalPayService.checkPayStatus();
            }
        } catch (Exception unused3) {
        }
    }

    @Nullable
    public final Object createOrder(int i2, int i3, int i4, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, @Nullable HashMap<String, Object> hashMap, @NotNull Continuation<? super PayCreateOrderResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$createOrder$2(i2, i3, i4, str, str2, str3, str4, str7, str5, str6, hashMap, null), continuation);
    }

    @Nullable
    public final IPayServiceAlipay getAlipayPayService() {
        return (IPayServiceAlipay) CDRouter.INSTANCE.invokeRouterService(IPayServiceAlipay.class);
    }

    @NotNull
    public final String getCachedBase64PayConfigContent() {
        return n;
    }

    @Nullable
    public final IPayServiceGoogle getGooglePayService() {
        return (IPayServiceGoogle) CDRouter.INSTANCE.invokeRouterService(IPayServiceGoogle.class);
    }

    @NotNull
    public final String getGooglePlayCountryCode() {
        try {
            IPayServiceGoogle googlePayService = getGooglePayService();
            if (googlePayService != null) {
                String countryCode = googlePayService.getCountryCode();
                if (countryCode != null) {
                    return countryCode;
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    @NotNull
    public final String getHuaweiPayPublicKey() {
        return j;
    }

    @Nullable
    public final IPayServiceHuawei getHuaweiPayService() {
        return (IPayServiceHuawei) CDRouter.INSTANCE.invokeRouterService(IPayServiceHuawei.class);
    }

    @NotNull
    public final String getHuaweiPurchaseCallbackUrl() {
        return q;
    }

    @NotNull
    public final String getMMerchandiseName$pay_base_release() {
        return h;
    }

    @NotNull
    public final ArrayList<PayServerConfigMerchandise> getMerchandiseList() {
        return m;
    }

    public final long getMerchantId() {
        return i;
    }

    @Nullable
    public final IPayServiceMiGlobal getMiGlobalPayService() {
        return (IPayServiceMiGlobal) CDRouter.INSTANCE.invokeRouterService(IPayServiceMiGlobal.class);
    }

    @NotNull
    public final String getMiGlobalPurchaseCallbackUrl() {
        return r;
    }

    @Nullable
    public final PayServerConfigCategory getPayCategoryByCode(int i2) {
        ArrayList a2 = a(g);
        int size = a2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = a2.get(i3);
            i3++;
            PayServerConfigCategory payServerConfigCategory = (PayServerConfigCategory) obj;
            if (payServerConfigCategory != null && payServerConfigCategory.getCode() == i2) {
                return payServerConfigCategory;
            }
        }
        return null;
    }

    @Nullable
    public final PayServerConfigChannel getPayChannelItemByPayCodeType(int i2, int i3) {
        ArrayList<PayServerConfigChannel> channelList;
        ArrayList a2 = a(g);
        int size = a2.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = a2.get(i4);
            i4++;
            PayServerConfigCategory payServerConfigCategory = (PayServerConfigCategory) obj;
            if (payServerConfigCategory != null && payServerConfigCategory.getCode() == i2 && (channelList = payServerConfigCategory.getChannelList()) != null && !channelList.isEmpty()) {
                if (i3 == -1) {
                    return payServerConfigCategory.getChannelList().get(0);
                }
                ArrayList<PayServerConfigChannel> channelList2 = payServerConfigCategory.getChannelList();
                int size2 = channelList2.size();
                int i5 = 0;
                while (i5 < size2) {
                    PayServerConfigChannel payServerConfigChannel = channelList2.get(i5);
                    i5++;
                    PayServerConfigChannel payServerConfigChannel2 = payServerConfigChannel;
                    if (payServerConfigChannel2.getPayType() == i3) {
                        return payServerConfigChannel2;
                    }
                }
                continue;
            }
        }
        return null;
    }

    @NotNull
    public final String getPlayPurchaseCallbackUrl() {
        return p;
    }

    @NotNull
    public final String getPurchaseHistoryCallbackUrl() {
        return d;
    }

    @Nullable
    public final IPayServiceWechat getWechatPayService() {
        return (IPayServiceWechat) CDRouter.INSTANCE.invokeRouterService(IPayServiceWechat.class);
    }

    public final void init(@NotNull CDComponentPayConfigs cDComponentPayConfigs, @Nullable OnPayModuleListener onPayModuleListener) {
        b = cDComponentPayConfigs.getCoreCode();
        c = cDComponentPayConfigs.getPayBaseUrl();
        e = cDComponentPayConfigs.getPayAppId();
        f = cDComponentPayConfigs.getPayVersion();
        g = cDComponentPayConfigs.getMerchandiseId();
        h = cDComponentPayConfigs.getMerchandiseName();
        d = cDComponentPayConfigs.getPurchaseHistoryCallbackUrl();
        o = onPayModuleListener;
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getIoLoaderScope(), null, null, new CDPay$initCachedPayConfig$1(null), 3, null);
        try {
            IPayServiceGoogle googlePayService = getGooglePayService();
            if (googlePayService != null) {
                googlePayService.init();
            }
        } catch (Exception unused) {
        }
        try {
            IPayServiceHuawei huaweiPayService = getHuaweiPayService();
            if (huaweiPayService != null) {
                huaweiPayService.init();
            }
        } catch (Exception unused2) {
        }
        try {
            IPayServiceMiGlobal miGlobalPayService = getMiGlobalPayService();
            if (miGlobalPayService != null) {
                miGlobalPayService.init();
            }
        } catch (Exception unused3) {
        }
    }

    public final boolean isNativePay(int i2) {
        if (i2 != 12 && i2 != 24 && i2 != 35 && i2 != 14 && i2 != 3) {
            return false;
        }
        return true;
    }

    public final boolean isPayConfigPrepared() {
        boolean z;
        ArrayList arrayList = m;
        if (arrayList != null && !arrayList.isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        return !z;
    }

    public final void notifyGooglePlayPurchaseSuccess(@NotNull String str, boolean z, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, long j2, @NotNull String str7) {
        Unit unit;
        try {
            Result.Companion companion = Result.Companion;
            OnPayModuleListener onPayModuleListener = o;
            if (onPayModuleListener != null) {
                onPayModuleListener.googlePlayPurchaseSuccess(str, z, str2, str3, str4, str5, str6, j2, str7);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m438constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m438constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void notifyReceiveReportMessage(@NotNull PayReportMessage payReportMessage) {
        Unit unit;
        try {
            Result.Companion companion = Result.Companion;
            OnPayModuleListener onPayModuleListener = o;
            if (onPayModuleListener != null) {
                onPayModuleListener.onReceiveReportMessage(payReportMessage);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m438constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m438constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void openHuaweiSubscribeManager(@NotNull Activity activity) {
        try {
            IPayServiceHuawei huaweiPayService = getHuaweiPayService();
            if (huaweiPayService != null) {
                huaweiPayService.openSubscribeManager(activity);
            }
        } catch (Exception unused) {
        }
    }

    public final void openMiGlobalSubscribeManager(@NotNull Activity activity, int i2) {
        try {
            IPayServiceMiGlobal miGlobalPayService = getMiGlobalPayService();
            if (miGlobalPayService != null) {
                miGlobalPayService.openSubscribeManager(activity, i2);
            }
        } catch (Exception unused) {
        }
    }

    public final void pay(@NotNull Activity activity, int i2, @NotNull PayRequestItem payRequestItem, @Nullable IPayCallback iPayCallback) {
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getMainLoaderScope(), null, null, new CDPay$pay$1(i2, payRequestItem, iPayCallback, activity, null), 3, null);
    }

    public final void requestGooglePurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener) {
        try {
            IPayServiceGoogle googlePayService = getGooglePayService();
            if (googlePayService != null) {
                googlePayService.requestPurchaseMonetization(arrayList, arrayList2, onPurchaseMonetizationListener);
            }
        } catch (Exception unused) {
        }
    }

    public final void requestHuaweiPurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener) {
        try {
            IPayServiceHuawei huaweiPayService = getHuaweiPayService();
            if (huaweiPayService != null) {
                huaweiPayService.requestPurchaseMonetization(arrayList, arrayList2, onPurchaseMonetizationListener);
            }
        } catch (Exception unused) {
        }
    }

    public final void requestMiGlobalPurchaseMonetization(@NotNull ArrayList<String> arrayList, @NotNull ArrayList<String> arrayList2, @NotNull OnPurchaseMonetizationListener onPurchaseMonetizationListener) {
        try {
            IPayServiceMiGlobal miGlobalPayService = getMiGlobalPayService();
            if (miGlobalPayService != null) {
                miGlobalPayService.requestPurchaseMonetization(arrayList, arrayList2, onPurchaseMonetizationListener);
            }
        } catch (Exception unused) {
        }
    }

    @Nullable
    public final Object requestPayConfig(@NotNull Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new CDPay$requestPayConfig$2(null), continuation);
    }

    public final void requestThirdPayUrl(@NotNull String str, @Nullable String str2, @Nullable Long l2, @NotNull PayRequestItem payRequestItem, @NotNull OnThirdPayUrlListener onThirdPayUrlListener) {
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getIoLoaderScope(), null, null, new CDPay$requestThirdPayUrl$1(str, onThirdPayUrlListener, payRequestItem, str2, l2, null), 3, null);
    }

    public final void setHuaweiPayPublicKey(@NotNull String str) {
        j = str;
    }

    public final void setHuaweiPurchaseCallbackUrl(@NotNull String str) {
        q = str;
    }

    public final void setMMerchandiseName$pay_base_release(@NotNull String str) {
        h = str;
    }

    public final void setMerchantId(long j2) {
        i = j2;
    }

    public final void setMiGlobalPurchaseCallbackUrl(@NotNull String str) {
        r = str;
    }

    public final void setPayBaseUrl(@NotNull String str) {
        if (str.length() == 0) {
            return;
        }
        c = str;
    }

    public final void setPlayPurchaseCallbackUrl(@NotNull String str) {
        p = str;
    }

    public final void setPurchaseHistoryCallbackUrl(@NotNull String str) {
        d = str;
    }

    public static ArrayList a(long j2) {
        ArrayList arrayList = m;
        PayServerConfigMerchandise payServerConfigMerchandise = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            int i2 = 0;
            if (g == j2) {
                int size = arrayList.size();
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    Object obj = arrayList.get(i2);
                    i2++;
                    PayServerConfigMerchandise payServerConfigMerchandise2 = (PayServerConfigMerchandise) obj;
                    if (payServerConfigMerchandise2 != null && payServerConfigMerchandise2.getId() == g) {
                        payServerConfigMerchandise = payServerConfigMerchandise2;
                        break;
                    }
                }
            } else {
                int size2 = arrayList.size();
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    PayServerConfigMerchandise payServerConfigMerchandise3 = (PayServerConfigMerchandise) obj2;
                    if (payServerConfigMerchandise3.getId() == j2) {
                        payServerConfigMerchandise = payServerConfigMerchandise3;
                        break;
                    }
                }
            }
        }
        if (payServerConfigMerchandise == null) {
            return new ArrayList();
        }
        return payServerConfigMerchandise.getCategoryList();
    }

    public final void setRechargeItemConfigVersion(long j2) {
    }
}
