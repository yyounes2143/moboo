package com.example.pay_manager_android;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.model.CDComponentPayConfigs;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import com.changdu.component.pay.base.model.PayServerConfigChannel;
import com.changdu.component.pay.base.model.PurchaseItemMonetization;
import com.changdu.component.pay.base.service.OnPurchaseMonetizationListener;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import j$.util.Objects;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\nJ\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u0017\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u001f\u0010\u001a\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u0010J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\bH\u0002¢\u0006\u0004\b \u0010\u0005J\u0017\u0010!\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b!\u0010\u001eJ\u0017\u0010\"\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010\u001eJ\u001f\u0010#\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b#\u0010\u0010J\u001f\u0010$\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b$\u0010\u0010J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b%\u0010\u001eJ\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b&\u0010\u001eJ\u0017\u0010)\u001a\u00020\b2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b+\u0010\u0010J\u001f\u0010,\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b,\u0010\u0010R\u0018\u0010/\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00101R\u0014\u00105\u001a\u0002038\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u00104¨\u00066"}, d2 = {"Lcom/example/pay_manager_android/PayManagerPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "p0", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "Wwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/component/pay/base/model/PayReportMessage;", "detailMessage", "Wwwwwwwwwwwwwwwwwww", "(Lcom/changdu/component/pay/base/model/PayReportMessage;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/app/Activity;", "Landroid/app/Activity;", "activity", "", "Ljava/lang/String;", "TAG", "remove_manager_update_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayManagerPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5847Wwwwwwwwwwwwwwwwwwwwwww = "CdPayPlugin";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5848Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5849Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static final void Wwwwwwwwwwwwwwwwww(PayManagerPlugin payManagerPlugin, HashMap hashMap) {
        MethodChannel methodChannel = payManagerPlugin.f5849Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("onReceiveErrorDetailMessage", hashMap);
        }
    }

    public final void Wwwwwwwwwwwwwww(MethodCall methodCall) {
        try {
            CDPay.INSTANCE.setRechargeItemConfigVersion(Long.parseLong((String) methodCall.arguments()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwww(MethodCall methodCall) {
        try {
            CDPay.INSTANCE.setPayBaseUrl((String) methodCall.arguments());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        try {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new PayManagerPlugin$requestPayConfig$1(result, null), 3, null);
        } catch (Exception unused) {
            result.success(Boolean.FALSE);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwww(PayReportMessage payReportMessage) {
        try {
            final HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("bizContent", payReportMessage.getBizContent()), TuplesKt.to("bizInPageOperation", payReportMessage.getBizInPageOperation()), TuplesKt.to("bizMsg", payReportMessage.getBizMsg()), TuplesKt.to("bizReferer", payReportMessage.getBizReferer()));
            if (payReportMessage.getCustomBizParamMap() != null) {
                hashMapOf.put("customBizParamMap", payReportMessage.getCustomBizParamMap());
            }
            Activity activity = this.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: com.example.pay_manager_android.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayManagerPlugin.Wwwwwwwwwwwwwwwwww(PayManagerPlugin.this, hashMapOf);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        try {
            Integer num = (Integer) methodCall.argument("payConfigId");
            int i2 = 0;
            if (num != null) {
                i = num.intValue();
            } else {
                i = 0;
            }
            String str8 = (String) methodCall.argument("couponId");
            if (str8 == null) {
                str = "";
            } else {
                str = str8;
            }
            String str9 = (String) methodCall.argument("hwItemId");
            if (str9 == null) {
                str2 = "";
            } else {
                str2 = str9;
            }
            String str10 = (String) methodCall.argument("itemId");
            if (str10 == null) {
                str3 = "";
            } else {
                str3 = str10;
            }
            String str11 = (String) methodCall.argument("paySource");
            if (str11 == null) {
                str4 = "";
            } else {
                str4 = str11;
            }
            String str12 = (String) methodCall.argument("shopItemId");
            if (str12 == null) {
                str5 = "";
            } else {
                str5 = str12;
            }
            String str13 = (String) methodCall.argument("orderPrice");
            if (str13 == null) {
                str6 = "";
            } else {
                str6 = str13;
            }
            String str14 = (String) methodCall.argument("payCustomData");
            if (str14 == null) {
                str7 = "";
            } else {
                str7 = str14;
            }
            PayRequestItem payRequestItem = new PayRequestItem(i, str3, str5, str6, str2, str, str4, str7);
            Activity activity = this.f5848Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                CDPay cDPay = CDPay.INSTANCE;
                Integer num2 = (Integer) methodCall.argument("payServerCode");
                if (num2 != null) {
                    i2 = num2.intValue();
                }
                cDPay.pay(activity, i2, payRequestItem, new PayManagerPlugin$pay$1$1(this, result));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        try {
            result.success(Boolean.valueOf(CDPay.INSTANCE.isPayConfigPrepared()));
        } catch (Exception unused) {
            result.success(Boolean.FALSE);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        long j;
        long j2;
        String str;
        String str2;
        int i;
        String str3;
        Integer intOrNull;
        try {
            CDPay cDPay = CDPay.INSTANCE;
            cDPay.setRechargeItemConfigVersion(1L);
            Integer num = (Integer) methodCall.argument("payAppId");
            long j3 = 0;
            if (num != null) {
                j = num.intValue();
            } else {
                j = 0;
            }
            Integer num2 = (Integer) methodCall.argument("payVersion");
            if (num2 != null) {
                j2 = num2.intValue();
            } else {
                j2 = 0;
            }
            Integer num3 = (Integer) methodCall.argument("merchandiseId");
            if (num3 != null) {
                j3 = num3.intValue();
            }
            long j4 = j3;
            String str4 = (String) methodCall.argument("merchandiseName");
            if (str4 == null) {
                str = "";
            } else {
                str = str4;
            }
            String str5 = (String) methodCall.argument("payBaseUrl");
            if (str5 == null) {
                str2 = "";
            } else {
                str2 = str5;
            }
            String str6 = (String) methodCall.argument("core");
            if (str6 != null && (intOrNull = StringsKt.toIntOrNull(str6)) != null) {
                i = intOrNull.intValue();
            } else {
                i = 1;
            }
            int i2 = i;
            String str7 = (String) methodCall.argument("purchaseHistoryCallbackUrl");
            if (str7 == null) {
                str3 = "";
            } else {
                str3 = str7;
            }
            cDPay.init(new CDComponentPayConfigs(i2, str2, j, j2, j4, str, str3), new PayManagerPlugin$init$1(this));
            cDPay.checkPayStatus();
        } catch (Exception e) {
            e.printStackTrace();
        }
        result.success("");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, final MethodChannel.Result result) {
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        Long l;
        try {
            Integer num = (Integer) methodCall.argument("payConfigId");
            if (num != null) {
                i = num.intValue();
            } else {
                i = 0;
            }
            int i2 = i;
            String str9 = (String) methodCall.argument("couponId");
            if (str9 == null) {
                str = "";
            } else {
                str = str9;
            }
            String str10 = (String) methodCall.argument("hwItemId");
            if (str10 == null) {
                str2 = "";
            } else {
                str2 = str10;
            }
            String str11 = (String) methodCall.argument("itemId");
            if (str11 == null) {
                str3 = "";
            } else {
                str3 = str11;
            }
            String str12 = (String) methodCall.argument("paySource");
            if (str12 == null) {
                str4 = "";
            } else {
                str4 = str12;
            }
            String str13 = (String) methodCall.argument("shopItemId");
            if (str13 == null) {
                str5 = "";
            } else {
                str5 = str13;
            }
            String str14 = (String) methodCall.argument("orderPrice");
            if (str14 == null) {
                str6 = "";
            } else {
                str6 = str14;
            }
            String str15 = (String) methodCall.argument("payCustomData");
            if (str15 == null) {
                str7 = "";
            } else {
                str7 = str15;
            }
            PayRequestItem payRequestItem = new PayRequestItem(i2, str3, str5, str6, str2, str, str4, str7);
            String str16 = (String) methodCall.argument("channelExtInfo");
            if (str16 == null) {
                str8 = "";
            } else {
                str8 = str16;
            }
            String str17 = (String) methodCall.argument(AppsFlyerProperties.CURRENCY_CODE);
            String str18 = (String) methodCall.argument("currencyOrderMoney");
            if (str18 != null) {
                l = StringsKt.toLongOrNull(str18);
            } else {
                l = null;
            }
            CDPay.INSTANCE.requestThirdPayUrl(str8, str17, l, payRequestItem, new CDPay.OnThirdPayUrlListener() { // from class: com.example.pay_manager_android.PayManagerPlugin$getPayContent$1
                @Override // com.changdu.component.pay.base.CDPay.OnThirdPayUrlListener
                public void onFail(String str19) {
                    try {
                        MethodChannel.Result result2 = MethodChannel.Result.this;
                        if (str19 == null) {
                            str19 = "";
                        }
                        result2.error(str19, null, null);
                    } catch (Throwable unused) {
                    }
                }

                @Override // com.changdu.component.pay.base.CDPay.OnThirdPayUrlListener
                public void onSuccess(String str19, String str20) {
                    try {
                        MethodChannel.Result.this.success(MapsKt.hashMapOf(TuplesKt.to("jumpUrl", str19), TuplesKt.to(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, str20)));
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        try {
            PayServerConfigChannel payChannelItemByPayCodeType = CDPay.INSTANCE.getPayChannelItemByPayCodeType(15, -1);
            if (payChannelItemByPayCodeType != null) {
                result.success(MapsKt.hashMapOf(TuplesKt.to("amountLimit", Integer.valueOf(payChannelItemByPayCodeType.getAmountLimit())), TuplesKt.to("description", payChannelItemByPayCodeType.getDescription()), TuplesKt.to("name", payChannelItemByPayCodeType.getName()), TuplesKt.to("payId", Integer.valueOf(payChannelItemByPayCodeType.getPayId())), TuplesKt.to("payType", Integer.valueOf(payChannelItemByPayCodeType.getPayType())), TuplesKt.to("viewType", Integer.valueOf(payChannelItemByPayCodeType.getViewType())), TuplesKt.to("weixinItems", payChannelItemByPayCodeType.getWeixinItems())));
            } else {
                result.success(new HashMap());
            }
        } catch (Exception unused) {
            result.success(new HashMap());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(CDPay.INSTANCE.getMerchandiseList().toString());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(CDPay.INSTANCE.getCachedBase64PayConfigContent());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, final MethodChannel.Result result) {
        try {
            ArrayList<String> arrayList = (ArrayList) methodCall.argument("inAppItemIdList");
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            ArrayList<String> arrayList2 = (ArrayList) methodCall.argument("subAppItemIdList");
            if (arrayList2 == null) {
                arrayList2 = new ArrayList<>();
            }
            CDPay.INSTANCE.requestGooglePurchaseMonetization(arrayList, arrayList2, new OnPurchaseMonetizationListener() { // from class: com.example.pay_manager_android.PayManagerPlugin$getAppLocalFormat$1
                @Override // com.changdu.component.pay.base.service.OnPurchaseMonetizationListener
                public void onPurchaseItemMonetizationResult(ArrayList<PurchaseItemMonetization> arrayList3, ArrayList<PurchaseItemMonetization> arrayList4) {
                    String unused;
                    char c = 3;
                    char c2 = 2;
                    int i = 1;
                    unused = PayManagerPlugin.this.f5847Wwwwwwwwwwwwwwwwwwwwwww;
                    Objects.toString(arrayList3);
                    ArrayList arrayList5 = new ArrayList();
                    int size = arrayList3.size();
                    char c3 = 0;
                    int i2 = 0;
                    while (i2 < size) {
                        PurchaseItemMonetization purchaseItemMonetization = arrayList3.get(i2);
                        i2++;
                        PurchaseItemMonetization purchaseItemMonetization2 = purchaseItemMonetization;
                        arrayList5.add(MapsKt.hashMapOf(TuplesKt.to("itemId", purchaseItemMonetization2.getItemId()), TuplesKt.to("formattedPrice", purchaseItemMonetization2.getFormattedPrice()), TuplesKt.to("isSubs", Boolean.valueOf(purchaseItemMonetization2.isSubs())), TuplesKt.to("priceAmountMicros", Long.valueOf(purchaseItemMonetization2.getPriceAmountMicros())), TuplesKt.to("priceCurrencyCode", purchaseItemMonetization2.getPriceCurrencyCode())));
                    }
                    int size2 = arrayList4.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        PurchaseItemMonetization purchaseItemMonetization3 = arrayList4.get(i3);
                        i3 += i;
                        PurchaseItemMonetization purchaseItemMonetization4 = purchaseItemMonetization3;
                        char c4 = c;
                        Pair pair = TuplesKt.to("itemId", purchaseItemMonetization4.getItemId());
                        char c5 = c2;
                        Pair pair2 = TuplesKt.to("formattedPrice", purchaseItemMonetization4.getFormattedPrice());
                        int i4 = i;
                        Pair pair3 = TuplesKt.to("isSubs", Boolean.valueOf(purchaseItemMonetization4.isSubs()));
                        char c6 = c3;
                        Pair pair4 = TuplesKt.to("priceAmountMicros", Long.valueOf(purchaseItemMonetization4.getPriceAmountMicros()));
                        Pair pair5 = TuplesKt.to("priceCurrencyCode", purchaseItemMonetization4.getPriceCurrencyCode());
                        int i5 = size2;
                        Pair[] pairArr = new Pair[5];
                        pairArr[c6] = pair;
                        pairArr[i4] = pair2;
                        pairArr[c5] = pair3;
                        pairArr[c4] = pair4;
                        pairArr[4] = pair5;
                        arrayList5.add(MapsKt.hashMapOf(pairArr));
                        size2 = i5;
                        c = c4;
                        c2 = c5;
                        c3 = c6;
                        i = i4;
                    }
                    result.success(arrayList5);
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
            result.error("10000", "", "");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            CDPay.INSTANCE.checkPayStatus();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        try {
            long longValue = ((Number) methodCall.argument("price")).longValue();
            double doubleValue = ((Number) methodCall.argument("ratio")).doubleValue();
            Currency currency = Currency.getInstance((String) methodCall.argument("cityCode"));
            NumberFormat currencyInstance = NumberFormat.getCurrencyInstance();
            currencyInstance.setCurrency(currency);
            currencyInstance.setMaximumFractionDigits(2);
            result.success(currencyInstance.format((longValue * doubleValue) / 1000000));
        } catch (Throwable unused) {
            result.error("", "", "");
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            this.f5848Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "pay_manager");
            this.f5849Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
            methodChannel.setMethodCallHandler(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5849Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        try {
            String str = methodCall.method;
            if (str != null) {
                switch (str.hashCode()) {
                    case -1995948963:
                        if (str.equals("isPayConfigPrepared")) {
                            Wwwwwwwwwwwwwwwwwwwww(result);
                            return;
                        }
                        return;
                    case -1824003816:
                        if (str.equals("setPayBaseUrl")) {
                            Wwwwwwwwwwwwwwww(methodCall);
                            return;
                        }
                        return;
                    case -1686348442:
                        if (str.equals("getMerchandiseListStr")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwww(result);
                            return;
                        }
                        return;
                    case -1313978713:
                        if (str.equals("getPayContent")) {
                            Wwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case -602385577:
                        if (str.equals("getAppLocalFormat")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case -246421318:
                        if (str.equals("setRechargeItemConfigVersion")) {
                            Wwwwwwwwwwwwwww(methodCall);
                            return;
                        }
                        return;
                    case 110760:
                        if (str.equals("pay")) {
                            Wwwwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case 3237136:
                        if (str.equals("init")) {
                            Wwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case 196222134:
                        if (str.equals("getCachedBase64PayConfigContent")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwww(result);
                            return;
                        }
                        return;
                    case 467342217:
                        if (str.equals("calculateOriPrice")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                            return;
                        }
                        return;
                    case 905477604:
                        if (str.equals("getPayChannelItem")) {
                            Wwwwwwwwwwwwwwwwwwwwwwww(result);
                            return;
                        }
                        return;
                    case 1022538386:
                        if (str.equals("checkPayStatus")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                        return;
                    case 1670553659:
                        if (str.equals("requestPayConfig")) {
                            Wwwwwwwwwwwwwwwww(result);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            onAttachedToActivity(activityPluginBinding);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }
}
