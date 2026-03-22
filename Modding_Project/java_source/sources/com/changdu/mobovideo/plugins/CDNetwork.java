package com.changdu.mobovideo.plugins;

import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.changdu.mobovideo.net.VideoHttpClient;
import com.changdu.mobovideo.utils.CoroutineUtil;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.ui.AdActivity;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u000bJ\u001f\u0010\u0012\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDNetwork;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "<init>", "()V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "onMethodCall", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDNetwork implements FlutterPlugin, MethodChannel.MethodCallHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static List<String> f5603Wwwwwwwwwwwwwwwwwwwwww = CollectionsKt.emptyList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5604Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5605Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5606Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/changdu/mobovideo/plugins/CDNetwork$Companion;", "", "<init>", "()V", "", "enableReport", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setEnableReport", "(Z)V", "enableReportDetail", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setEnableReportDetail", "", "", "reportHostList", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "setReportHostList", "(Ljava/util/List;)V", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return CDNetwork.f5603Wwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return CDNetwork.f5604Wwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return CDNetwork.f5605Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    private final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        boolean z;
        VideoHttpClient videoHttpClient = VideoHttpClient.INSTANCE;
        Boolean bool = (Boolean) methodCall.argument("enableProxy");
        boolean z2 = false;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        Boolean bool2 = (Boolean) methodCall.argument("debug");
        if (bool2 != null) {
            z2 = bool2.booleanValue();
        }
        videoHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, z2);
        result.success(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        boolean z;
        try {
            Boolean bool = (Boolean) methodCall.argument("enable");
            boolean z2 = false;
            if (bool != null) {
                z = bool.booleanValue();
            } else {
                z = false;
            }
            f5605Wwwwwwwwwwwwwwwwwwwwwwww = z;
            Boolean bool2 = (Boolean) methodCall.argument("needDetail");
            if (bool2 != null) {
                z2 = bool2.booleanValue();
            }
            f5604Wwwwwwwwwwwwwwwwwwwwwww = z2;
            List<String> list = (List) methodCall.argument("hostList");
            if (list == null) {
                list = CollectionsKt.emptyList();
            }
            f5603Wwwwwwwwwwwwwwwwwwwwww = list;
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDNetwork$request$1(methodCall, result, null), 3, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, MethodCall methodCall) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDNetwork$download$1(methodCall, result, null), 3, null);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "cd_network");
        this.f5606Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f5606Wwwwwwwwwwwwwwwwwwwwwwwww;
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
                case -1462356793:
                    if (str.equals("updateNetworkConfig")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
                        return;
                    }
                    return;
                case 3237136:
                    if (str.equals("init")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
                        return;
                    }
                    return;
                case 1095692943:
                    if (str.equals(AdActivity.REQUEST_KEY_EXTRA)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, methodCall);
                        return;
                    }
                    return;
                case 1427818632:
                    if (str.equals(NativeAdPresenter.DOWNLOAD)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result, methodCall);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
