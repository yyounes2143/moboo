package com.example.disk_space_2;

import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.example.disk_space_2.DiskSpace_2Plugin;
import com.mbridge.msdk.MBridgeConstans;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\tJ-\u0010\u0017\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001e\u0010\u001aR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010'¨\u0006)"}, d2 = {"Lcom/example/disk_space_2/DiskSpace_2Plugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "flutterPluginBinding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "binding", "onDetachedFromEngine", "", "errorMessage", "Lkotlin/Function0;", "", "operation", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "()D", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)D", "Wwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ExecutorService;", "executor", "Landroid/os/Handler;", "Landroid/os/Handler;", "mainHandler", "disk_space_2_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DiskSpace_2Plugin implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5846Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExecutorService f5845Wwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadExecutor();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f5844Wwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    public static final double Wwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin diskSpace_2Plugin, String str) {
        return diskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public static final double Wwwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin diskSpace_2Plugin) {
        return diskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwww();
    }

    public static final double Wwwwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin diskSpace_2Plugin) {
        return diskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str, Exception exc) {
        result.error("DISK_SPACE_ERROR", str + ": " + exc.getMessage(), null);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, double d) {
        result.success(Double.valueOf(d));
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Function0 function0, DiskSpace_2Plugin diskSpace_2Plugin, final MethodChannel.Result result, final String str) {
        try {
            final double doubleValue = ((Number) function0.invoke()).doubleValue();
            diskSpace_2Plugin.f5844Wwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, doubleValue);
                }
            });
        } catch (Exception e) {
            diskSpace_2Plugin.f5844Wwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, str, e);
                }
            });
        }
    }

    public final double Wwwwwwwwwwwwwwwwwwwwww() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((float) (statFs.getBlockSizeLong() * statFs.getBlockCountLong())) / 1048576.0f;
    }

    public final double Wwwwwwwwwwwwwwwwwwwwwww(String str) {
        StatFs statFs = new StatFs(str);
        return ((float) (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong())) / 1048576.0f;
    }

    public final double Wwwwwwwwwwwwwwwwwwwwwwww() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((float) (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong())) / 1048576.0f;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(final MethodChannel.Result result, final String str, final Function0<Double> function0) {
        this.f5845Wwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Function0.this, this, result, str);
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "disk_space_2");
        this.f5846Wwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f5845Wwwwwwwwwwwwwwwwwwwwwwww.shutdown();
        MethodChannel methodChannel = this.f5846Wwwwwwwwwwwwwwwwwwwwwwwww;
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
                case -1687221785:
                    if (str.equals("getFreeDiskSpaceForPath")) {
                        final String str2 = (String) methodCall.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
                        if (str2 != null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result, "Failed to get free disk space for path", new Function0() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    double Wwwwwwwwwwwwwwwwwww2;
                                    Wwwwwwwwwwwwwwwwwww2 = DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin.this, str2);
                                    return Double.valueOf(Wwwwwwwwwwwwwwwwwww2);
                                }
                            });
                            return;
                        } else {
                            result.error("INVALID_ARGUMENT", "Path is required", null);
                            return;
                        }
                    }
                    break;
                case -835310425:
                    if (str.equals("getFreeDiskSpace")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result, "Failed to get free disk space", new Function0() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                double Wwwwwwwwwwwwwwwwwwwww2;
                                Wwwwwwwwwwwwwwwwwwwww2 = DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin.this);
                                return Double.valueOf(Wwwwwwwwwwwwwwwwwwwww2);
                            }
                        });
                        return;
                    }
                    break;
                case 609971067:
                    if (str.equals("getTotalDiskSpace")) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result, "Failed to get total disk space", new Function0() { // from class: Wwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                double Wwwwwwwwwwwwwwwwwwww2;
                                Wwwwwwwwwwwwwwwwwwww2 = DiskSpace_2Plugin.Wwwwwwwwwwwwwwwwwwww(DiskSpace_2Plugin.this);
                                return Double.valueOf(Wwwwwwwwwwwwwwwwwwww2);
                            }
                        });
                        return;
                    }
                    break;
                case 1385449135:
                    if (str.equals("getPlatformVersion")) {
                        result.success("Android " + Build.VERSION.RELEASE);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }
}
