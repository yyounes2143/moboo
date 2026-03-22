package com.fluttercandies.flutter_image_compress;

import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.fluttercandies.flutter_image_compress.core.CompressFileHandler;
import com.fluttercandies.flutter_image_compress.core.CompressListHandler;
import com.fluttercandies.flutter_image_compress.format.FormatRegister;
import com.fluttercandies.flutter_image_compress.handle.common.CommonHandler;
import com.fluttercandies.flutter_image_compress.handle.heif.HeifHandler;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "<init>", "()V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)I", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Companion", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageCompressPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f7259Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f7260Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f7261Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;", "", "<init>", "()V", "", "showLog", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setShowLog", "(Z)V", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ImageCompressPlugin.f7259Wwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    public ImageCompressPlugin() {
        FormatRegister formatRegister = FormatRegister.INSTANCE;
        formatRegister.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CommonHandler(0));
        formatRegister.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CommonHandler(1));
        formatRegister.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new HeifHandler());
        formatRegister.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CommonHandler(3));
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        f7259Wwwwwwwwwwwwwwwwwwwwwww = Intrinsics.areEqual((Boolean) methodCall.arguments(), Boolean.TRUE);
        return 1;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f7261Wwwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_image_compress");
        this.f7260Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f7260Wwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f7260Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        String str = methodCall.method;
        if (str != null) {
            Context context = null;
            switch (str.hashCode()) {
                case -129880033:
                    if (str.equals("compressWithFileAndGetFile")) {
                        CompressFileHandler compressFileHandler = new CompressFileHandler(methodCall, result);
                        Context context2 = this.f7261Wwwwwwwwwwwwwwwwwwwwwwwww;
                        if (context2 != null) {
                            context = context2;
                        }
                        compressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(context);
                        return;
                    }
                    break;
                case 86054116:
                    if (str.equals("compressWithFile")) {
                        CompressFileHandler compressFileHandler2 = new CompressFileHandler(methodCall, result);
                        Context context3 = this.f7261Wwwwwwwwwwwwwwwwwwwwwwwww;
                        if (context3 != null) {
                            context = context3;
                        }
                        compressFileHandler2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                        return;
                    }
                    break;
                case 86233094:
                    if (str.equals("compressWithList")) {
                        CompressListHandler compressListHandler = new CompressListHandler(methodCall, result);
                        Context context4 = this.f7261Wwwwwwwwwwwwwwwwwwwwwwwww;
                        if (context4 != null) {
                            context = context4;
                        }
                        compressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                        return;
                    }
                    break;
                case 1262746611:
                    if (str.equals("getSystemVersion")) {
                        result.success(Integer.valueOf(Build.VERSION.SDK_INT));
                        return;
                    }
                    break;
                case 2067272455:
                    if (str.equals("showLog")) {
                        result.success(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall)));
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }
}
