package com.changdu.mobovideo.plugins;

import android.app.Activity;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.utils.CoroutineUtil;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Currency;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ;\u0010$\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001a2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u001f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b(\u0010'J\u0017\u0010)\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b)\u0010'J\u0017\u0010*\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b*\u0010'J\u0017\u0010+\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b+\u0010\u0019J\u0017\u0010,\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b,\u0010\u0019R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u00101R\u0018\u00105\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00104R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u00107R\u0016\u0010;\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:¨\u0006>"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDReportPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "binding", "", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "price", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "eventName", "", "paramsMap", "", "", "type", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Lcom/google/firebase/analytics/FirebaseAnalytics;", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "mFirebaseAnalytics", "Lcom/facebook/appevents/AppEventsLogger;", "Lcom/facebook/appevents/AppEventsLogger;", "mFaceBookLogger", "Landroid/app/Activity;", "Landroid/app/Activity;", "mActivity", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "mFacebookAnonymousId", "Wwwwwwwwwwwwwwwwwwww", "mFirebaseAppInstanceId", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCDReportPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDReportPlugin.kt\ncom/changdu/mobovideo/plugins/CDReportPlugin\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,409:1\n216#2,2:410\n216#2,2:412\n*S KotlinDebug\n*F\n+ 1 CDReportPlugin.kt\ncom/changdu/mobovideo/plugins/CDReportPlugin\n*L\n156#1:410,2\n174#1:412,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CDReportPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5610Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AppEventsLogger f5611Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FirebaseAnalytics f5612Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5613Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5609Wwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5608Wwwwwwwwwwwwwwwwwwww = "";

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        int i;
        long j;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("video_title", (String) methodCall.argument("video_title"));
            Integer num = (Integer) methodCall.argument("video_percent");
            int i2 = 0;
            if (num != null) {
                i = num.intValue();
            } else {
                i = 0;
            }
            bundle.putInt("video_percent", i);
            String str = (String) methodCall.argument("video_tags");
            String str2 = "";
            if (str == null) {
                str = "";
            }
            bundle.putString("video_tags", str);
            String str3 = (String) methodCall.argument("video_drama_genre");
            if (str3 == null) {
                str3 = "";
            }
            bundle.putString("video_drama_genre", str3);
            String str4 = (String) methodCall.argument(CampaignEx.JSON_KEY_VIDEO_URL);
            if (str4 == null) {
                str4 = "";
            }
            bundle.putString(CampaignEx.JSON_KEY_VIDEO_URL, str4);
            String str5 = (String) methodCall.argument("video_drama_sub_genre");
            if (str5 != null) {
                str2 = str5;
            }
            bundle.putString("video_drama_sub_genre", str2);
            Number number = (Number) methodCall.argument("video_content_id");
            long j2 = 0;
            if (number != null) {
                j = number.longValue();
            } else {
                j = 0;
            }
            bundle.putLong("video_content_id", j);
            Number number2 = (Number) methodCall.argument("video_episode_id");
            if (number2 != null) {
                j2 = number2.longValue();
            }
            bundle.putLong("video_episode_id", j2);
            Integer num2 = (Integer) methodCall.argument("video_episode_num");
            if (num2 != null) {
                i2 = num2.intValue();
            }
            bundle.putInt("video_episode_num", i2);
            FirebaseAnalytics firebaseAnalytics = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
            if (firebaseAnalytics != null) {
                firebaseAnalytics.logEvent("video_watch", bundle);
            }
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(String str, Map<String, String> map, List<Integer> list) {
        if (list.contains(0)) {
            if (map != null && !map.isEmpty()) {
                Bundle bundle = new Bundle();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    try {
                        bundle.putString(entry.getKey(), entry.getValue());
                    } catch (Exception unused) {
                    }
                }
                if (bundle.isEmpty()) {
                    FirebaseAnalytics firebaseAnalytics = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
                    if (firebaseAnalytics != null) {
                        firebaseAnalytics.logEvent(str, null);
                    }
                } else {
                    FirebaseAnalytics firebaseAnalytics2 = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
                    if (firebaseAnalytics2 != null) {
                        firebaseAnalytics2.logEvent(str, bundle);
                    }
                }
            } else {
                FirebaseAnalytics firebaseAnalytics3 = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
                if (firebaseAnalytics3 != null) {
                    firebaseAnalytics3.logEvent(str, null);
                }
            }
        }
        if (list.contains(1)) {
            if (map != null && !map.isEmpty()) {
                Bundle bundle2 = new Bundle();
                for (Map.Entry<String, String> entry2 : map.entrySet()) {
                    try {
                        bundle2.putString(entry2.getKey(), entry2.getValue());
                    } catch (Exception unused2) {
                    }
                }
                if (bundle2.isEmpty()) {
                    AppEventsLogger appEventsLogger = this.f5611Wwwwwwwwwwwwwwwwwwwwwww;
                    if (appEventsLogger != null) {
                        appEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null);
                        return;
                    }
                    return;
                }
                AppEventsLogger appEventsLogger2 = this.f5611Wwwwwwwwwwwwwwwwwwwwwww;
                if (appEventsLogger2 != null) {
                    appEventsLogger2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle2);
                    return;
                }
                return;
            }
            AppEventsLogger appEventsLogger3 = this.f5611Wwwwwwwwwwwwwwwwwwwwwww;
            if (appEventsLogger3 != null) {
                appEventsLogger3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        double d;
        Activity activity = this.f5610Wwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.AD_PLATFORM, (String) methodCall.argument(FirebaseAnalytics.Param.AD_PLATFORM));
                bundle.putString(FirebaseAnalytics.Param.AD_SOURCE, (String) methodCall.argument(FirebaseAnalytics.Param.AD_SOURCE));
                bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, (String) methodCall.argument(FirebaseAnalytics.Param.AD_FORMAT));
                bundle.putString(FirebaseAnalytics.Param.AD_UNIT_NAME, (String) methodCall.argument(FirebaseAnalytics.Param.AD_UNIT_NAME));
                bundle.putString("currency", (String) methodCall.argument("currency"));
                Double d2 = (Double) methodCall.argument("value");
                if (d2 != null) {
                    d = d2.doubleValue();
                } else {
                    d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
                bundle.putDouble("value", d);
                FirebaseAnalytics.getInstance(activity).logEvent("Total_Ads_Revenue_001", bundle);
            } catch (Exception unused) {
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        double d;
        Activity activity = this.f5610Wwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.AD_PLATFORM, (String) methodCall.argument(FirebaseAnalytics.Param.AD_PLATFORM));
                bundle.putString(FirebaseAnalytics.Param.AD_SOURCE, (String) methodCall.argument(FirebaseAnalytics.Param.AD_SOURCE));
                bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, (String) methodCall.argument(FirebaseAnalytics.Param.AD_FORMAT));
                bundle.putString(FirebaseAnalytics.Param.AD_UNIT_NAME, (String) methodCall.argument(FirebaseAnalytics.Param.AD_UNIT_NAME));
                bundle.putString("currency", (String) methodCall.argument("currency"));
                Double d2 = (Double) methodCall.argument("value");
                if (d2 != null) {
                    d = d2.doubleValue();
                } else {
                    d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
                bundle.putDouble("value", d);
                String str = (String) methodCall.argument("precisionType");
                if (str != null && !StringsKt.isBlank(str)) {
                    bundle.putString("precisionType", str);
                }
                FirebaseAnalytics.getInstance(activity).logEvent("Ad_Impression_Revenue", bundle);
            } catch (Exception unused) {
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        double d;
        if (this.f5610Wwwwwwwwwwwwwwwwwwwwww != null) {
            try {
                Double d2 = (Double) methodCall.argument("value");
                if (d2 != null) {
                    d = d2.doubleValue();
                } else {
                    d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.AD_PLATFORM, (String) methodCall.argument(FirebaseAnalytics.Param.AD_PLATFORM));
                bundle.putString(FirebaseAnalytics.Param.AD_SOURCE, (String) methodCall.argument(FirebaseAnalytics.Param.AD_SOURCE));
                bundle.putString(FirebaseAnalytics.Param.AD_FORMAT, (String) methodCall.argument(FirebaseAnalytics.Param.AD_FORMAT));
                bundle.putString(FirebaseAnalytics.Param.AD_UNIT_NAME, (String) methodCall.argument(FirebaseAnalytics.Param.AD_UNIT_NAME));
                bundle.putString("fb_currency", (String) methodCall.argument("currency"));
                AppEventsLogger appEventsLogger = this.f5611Wwwwwwwwwwwwwwwwwwwwwww;
                if (appEventsLogger != null) {
                    appEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("AdImpression", d, bundle);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Exception unused) {
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        double d;
        try {
            FirebaseAnalytics firebaseAnalytics = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
            double d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            if (firebaseAnalytics != null) {
                try {
                    d = Double.parseDouble(str);
                } catch (Exception e) {
                    e.printStackTrace();
                    d = 0.0d;
                }
                Bundle bundle = new Bundle();
                bundle.putDouble("value", d);
                bundle.putString("currency", "USD");
                FirebaseAnalytics firebaseAnalytics2 = this.f5612Wwwwwwwwwwwwwwwwwwwwwwww;
                if (firebaseAnalytics2 != null) {
                    firebaseAnalytics2.logEvent(FirebaseAnalytics.Event.PURCHASE, bundle);
                }
            }
            if (this.f5611Wwwwwwwwwwwwwwwwwwwwwww != null) {
                try {
                    d2 = Double.parseDouble(str);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                AppEventsLogger appEventsLogger = this.f5611Wwwwwwwwwwwwwwwwwwwwwww;
                if (appEventsLogger != null) {
                    appEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BigDecimal.valueOf(d2), Currency.getInstance("USD"));
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        Activity activity = this.f5610Wwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            try {
                this.f5612Wwwwwwwwwwwwwwwwwwwwwwww = FirebaseAnalytics.getInstance(activity);
            } catch (Exception unused) {
            }
            try {
                FacebookSdk.Kkkkkkkk(true);
                FacebookSdk.Kkkkkkkkkk(true);
                AppEventsLogger.Companion companion = AppEventsLogger.Companion;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity.getApplication());
                this.f5611Wwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
            } catch (Exception unused2) {
            }
            result.success(null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        String str = this.f5608Wwwwwwwwwwwwwwwwwwww;
        if (str == null || StringsKt.isBlank(str)) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDReportPlugin$getFirebaseAppInstanceId$1(this, result, null), 3, null);
            return;
        }
        try {
            result.success(this.f5608Wwwwwwwwwwwwwwwwwwww);
        } catch (Throwable unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        String str = this.f5609Wwwwwwwwwwwwwwwwwwwww;
        if (str == null || StringsKt.isBlank(str)) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDReportPlugin$getFBAnonId$1(this, result, null), 3, null);
        } else {
            result.success(this.f5609Wwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5610Wwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_report_plugin");
        this.f5613Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5610Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5613Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        String str = methodCall.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1306578020:
                    if (str.equals("reportAdRevenueToFirebaseWithTaichi001")) {
                        Wwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -966098668:
                    if (str.equals("getFirebaseAppInstanceId")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                    return;
                case -441780619:
                    if (str.equals("reportAdRevenueToFirebaseWithTaichi")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        Wwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -270512698:
                    if (str.equals("reportEvent")) {
                        try {
                            String str2 = (String) methodCall.argument("eventName");
                            if (str2 == null) {
                                str2 = "";
                            }
                            Map<String, String> map = (Map) methodCall.argument("paramsMap");
                            List<Integer> list = (List) methodCall.argument("type");
                            if (list == null) {
                                list = new ArrayList<>();
                            }
                            Wwwwwwwwwwwwwwwwwwwwwww(str2, map, list);
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    return;
                case -132474311:
                    if (str.equals("getFBAnonId")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                    return;
                case 3237136:
                    if (str.equals("init")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                    return;
                case 90552074:
                    if (str.equals("reportWatchProgressToFirebase")) {
                        Wwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case 1203101532:
                    if (str.equals("rechargeSuccess")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall.arguments.toString());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
