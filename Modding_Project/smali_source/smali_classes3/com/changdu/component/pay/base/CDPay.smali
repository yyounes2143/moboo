.class public final Lcom/changdu/component/pay/base/CDPay;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;,
        Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;,
        Lcom/changdu/component/pay/base/CDPay$PayServerCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u00084\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0006\u00a5\u0001\u00a6\u0001\u00a7\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010%\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008%\u0010 J\r\u0010&\u001a\u00020\u001d\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010(\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0004\u0008(\u0010)J/\u00100\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,2\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00080\u00101J\r\u00102\u001a\u00020\u000b\u00a2\u0006\u0004\u00082\u00103JE\u0010:\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008:\u0010;JE\u0010<\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008<\u0010;JE\u0010=\u001a\u00020\u000b2\u0016\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001d04j\u0008\u0012\u0004\u0012\u00020\u001d`52\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008=\u0010;JU\u0010G\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020\u001d\u00a2\u0006\u0004\u0008G\u0010HJ\u0015\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020I\u00a2\u0006\u0004\u0008K\u0010LJ\r\u0010M\u001a\u00020\u001d\u00a2\u0006\u0004\u0008M\u0010\'J\u001d\u0010O\u001a\u0012\u0012\u0004\u0012\u00020N04j\u0008\u0012\u0004\u0012\u00020N`5\u00a2\u0006\u0004\u0008O\u0010PJ\r\u0010Q\u001a\u00020\u0004\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010U\u001a\u0004\u0018\u00010T2\u0006\u0010S\u001a\u00020\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u001f\u0010Z\u001a\u0004\u0018\u00010Y2\u0006\u0010W\u001a\u00020\u00022\u0006\u0010X\u001a\u00020\u0002\u00a2\u0006\u0004\u0008Z\u0010[J\u008a\u0001\u0010i\u001a\u0004\u0018\u00010h2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\u00022\u0006\u0010^\u001a\u00020\u001d2\u0006\u0010_\u001a\u00020\u001d2\u0006\u0010`\u001a\u00020\u001d2\u0006\u0010a\u001a\u00020\u001d2\u0006\u0010b\u001a\u00020\u001d2\u0006\u0010c\u001a\u00020\u001d2\u0006\u0010d\u001a\u00020\u001d2&\u0010g\u001a\"\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u00010ej\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u0001`fH\u0086@\u00a2\u0006\u0004\u0008i\u0010jJ\u0015\u0010k\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008k\u0010lJ\u001f\u0010n\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*2\u0008\u0008\u0002\u0010m\u001a\u00020\u0002\u00a2\u0006\u0004\u0008n\u0010oJ\r\u0010p\u001a\u00020\u001d\u00a2\u0006\u0004\u0008p\u0010\'J9\u0010u\u001a\u00020\u000b2\u0006\u0010q\u001a\u00020\u001d2\u0008\u0010r\u001a\u0004\u0018\u00010\u001d2\u0008\u0010s\u001a\u0004\u0018\u00010!2\u0006\u0010-\u001a\u00020,2\u0006\u00109\u001a\u00020t\u00a2\u0006\u0004\u0008u\u0010vR\u0014\u0010w\u001a\u00020\u001d8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0014\u0010y\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0014\u0010{\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008{\u0010zR\u0014\u0010|\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008|\u0010zR\u0014\u0010}\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008}\u0010zR\u0014\u0010~\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008~\u0010zR\u0014\u0010\u007f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010zR\u0016\u0010\u0080\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010zR\u0016\u0010\u0081\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010zR\u0016\u0010\u0082\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010zR\u0016\u0010\u0083\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010zR\u0016\u0010\u0084\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010zR\u0016\u0010\u0085\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010zR\u0016\u0010\u0086\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010zR\u0016\u0010\u0087\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010zR\u0016\u0010\u0088\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010zR\u0016\u0010\u0089\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010zR\u0016\u0010\u008a\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010zR&\u0010\u008e\u0001\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010x\u001a\u0005\u0008\u008c\u0001\u0010\'\"\u0005\u0008\u008d\u0001\u0010 R(\u0010\u0094\u0001\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001\"\u0005\u0008\u0093\u0001\u0010$R&\u0010\u0098\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0095\u0001\u0010x\u001a\u0005\u0008\u0096\u0001\u0010\'\"\u0005\u0008\u0097\u0001\u0010 R&\u0010\u009c\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0099\u0001\u0010x\u001a\u0005\u0008\u009a\u0001\u0010\'\"\u0005\u0008\u009b\u0001\u0010 R&\u0010\u00a0\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009d\u0001\u0010x\u001a\u0005\u0008\u009e\u0001\u0010\'\"\u0005\u0008\u009f\u0001\u0010 R&\u0010\u00a4\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010x\u001a\u0005\u0008\u00a2\u0001\u0010\'\"\u0005\u0008\u00a3\u0001\u0010 \u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/CDPay;",
        "",
        "",
        "payServerCode",
        "",
        "isNativePay",
        "(I)Z",
        "Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;",
        "cdComponentPayConfig",
        "Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;",
        "onPayModuleListener",
        "",
        "init",
        "(Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;)V",
        "Lcom/changdu/component/pay/base/service/IPayServiceGoogle;",
        "getGooglePayService",
        "()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;",
        "Lcom/changdu/component/pay/base/service/IPayServiceHuawei;",
        "getHuaweiPayService",
        "()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;",
        "Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;",
        "getMiGlobalPayService",
        "()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;",
        "Lcom/changdu/component/pay/base/service/IPayServiceWechat;",
        "getWechatPayService",
        "()Lcom/changdu/component/pay/base/service/IPayServiceWechat;",
        "Lcom/changdu/component/pay/base/service/IPayServiceAlipay;",
        "getAlipayPayService",
        "()Lcom/changdu/component/pay/base/service/IPayServiceAlipay;",
        "",
        "url",
        "setPayBaseUrl",
        "(Ljava/lang/String;)V",
        "",
        "rechargeItemConfigVersion",
        "setRechargeItemConfigVersion",
        "(J)V",
        "setPurchaseHistoryCallbackUrl",
        "getPurchaseHistoryCallbackUrl",
        "()Ljava/lang/String;",
        "requestPayConfig",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/changdu/component/pay/base/model/PayRequestItem;",
        "payRequestItem",
        "Lcom/changdu/component/pay/base/IPayCallback;",
        "payCallback",
        "pay",
        "(Landroid/app/Activity;ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;)V",
        "checkPayStatus",
        "()V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "inappItemIdList",
        "subsItemIdList",
        "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
        "listener",
        "requestGooglePurchaseMonetization",
        "(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V",
        "requestHuaweiPurchaseMonetization",
        "requestMiGlobalPurchaseMonetization",
        "cdOrderId",
        "isSubscribe",
        "price",
        "sku",
        "receiptOriginalJson",
        "receiptSignature",
        "purchaseToken",
        "purchaseTime",
        "callbackPayInfo",
        "notifyGooglePlayPurchaseSuccess",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "Lcom/changdu/component/pay/base/model/PayReportMessage;",
        "payReportMessage",
        "notifyReceiveReportMessage",
        "(Lcom/changdu/component/pay/base/model/PayReportMessage;)V",
        "getCachedBase64PayConfigContent",
        "Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;",
        "getMerchandiseList",
        "()Ljava/util/ArrayList;",
        "isPayConfigPrepared",
        "()Z",
        "code",
        "Lcom/changdu/component/pay/base/model/PayServerConfigCategory;",
        "getPayCategoryByCode",
        "(I)Lcom/changdu/component/pay/base/model/PayServerConfigCategory;",
        "payCode",
        "payType",
        "Lcom/changdu/component/pay/base/model/PayServerConfigChannel;",
        "getPayChannelItemByPayCodeType",
        "(II)Lcom/changdu/component/pay/base/model/PayServerConfigChannel;",
        "payId",
        "payConfigId",
        "itemId",
        "shopItemId",
        "orderPrice",
        "couponId",
        "paySource",
        "customData",
        "extraInfo",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "extraBizParamMap",
        "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
        "createOrder",
        "(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "openHuaweiSubscribeManager",
        "(Landroid/app/Activity;)V",
        "requestCode",
        "openMiGlobalSubscribeManager",
        "(Landroid/app/Activity;I)V",
        "getGooglePlayCountryCode",
        "channelExtInfo",
        "currencyCode",
        "currencyOrderMoney",
        "Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;",
        "requestThirdPayUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;)V",
        "TAG",
        "Ljava/lang/String;",
        "ERROR_CODE_COMMON",
        "I",
        "ERROR_CODE_NOT_INSTALLED",
        "ERROR_CODE_ILLEGAL_ARGUMENT",
        "ERROR_CODE_NO_SERVER_CONFIG",
        "ERROR_CODE_CREATE_ORDER_FAILED",
        "ERROR_CODE_NOT_SUPPORT_PAY_TYPE",
        "ERROR_CODE_PRODUCT_NOT_EXIST",
        "ERROR_CODE_IS_IN_PROCESSING_PURCHASE",
        "ERROR_CODE_LAUNCH_FAILED",
        "ERROR_CODE_NO_PAY_MODULE",
        "ERROR_CODE_RETURN_VALUE_NULL",
        "ERROR_CODE_SDK_LOGIN_FAILED",
        "ERROR_CODE_SIGNATURE_FAILED",
        "ERROR_CODE_CONSUME_FAILED",
        "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_ALIPAY",
        "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_WECHAT",
        "PAY_CREATE_ORDER_RESULT_EXEC_TYPE_GOOGLE",
        "h",
        "getMMerchandiseName$pay_base_release",
        "setMMerchandiseName$pay_base_release",
        "mMerchandiseName",
        "i",
        "J",
        "getMerchantId",
        "()J",
        "setMerchantId",
        "merchantId",
        "j",
        "getHuaweiPayPublicKey",
        "setHuaweiPayPublicKey",
        "huaweiPayPublicKey",
        "p",
        "getPlayPurchaseCallbackUrl",
        "setPlayPurchaseCallbackUrl",
        "playPurchaseCallbackUrl",
        "q",
        "getHuaweiPurchaseCallbackUrl",
        "setHuaweiPurchaseCallbackUrl",
        "huaweiPurchaseCallbackUrl",
        "r",
        "getMiGlobalPurchaseCallbackUrl",
        "setMiGlobalPurchaseCallbackUrl",
        "miGlobalPurchaseCallbackUrl",
        "OnPayModuleListener",
        "OnThirdPayUrlListener",
        "PayServerCode",
        "pay-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ERROR_CODE_COMMON:I = 0x3e8

.field public static final ERROR_CODE_CONSUME_FAILED:I = 0x3f5

.field public static final ERROR_CODE_CREATE_ORDER_FAILED:I = 0x3ec

.field public static final ERROR_CODE_ILLEGAL_ARGUMENT:I = 0x3ea

.field public static final ERROR_CODE_IS_IN_PROCESSING_PURCHASE:I = 0x3ef

.field public static final ERROR_CODE_LAUNCH_FAILED:I = 0x3f0

.field public static final ERROR_CODE_NOT_INSTALLED:I = 0x3e9

.field public static final ERROR_CODE_NOT_SUPPORT_PAY_TYPE:I = 0x3ed

.field public static final ERROR_CODE_NO_PAY_MODULE:I = 0x3f1

.field public static final ERROR_CODE_NO_SERVER_CONFIG:I = 0x3eb

.field public static final ERROR_CODE_PRODUCT_NOT_EXIST:I = 0x3ee

.field public static final ERROR_CODE_RETURN_VALUE_NULL:I = 0x3f2

.field public static final ERROR_CODE_SDK_LOGIN_FAILED:I = 0x3f3

.field public static final ERROR_CODE_SIGNATURE_FAILED:I = 0x3f4

.field public static final INSTANCE:Lcom/changdu/component/pay/base/CDPay;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_CREATE_ORDER_RESULT_EXEC_TYPE_ALIPAY:I = 0x2

.field public static final PAY_CREATE_ORDER_RESULT_EXEC_TYPE_GOOGLE:I = 0xc

.field public static final PAY_CREATE_ORDER_RESULT_EXEC_TYPE_WECHAT:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CDPay"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:Ljava/lang/String;

.field public static i:J

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static final m:Ljava/util/ArrayList;

.field public static n:Ljava/lang/String;

.field public static o:Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/changdu/component/pay/base/CDPay;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/pay/base/CDPay;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    sput v0, Lcom/changdu/component/pay/base/CDPay;->b:I

    .line 20
    .line 21
    const-string v0, "https://mpay.51changdu.com"

    .line 22
    .line 23
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->c:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->d:Ljava/lang/String;

    .line 28
    .line 29
    const-wide/16 v1, 0x61a9

    .line 30
    .line 31
    sput-wide v1, Lcom/changdu/component/pay/base/CDPay;->e:J

    .line 32
    .line 33
    const-wide/16 v1, 0x65

    .line 34
    .line 35
    sput-wide v1, Lcom/changdu/component/pay/base/CDPay;->f:J

    .line 36
    .line 37
    const-wide/16 v1, 0x1e61

    .line 38
    .line 39
    sput-wide v1, Lcom/changdu/component/pay/base/CDPay;->g:J

    .line 40
    .line 41
    const-string v1, "\u9605\u5e01\u5145\u503c"

    .line 42
    .line 43
    sput-object v1, Lcom/changdu/component/pay/base/CDPay;->h:Ljava/lang/String;

    .line 44
    .line 45
    const-wide/16 v1, 0x3e9

    .line 46
    .line 47
    sput-wide v1, Lcom/changdu/component/pay/base/CDPay;->i:J

    .line 48
    .line 49
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->j:Ljava/lang/String;

    .line 50
    .line 51
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->k:Ljava/lang/String;

    .line 52
    .line 53
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->l:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/changdu/component/pay/base/CDPay;->m:Ljava/util/ArrayList;

    .line 61
    .line 62
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->n:Ljava/lang/String;

    .line 63
    .line 64
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->p:Ljava/lang/String;

    .line 65
    .line 66
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->q:Ljava/lang/String;

    .line 67
    .line 68
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->r:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/paysdk.ashx?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/util/ArrayList;
    .locals 8

    .line 2
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-wide v2, Lcom/changdu/component/pay/base/CDPay;->g:J

    cmp-long v2, v2, p0

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_1
    :goto_0
    if-ge v3, p0, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    check-cast p1, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;

    if-nez p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->getId()J

    move-result-wide v4

    sget-wide v6, Lcom/changdu/component/pay/base/CDPay;->g:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;

    .line 7
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->getId()J

    move-result-wide v5

    cmp-long v5, v5, p0

    if-nez v5, :cond_4

    move-object v1, v4

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 9
    :cond_6
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->getCategoryList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final access$decodePayConfig(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$decodePayConfig$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/changdu/component/pay/base/CDPay$decodePayConfig$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final access$getCachedPayConfigContent(Lcom/changdu/component/pay/base/CDPay;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "pcc"

    .line 9
    .line 10
    invoke-static {p0, v1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/changdu/component/pay/base/internal/ALocalCache;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string v1, "content"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    return-object p0

    .line 30
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static final access$getConfigBase64Content(Lcom/changdu/component/pay/base/CDPay;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$getConfigBase64Content$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/changdu/component/pay/base/CDPay$getConfigBase64Content$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final synthetic access$getMCachedBase64PayConfigContent$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMCoreCode$p()I
    .locals 1

    .line 1
    sget v0, Lcom/changdu/component/pay/base/CDPay;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getMLocalKey$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMMerchandiseId$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getMMerchandiseList$p()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMPayAppId$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getMPayVersion$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getMRandomKey$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPayCommonRequestUrl(Lcom/changdu/component/pay/base/CDPay;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static final synthetic access$getPayConfigUrl(Lcom/changdu/component/pay/base/CDPay;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static final access$getPriceDoubleDollar(Lcom/changdu/component/pay/base/CDPay;J)D
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0xf4240

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigDecimal;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-virtual {v0, v1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 25
    .line 26
    .line 27
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-wide p0

    .line 29
    :catch_0
    long-to-double p1, p1

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    mul-double/2addr p1, v0

    .line 33
    int-to-double v0, p0

    .line 34
    div-double/2addr p1, v0

    .line 35
    return-wide p1
.end method

.method public static final access$getRandomKey(Lcom/changdu/component/pay/base/CDPay;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$getRandomKey$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/changdu/component/pay/base/CDPay$getRandomKey$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final synthetic access$getSESSION_ID$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final access$parsePayConfigXml(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final access$replaceMd5Data(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v1, "+"

    .line 7
    .line 8
    const-string v2, "~"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v11, 0x0

    .line 18
    const-string v7, "/"

    .line 19
    .line 20
    const-string v8, "@"

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "="

    .line 28
    .line 29
    const-string v2, "$"

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final access$saveCachedPayConfigContent(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object p0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "pcc"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/changdu/component/pay/base/internal/ALocalCache;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string v0, "content"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final synthetic access$setMCachedBase64PayConfigContent$p(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/component/pay/base/CDPay;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMLocalKey$p(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/component/pay/base/CDPay;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMRandomKey$p(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/changdu/component/pay/base/CDPay;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "/paysdk.ashx?MerchantID=%s&AppID=%s&ParserVer=%s&Ver=%s&SessionID=%s&DynamicAppKey=%s&Sign=%s"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic openMiGlobalSubscribeManager$default(Lcom/changdu/component/pay/base/CDPay;Landroid/app/Activity;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x23

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay;->openMiGlobalSubscribeManager(Landroid/app/Activity;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final checkPayStatus()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->checkPayStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;->checkPayStatus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;->checkPayStatus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 26
    .line 27
    .line 28
    :catch_2
    :cond_2
    return-void
.end method

.method public final createOrder(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;

    .line 6
    .line 7
    const/4 v13, 0x0

    .line 8
    move v2, p1

    .line 9
    move/from16 v3, p2

    .line 10
    .line 11
    move/from16 v4, p3

    .line 12
    .line 13
    move-object/from16 v5, p4

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v8, p7

    .line 20
    .line 21
    move-object/from16 v10, p8

    .line 22
    .line 23
    move-object/from16 v11, p9

    .line 24
    .line 25
    move-object/from16 v9, p10

    .line 26
    .line 27
    move-object/from16 v12, p11

    .line 28
    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/changdu/component/pay/base/CDPay$createOrder$2;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    move-object/from16 p1, p12

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final getAlipayPayService()Lcom/changdu/component/pay/base/service/IPayServiceAlipay;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceAlipay;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/pay/base/service/IPayServiceAlipay;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getCachedBase64PayConfigContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getGooglePlayCountryCode()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->getCountryCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v1

    .line 17
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getHuaweiPayPublicKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getHuaweiPurchaseCallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMMerchandiseName$pay_base_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMerchandiseList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMerchantId()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getMiGlobalPurchaseCallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayCategoryByCode(I)Lcom/changdu/component/pay/base/model/PayServerConfigCategory;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->g:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/changdu/component/pay/base/CDPay;->a(J)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    check-cast v3, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, p1, :cond_0

    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final getPayChannelItemByPayCodeType(II)Lcom/changdu/component/pay/base/model/PayServerConfigChannel;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-wide v0, Lcom/changdu/component/pay/base/CDPay;->g:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/changdu/component/pay/base/CDPay;->a(J)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :cond_0
    :goto_0
    if-ge v3, v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v4, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ne v5, p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v5, -0x1

    .line 45
    if-ne p2, v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    move v6, v2

    .line 67
    :cond_3
    if-ge v6, v5, :cond_0

    .line 68
    .line 69
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    check-cast v7, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 76
    .line 77
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getPayType()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-ne v8, p2, :cond_3

    .line 82
    .line 83
    return-object v7

    .line 84
    :cond_4
    const/4 p1, 0x0

    .line 85
    return-object p1
.end method

.method public final getPlayPurchaseCallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPurchaseHistoryCallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWechatPayService()Lcom/changdu/component/pay/base/service/IPayServiceWechat;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/pay/base/service/IPayServiceWechat;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/pay/base/service/IPayServiceWechat;

    .line 10
    .line 11
    return-object v0
.end method

.method public final init(Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;)V
    .locals 6
    .param p1    # Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getCoreCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/changdu/component/pay/base/CDPay;->b:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getPayBaseUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getPayAppId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/changdu/component/pay/base/CDPay;->e:J

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getPayVersion()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lcom/changdu/component/pay/base/CDPay;->f:J

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getMerchandiseId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lcom/changdu/component/pay/base/CDPay;->g:J

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getMerchandiseName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/changdu/component/pay/base/CDPay;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;->getPurchaseHistoryCallbackUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->d:Ljava/lang/String;

    .line 42
    .line 43
    sput-object p2, Lcom/changdu/component/pay/base/CDPay;->o:Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;

    .line 44
    .line 45
    sget-object p1, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v3, Lcom/changdu/component/pay/base/CDPay$initCachedPayConfig$1;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-direct {v3, p1}, Lcom/changdu/component/pay/base/CDPay$initCachedPayConfig$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-interface {p1}, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    :catch_1
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    .line 90
    .line 91
    :catch_2
    :cond_2
    return-void
.end method

.method public final isNativePay(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x23

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xe

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final isPayConfigPrepared()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move v0, v1

    .line 16
    :goto_1
    xor-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public final notifyGooglePlayPurchaseSuccess(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->o:Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-wide/from16 v9, p8

    .line 19
    .line 20
    move-object/from16 v11, p10

    .line 21
    .line 22
    invoke-interface/range {v1 .. v11}, Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;->googlePlayPurchaseSuccess(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V
    .locals 1
    .param p1    # Lcom/changdu/component/pay/base/model/PayReportMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->o:Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;->onReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final openHuaweiSubscribeManager(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;->openSubscribeManager(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final openMiGlobalSubscribeManager(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;->openSubscribeManager(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final pay(Landroid/app/Activity;ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/model/PayRequestItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/changdu/component/pay/base/IPayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getMainLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/changdu/component/pay/base/CDPay$pay$1;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v6, p1

    .line 11
    move v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v2 .. v7}, Lcom/changdu/component/pay/base/CDPay$pay$1;-><init>(ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v4, v2

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final requestGooglePurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/changdu/component/pay/base/service/IPayServiceGoogle;->requestPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final requestHuaweiPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/changdu/component/pay/base/service/IPayServiceHuawei;->requestPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final requestMiGlobalPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/base/CDPay;->getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;->requestPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final requestPayConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final requestThirdPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/changdu/component/pay/base/model/PayRequestItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    move-object v3, p1

    .line 11
    move-object v6, p2

    .line 12
    move-object v7, p3

    .line 13
    move-object v5, p4

    .line 14
    move-object v4, p5

    .line 15
    invoke-direct/range {v2 .. v8}, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;-><init>(Ljava/lang/String;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;Lcom/changdu/component/pay/base/model/PayRequestItem;Ljava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v4, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setHuaweiPayPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHuaweiPurchaseCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMMerchandiseName$pay_base_release(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMerchantId(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/changdu/component/pay/base/CDPay;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMiGlobalPurchaseCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPayBaseUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final setPlayPurchaseCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPurchaseHistoryCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/pay/base/CDPay;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRechargeItemConfigVersion(J)V
    .locals 0

    .line 1
    return-void
.end method
