package com.changdu.mobovideo.plugins;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.localpush.LocalPushConfig;
import com.changdu.mobovideo.localpush.LocalPushContentRule;
import com.changdu.mobovideo.localpush.LocalPushScheduler;
import com.changdu.mobovideo.localpush.LocalPushStateStore;
import com.changdu.mobovideo.localpush.LocalPushTime;
import com.changdu.mobovideo.utils.CoroutineUtil;
import com.changdu.mobovideo.utils.NotificationUtil;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00015B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020&2\b\u0010!\u001a\u0004\u0018\u00010%H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0002¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010*\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b,\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00066"}, d2 = {"Lcom/changdu/mobovideo/plugins/PushPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "p0", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Landroid/content/Intent;", "newIntent", "", "onNewIntent", "(Landroid/content/Intent;)Z", "", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Ljava/lang/String;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Number;)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "mActivity", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPushPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushPlugin.kt\ncom/changdu/mobovideo/plugins/PushPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,376:1\n1#2:377\n1563#3:378\n1634#3,3:379\n1869#3,2:382\n1869#3,2:384\n*S KotlinDebug\n*F\n+ 1 PushPlugin.kt\ncom/changdu/mobovideo/plugins/PushPlugin\n*L\n150#1:378\n150#1:379,3\n266#1:382,2\n291#1:384,2\n*E\n"})
/* loaded from: classes3.dex */
public class PushPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.NewIntentListener {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5621Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5622Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5623Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/changdu/mobovideo/plugins/PushPlugin$Companion;", "", "<init>", "()V", "isInit", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PushPlugin pushPlugin, JSONObject jSONObject) {
        MethodChannel methodChannel = pushPlugin.f5623Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("immediatelyMessage", jSONObject.toString());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new PushPlugin$tryRegisterToken$1(null), 3, null);
        } catch (Exception unused) {
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        List list;
        try {
            if (obj instanceof List) {
                list = (List) obj;
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            return new JSONArray((Collection) list).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.success(null);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Number number) {
        if (number != null) {
            return LocalPushTime.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(number.intValue());
        }
        return -1;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        Intent intent;
        try {
            Activity activity = this.f5622Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                intent = activity.getIntent();
            } else {
                intent = null;
            }
            if (intent != null && intent.getExtras() != null) {
                try {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        JSONObject jSONObject = new JSONObject();
                        for (String str : extras.keySet()) {
                            jSONObject.put(str, extras.get(str));
                        }
                        result.success(jSONObject.toString());
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    String message = e.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    result.error(message, null, null);
                    return;
                }
            }
            result.success(null);
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            this.f5622Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
            activityPluginBinding.addOnNewIntentListener(this);
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        try {
            MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "mobo_video_push");
            this.f5623Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
            methodChannel.setMethodCallHandler(this);
            f5621Wwwwwwwwwwwwwwwwwwwwwww = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5623Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        Map map;
        Object obj;
        Map map2;
        String str;
        String str2;
        Number number;
        long j;
        Number number2;
        long j2;
        Number number3;
        Number number4;
        long j3;
        Number number5;
        long j4;
        Number number6;
        long j5;
        Number number7;
        long j6;
        Number number8;
        Number number9;
        Number number10;
        Number number11;
        Number number12;
        Number number13;
        Number number14;
        Number number15;
        Number number16;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        Number number17;
        int i;
        Number number18;
        int i2;
        Number number19;
        Context applicationContext;
        Number number20;
        long j7;
        Activity activity;
        Context applicationContext2;
        try {
            String str9 = null;
            if (!f5621Wwwwwwwwwwwwwwwwwwwwwww) {
                result.error("请先初始化", null, null);
                return;
            }
            String str10 = methodCall.method;
            if (str10 != null) {
                long j8 = 0;
                switch (str10.hashCode()) {
                    case -1000191810:
                        if (str10.equals("updateLocalPushConfig")) {
                            Object obj2 = methodCall.arguments;
                            if (obj2 instanceof Map) {
                                map = (Map) obj2;
                            } else {
                                map = null;
                            }
                            if (map != null) {
                                obj = map.get("config");
                            } else {
                                obj = null;
                            }
                            if (obj instanceof Map) {
                                map2 = (Map) obj;
                            } else {
                                map2 = null;
                            }
                            if (map2 == null) {
                                map2 = MapsKt.emptyMap();
                            }
                            Object obj3 = map2.get("userZoneId");
                            if (obj3 instanceof String) {
                                str = (String) obj3;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                if (StringsKt.isBlank(str)) {
                                    str = null;
                                }
                                str2 = str;
                            } else {
                                str2 = null;
                            }
                            Object obj4 = map2.get("frequencyGapSeconds");
                            if (obj4 instanceof Number) {
                                number = (Number) obj4;
                            } else {
                                number = null;
                            }
                            if (number != null) {
                                j = Math.max(0L, number.longValue());
                            } else {
                                j = 1800;
                            }
                            Object obj5 = map2.get("signInCountDownSeconds");
                            if (obj5 instanceof Number) {
                                number2 = (Number) obj5;
                            } else {
                                number2 = null;
                            }
                            if (number2 != null) {
                                j2 = Math.max(0L, number2.longValue());
                            } else {
                                j2 = 14400;
                            }
                            Object obj6 = map2.get("signInTriggerSecondOfDay");
                            if (obj6 instanceof Number) {
                                number3 = (Number) obj6;
                            } else {
                                number3 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number3);
                            Object obj7 = map2.get("signInIntervalSeconds");
                            if (obj7 instanceof Number) {
                                number4 = (Number) obj7;
                            } else {
                                number4 = null;
                            }
                            if (number4 != null) {
                                j3 = Math.max(0L, number4.longValue());
                            } else {
                                j3 = 0;
                            }
                            Object obj8 = map2.get("recallTriggerAtMs");
                            if (obj8 instanceof Number) {
                                number5 = (Number) obj8;
                            } else {
                                number5 = null;
                            }
                            if (number5 != null) {
                                j4 = Math.max(0L, number5.longValue());
                            } else {
                                j4 = 0;
                            }
                            Object obj9 = map2.get("recallIntervalSeconds");
                            if (obj9 instanceof Number) {
                                number6 = (Number) obj9;
                            } else {
                                number6 = null;
                            }
                            if (number6 != null) {
                                j5 = Math.max(0L, number6.longValue());
                            } else {
                                j5 = 0;
                            }
                            Object obj10 = map2.get("promotionDelaySeconds");
                            if (obj10 instanceof Number) {
                                number7 = (Number) obj10;
                            } else {
                                number7 = null;
                            }
                            if (number7 != null) {
                                j6 = Math.max(0L, number7.longValue());
                            } else {
                                j6 = 30;
                            }
                            long j9 = j6;
                            Object obj11 = map2.get("promotionIntervalSeconds");
                            if (obj11 instanceof Number) {
                                number8 = (Number) obj11;
                            } else {
                                number8 = null;
                            }
                            if (number8 != null) {
                                j8 = Math.max(0L, number8.longValue());
                            }
                            long j10 = j8;
                            Object obj12 = map2.get("dndStartSecondOfDay");
                            if (obj12 instanceof Number) {
                                number9 = (Number) obj12;
                            } else {
                                number9 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number9);
                            Object obj13 = map2.get("dndEndSecondOfDay");
                            if (obj13 instanceof Number) {
                                number10 = (Number) obj13;
                            } else {
                                number10 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number10);
                            Object obj14 = map2.get("dndSignInStartSecondOfDay");
                            if (obj14 instanceof Number) {
                                number11 = (Number) obj14;
                            } else {
                                number11 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number11);
                            Object obj15 = map2.get("dndSignInEndSecondOfDay");
                            if (obj15 instanceof Number) {
                                number12 = (Number) obj15;
                            } else {
                                number12 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number12);
                            Object obj16 = map2.get("dndRecallStartSecondOfDay");
                            if (obj16 instanceof Number) {
                                number13 = (Number) obj16;
                            } else {
                                number13 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number13);
                            Object obj17 = map2.get("dndRecallEndSecondOfDay");
                            if (obj17 instanceof Number) {
                                number14 = (Number) obj17;
                            } else {
                                number14 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number14);
                            Object obj18 = map2.get("dndPromotionStartSecondOfDay");
                            if (obj18 instanceof Number) {
                                number15 = (Number) obj18;
                            } else {
                                number15 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number15);
                            Object obj19 = map2.get("dndPromotionEndSecondOfDay");
                            if (obj19 instanceof Number) {
                                number16 = (Number) obj19;
                            } else {
                                number16 = null;
                            }
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww10 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number16);
                            Object obj20 = map2.get("signInCollapsedRightImageUrl");
                            if (obj20 instanceof String) {
                                str3 = (String) obj20;
                            } else {
                                str3 = null;
                            }
                            if (str3 != null) {
                                if (StringsKt.isBlank(str3)) {
                                    str3 = null;
                                }
                                str4 = str3;
                            } else {
                                str4 = null;
                            }
                            Object obj21 = map2.get("recallCollapsedRightImageUrl");
                            if (obj21 instanceof String) {
                                str5 = (String) obj21;
                            } else {
                                str5 = null;
                            }
                            if (str5 != null) {
                                if (StringsKt.isBlank(str5)) {
                                    str5 = null;
                                }
                                str6 = str5;
                            } else {
                                str6 = null;
                            }
                            Object obj22 = map2.get("recallExpandedBgImageUrl");
                            if (obj22 instanceof String) {
                                str7 = (String) obj22;
                            } else {
                                str7 = null;
                            }
                            if (str7 != null) {
                                if (StringsKt.isBlank(str7)) {
                                    str7 = null;
                                }
                                str8 = str7;
                            } else {
                                str8 = null;
                            }
                            Object obj23 = map2.get("signInContentRule");
                            if (obj23 instanceof Number) {
                                number17 = (Number) obj23;
                            } else {
                                number17 = null;
                            }
                            int i3 = 2;
                            if (number17 != null) {
                                i = LocalPushContentRule.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number17.intValue());
                            } else {
                                i = 2;
                            }
                            Object obj24 = map2.get("recallContentRule");
                            if (obj24 instanceof Number) {
                                number18 = (Number) obj24;
                            } else {
                                number18 = null;
                            }
                            if (number18 != null) {
                                i2 = LocalPushContentRule.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number18.intValue());
                            } else {
                                i2 = 2;
                            }
                            Object obj25 = map2.get("promotionContentRule");
                            if (obj25 instanceof Number) {
                                number19 = (Number) obj25;
                            } else {
                                number19 = null;
                            }
                            if (number19 != null) {
                                i3 = LocalPushContentRule.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(number19.intValue());
                            }
                            LocalPushConfig localPushConfig = new LocalPushConfig(str2, j, j2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j3, j4, j5, j9, j10, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww10, str4, str6, str8, i, i2, i3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(map2.get("signInContents")), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(map2.get("recallContents")), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(map2.get("promotionContents")));
                            LocalPushScheduler localPushScheduler = LocalPushScheduler.INSTANCE;
                            localPushScheduler.Wwwwwwwwwwwwwwwwwwwww(localPushConfig);
                            Activity activity2 = this.f5622Wwwwwwwwwwwwwwwwwwwwwwww;
                            if (activity2 != null && (applicationContext = activity2.getApplicationContext()) != null) {
                                localPushScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext);
                                Unit unit = Unit.INSTANCE;
                            }
                            result.success(null);
                            Unit unit2 = Unit.INSTANCE;
                            return;
                        }
                        break;
                        break;
                    case -710805873:
                        if (str10.equals("getRecentPromotionSeriesIds")) {
                            List<Number> Wwwwwwwwwwwwwww2 = LocalPushStateStore.Wwwwwwwwwwwwwww(LocalPushStateStore.INSTANCE, 0L, 1, null);
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(Wwwwwwwwwwwwwww2, 10));
                            for (Number number21 : Wwwwwwwwwwwwwww2) {
                                arrayList.add(Integer.valueOf((int) number21.longValue()));
                            }
                            result.success(arrayList);
                            break;
                        } else {
                            break;
                        }
                    case -674521317:
                        if (str10.equals("tryRegisterToken")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            Unit unit3 = Unit.INSTANCE;
                            return;
                        }
                        break;
                    case -427203189:
                        if (str10.equals("notifyLocalActivityPush")) {
                            NotificationUtil notificationUtil = NotificationUtil.INSTANCE;
                            Object obj26 = methodCall.arguments;
                            if (obj26 instanceof String) {
                                str9 = (String) obj26;
                            }
                            if (str9 == null) {
                                str9 = "";
                            }
                            notificationUtil.Wwwwwwwwwwwwwwwwwwww(str9);
                            Unit unit4 = Unit.INSTANCE;
                            return;
                        }
                        break;
                    case -204702943:
                        if (str10.equals("setPushCallBack")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                            Unit unit5 = Unit.INSTANCE;
                            return;
                        }
                        break;
                    case 1086790013:
                        if (str10.equals("updateLastLoginAt")) {
                            Object obj27 = methodCall.arguments;
                            if (obj27 instanceof Number) {
                                number20 = (Number) obj27;
                            } else {
                                number20 = null;
                            }
                            if (number20 != null) {
                                j7 = number20.longValue();
                            } else {
                                j7 = 0;
                            }
                            if (j7 > 0 && (activity = this.f5622Wwwwwwwwwwwwwwwwwwwwwwww) != null && (applicationContext2 = activity.getApplicationContext()) != null) {
                                LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwww(applicationContext2, j7);
                                Unit unit6 = Unit.INSTANCE;
                            }
                            result.success(null);
                            Unit unit7 = Unit.INSTANCE;
                            return;
                        }
                        break;
                        break;
                    case 2106202393:
                        if (str10.equals("getInitialMessage")) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                            Unit unit8 = Unit.INSTANCE;
                            return;
                        }
                        break;
                }
            }
            Unit unit9 = Unit.INSTANCE;
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(@NotNull Intent intent) {
        Bundle extras;
        try {
            if (intent.getExtras() != null && (extras = intent.getExtras()) != null) {
                final JSONObject jSONObject = new JSONObject();
                for (String str : extras.keySet()) {
                    jSONObject.put(str, extras.get(str));
                }
                Activity activity = this.f5622Wwwwwwwwwwwwwwwwwwwwwwww;
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            PushPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PushPlugin.this, jSONObject);
                        }
                    });
                    return false;
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        try {
            activityPluginBinding.removeOnNewIntentListener(this);
            onAttachedToActivity(activityPluginBinding);
        } catch (Exception unused) {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }
}
