package com.changdu.mobovideo.googleengage;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.googleengage.data.ContentModel;
import com.changdu.mobovideo.utils.GsonUtil;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import j$.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0016\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onDetachedFromActivityForConfigChanges", "onReattachedToActivityForConfigChanges", "onDetachedFromActivity", "Landroid/content/Intent;", "intent", "", "onNewIntent", "(Landroid/content/Intent;)Z", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "mChannel", "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;", "mEngageServiceManager", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "mActivity", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GoogleEngagePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.NewIntentListener {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f5456Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EngageServiceManager f5457Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5458Wwwwwwwwwwwwwwwwwwwwwwwww;

    public static final Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, boolean z, String str) {
        result.success(Boolean.valueOf(z));
        return Unit.INSTANCE;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5456Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        activityPluginBinding.addOnNewIntentListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5457Wwwwwwwwwwwwwwwwwwwwwwww = new EngageServiceManager(flutterPluginBinding.getApplicationContext());
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.changdu.mobovideo.googleengage");
        this.f5458Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f5456Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f5456Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5458Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel == null) {
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull final MethodChannel.Result result) {
        Intent intent;
        String dataString;
        Intent intent2;
        Uri data;
        String str = methodCall.method;
        EngageServiceManager engageServiceManager = null;
        r1 = null;
        r1 = null;
        String str2 = null;
        EngageServiceManager engageServiceManager2 = null;
        EngageServiceManager engageServiceManager3 = null;
        EngageServiceManager engageServiceManager4 = null;
        if (str != null) {
            switch (str.hashCode()) {
                case -1754847024:
                    if (str.equals("updatePublishData")) {
                        ContentModel contentModel = (ContentModel) GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall.arguments.toString(), ContentModel.class);
                        if (contentModel != null) {
                            EngageServiceManager engageServiceManager5 = this.f5457Wwwwwwwwwwwwwwwwwwwwwwww;
                            if (engageServiceManager5 != null) {
                                engageServiceManager = engageServiceManager5;
                            }
                            engageServiceManager.Wwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), contentModel.getDataList());
                            return;
                        }
                        return;
                    }
                    break;
                case -1195049923:
                    if (str.equals("updateRecommendData")) {
                        Objects.toString(methodCall.arguments);
                        ContentModel contentModel2 = (ContentModel) GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall.arguments.toString(), ContentModel.class);
                        if (contentModel2 != null) {
                            contentModel2.toString();
                            EngageServiceManager engageServiceManager6 = this.f5457Wwwwwwwwwwwwwwwwwwwwwwww;
                            if (engageServiceManager6 != null) {
                                engageServiceManager4 = engageServiceManager6;
                            }
                            engageServiceManager4.Wwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), contentModel2.getDataList());
                            return;
                        }
                        return;
                    }
                    break;
                case -375738006:
                    if (str.equals("updateContinuationData")) {
                        ContentModel contentModel3 = (ContentModel) GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall.arguments.toString(), ContentModel.class);
                        if (contentModel3 != null) {
                            EngageServiceManager engageServiceManager7 = this.f5457Wwwwwwwwwwwwwwwwwwwwwwww;
                            if (engageServiceManager7 != null) {
                                engageServiceManager3 = engageServiceManager7;
                            }
                            engageServiceManager3.Wwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), contentModel3.getDataList());
                            return;
                        }
                        return;
                    }
                    break;
                case 890696386:
                    if (str.equals("checkConnect")) {
                        EngageServiceManager engageServiceManager8 = this.f5457Wwwwwwwwwwwwwwwwwwwwwwww;
                        if (engageServiceManager8 != null) {
                            engageServiceManager2 = engageServiceManager8;
                        }
                        engageServiceManager2.Wwwwwwwwwwwwwwwwwwwwwwwww(new Function2() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GoogleEngagePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, ((Boolean) obj).booleanValue(), (String) obj2);
                                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                        });
                        return;
                    }
                    break;
                case 931846798:
                    if (str.equals("checkInitAction")) {
                        Activity activity = this.f5456Wwwwwwwwwwwwwwwwwwwwwww;
                        if (activity != null && (intent = activity.getIntent()) != null && (dataString = intent.getDataString()) != null && StringsKt.startsWith$default(dataString, "moboreelsgoogleengage", false, 2, (Object) null)) {
                            MethodChannel methodChannel = this.f5458Wwwwwwwwwwwwwwwwwwwwwwwww;
                            if (methodChannel == null) {
                                methodChannel = null;
                            }
                            Activity activity2 = this.f5456Wwwwwwwwwwwwwwwwwwwwwww;
                            if (activity2 != null && (intent2 = activity2.getIntent()) != null && (data = intent2.getData()) != null) {
                                str2 = data.toString();
                            }
                            methodChannel.invokeMethod("invokeGoogleEngageAction", str2);
                            return;
                        }
                        return;
                    }
                    break;
            }
        }
        result.success(null);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(@NotNull Intent intent) {
        String dataString = intent.getDataString();
        if (dataString != null) {
            String str = null;
            if (StringsKt.startsWith$default(dataString, "moboreelsgoogleengage", false, 2, (Object) null)) {
                MethodChannel methodChannel = this.f5458Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel == null) {
                    methodChannel = null;
                }
                Uri data = intent.getData();
                if (data != null) {
                    str = data.toString();
                }
                methodChannel.invokeMethod("invokeGoogleEngageAction", str);
            }
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        this.f5456Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding.getActivity();
        activityPluginBinding.addOnNewIntentListener(this);
    }
}
