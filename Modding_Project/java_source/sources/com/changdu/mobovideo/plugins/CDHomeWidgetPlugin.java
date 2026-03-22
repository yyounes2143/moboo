package com.changdu.mobovideo.plugins;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.homewidget.FollowHomeWidgetProvider;
import com.changdu.mobovideo.homewidget.RecommendHomeWidgetProvider;
import com.changdu.mobovideo.homewidget.SearchHomeWidgetProvider;
import com.changdu.mobovideo.homewidget.SignInHomeWidgetProvider;
import com.changdu.mobovideo.utils.CoroutineUtil;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u00015B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0016\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001e\u0010\u0012J\u0017\u0010\u001f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b!\u0010 J\u0017\u0010\"\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010 J\u0017\u0010#\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b#\u0010 J\u000f\u0010$\u001a\u00020\tH\u0002¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\tH\u0002¢\u0006\u0004\b%\u0010\u0006J\u000f\u0010&\u001a\u00020\tH\u0002¢\u0006\u0004\b&\u0010\u0006J\u000f\u0010'\u001a\u00020\tH\u0002¢\u0006\u0004\b'\u0010\u0006J\u0017\u0010(\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b*\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103¨\u00066"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Landroid/content/Intent;", "intent", "", "onNewIntent", "(Landroid/content/Intent;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Landroid/app/Activity;", "Landroid/app/Activity;", "activity", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCDHomeWidgetPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDHomeWidgetPlugin.kt\ncom/changdu/mobovideo/plugins/CDHomeWidgetPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n774#2:277\n865#2,2:278\n*S KotlinDebug\n*F\n+ 1 CDHomeWidgetPlugin.kt\ncom/changdu/mobovideo/plugins/CDHomeWidgetPlugin\n*L\n224#1:277\n224#1:278,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CDHomeWidgetPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.NewIntentListener {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5600Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5601Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5602Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$Companion;", "", "<init>", "()V", "RECOMMEND_CACHE_KEY", "", "SIGN_IN_CACHE_KEY", "SEARCH_CACHE_KEY", "FOLLOW_CACHE_KEY", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        SignInHomeWidgetProvider.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        SearchHomeWidgetProvider.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        RecommendHomeWidgetProvider.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FollowHomeWidgetProvider.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDHomeWidgetPlugin$setSignInHomeWidgetData$1(methodCall, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDHomeWidgetPlugin$setSearchHomeWidgetData$1(methodCall, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDHomeWidgetPlugin$setRecommendHomeWidgetData$1(methodCall, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDHomeWidgetPlugin$setFollowHomeWidgetData$1(methodCall, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 26) {
            Context context = this.f5600Wwwwwwwwwwwwwwwwwwwwwww;
            if (context == null) {
                context = null;
            }
            z = AppWidgetManager.getInstance(context.getApplicationContext()).isRequestPinAppWidgetSupported();
            result.success(Boolean.valueOf(z));
        }
        z = false;
        result.success(Boolean.valueOf(z));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        ComponentName componentName;
        boolean isRequestPinAppWidgetSupported;
        if (Build.VERSION.SDK_INT < 26) {
            result.success(Boolean.FALSE);
            return;
        }
        Object obj = methodCall.arguments;
        if (Intrinsics.areEqual(obj, "FollowHomeWidgetProvider")) {
            componentName = new ComponentName(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), FollowHomeWidgetProvider.class);
        } else if (Intrinsics.areEqual(obj, "RecommendHomeWidgetProvider")) {
            componentName = new ComponentName(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), RecommendHomeWidgetProvider.class);
        } else if (Intrinsics.areEqual(obj, "SearchHomeWidgetProvider")) {
            componentName = new ComponentName(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), SearchHomeWidgetProvider.class);
        } else if (Intrinsics.areEqual(obj, "SignInHomeWidgetProvider")) {
            componentName = new ComponentName(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), SignInHomeWidgetProvider.class);
        } else {
            componentName = null;
        }
        if (componentName != null) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f5601Wwwwwwwwwwwwwwwwwwwwwwww);
            isRequestPinAppWidgetSupported = appWidgetManager.isRequestPinAppWidgetSupported();
            if (isRequestPinAppWidgetSupported) {
                appWidgetManager.requestPinAppWidget(componentName, null, null);
            } else {
                result.success(Boolean.FALSE);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        List<AppWidgetProviderInfo> list;
        boolean z;
        Context context = this.f5600Wwwwwwwwwwwwwwwwwwwwwww;
        if (context == null) {
            context = null;
        }
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context.getApplicationContext());
        if (Build.VERSION.SDK_INT >= 26) {
            Context context2 = this.f5600Wwwwwwwwwwwwwwwwwwwwwww;
            if (context2 == null) {
                context2 = null;
            }
            list = appWidgetManager.getInstalledProvidersForPackage(context2.getPackageName(), null);
        } else {
            ArrayList arrayList = new ArrayList();
            for (Object obj : appWidgetManager.getInstalledProviders()) {
                String packageName = ((AppWidgetProviderInfo) obj).provider.getPackageName();
                Context context3 = this.f5600Wwwwwwwwwwwwwwwwwwwwwww;
                if (context3 == null) {
                    context3 = null;
                }
                if (Intrinsics.areEqual(packageName, context3.getPackageName())) {
                    arrayList.add(obj);
                }
            }
            list = arrayList;
        }
        for (AppWidgetProviderInfo appWidgetProviderInfo : list) {
            if (appWidgetManager.getAppWidgetIds(appWidgetProviderInfo.provider).length == 0) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (!z) {
                result.success(Boolean.TRUE);
                return;
            }
        }
        result.success(Boolean.FALSE);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5601Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        activityPluginBinding.addOnNewIntentListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_home_widget_plugin");
        this.f5602Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f5600Wwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5601Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f5601Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5602Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        Activity activity;
        Intent intent;
        String dataString;
        MethodChannel methodChannel;
        Intent intent2;
        Uri data;
        String str = methodCall.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -2106151968:
                    if (str.equals("setFollowHomeWidgetData")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -2077974450:
                    if (str.equals("updateSignInHomeWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    return;
                case -1714623951:
                    if (str.equals("setSignInHomeWidgetData")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -923421849:
                    if (str.equals("setRecommendHomeWidgetData")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -700517708:
                    if (str.equals("updateSearchHomeWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    return;
                case -692786602:
                    if (str.equals("updateRecommendHomeWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    return;
                case -670328425:
                    if (str.equals("setSearchHomeWidgetData")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case -270595176:
                    if (str.equals("isRequestPinShortcutSupported")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                    return;
                case 395874685:
                    if (str.equals("updateFollowHomeWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    return;
                case 931846798:
                    if (str.equals("checkInitAction") && (activity = this.f5601Wwwwwwwwwwwwwwwwwwwwwwww) != null && (intent = activity.getIntent()) != null && (dataString = intent.getDataString()) != null) {
                        String str2 = null;
                        if (StringsKt.startsWith$default(dataString, "moboreelshomewidget", false, 2, (Object) null) && (methodChannel = this.f5602Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                            Activity activity2 = this.f5601Wwwwwwwwwwwwwwwwwwwwwwww;
                            if (activity2 != null && (intent2 = activity2.getIntent()) != null && (data = intent2.getData()) != null) {
                                str2 = data.toString();
                            }
                            methodChannel.invokeMethod("invokeHomeWidgetAction", str2);
                            return;
                        }
                        return;
                    }
                    return;
                case 1639725664:
                    if (str.equals("createWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                        return;
                    }
                    return;
                case 1671651670:
                    if (str.equals("checkHasWidget")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(@NotNull Intent intent) {
        MethodChannel methodChannel;
        String dataString = intent.getDataString();
        if (dataString != null) {
            String str = null;
            if (StringsKt.startsWith$default(dataString, "moboreelshomewidget", false, 2, (Object) null) && (methodChannel = this.f5602Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                Uri data = intent.getData();
                if (data != null) {
                    str = data.toString();
                }
                methodChannel.invokeMethod("invokeHomeWidgetAction", str);
            }
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5601Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        activityPluginBinding.addOnNewIntentListener(this);
    }
}
