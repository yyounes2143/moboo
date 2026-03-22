package dev.fluttercommunity.plus.share;

import androidx.core.app.NotificationCompat;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Ldev/fluttercommunity/plus/share/MethodCallHandler;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Ldev/fluttercommunity/plus/share/Share;", "share", "Ldev/fluttercommunity/plus/share/ShareSuccessManager;", "manager", "<init>", "(Ldev/fluttercommunity/plus/share/Share;Ldev/fluttercommunity/plus/share/ShareSuccessManager;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "isWithResult", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZLio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ldev/fluttercommunity/plus/share/Share;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ldev/fluttercommunity/plus/share/ShareSuccessManager;", "share_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMethodCallHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MethodCallHandler.kt\ndev/fluttercommunity/plus/share/MethodCallHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"})
/* loaded from: classes6.dex */
public final class MethodCallHandler implements MethodChannel.MethodCallHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareSuccessManager f11141Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Share f11142Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MethodCallHandler(@NotNull Share share, @NotNull ShareSuccessManager shareSuccessManager) {
        this.f11142Wwwwwwwwwwwwwwwwwwwwwwwww = share;
        this.f11141Wwwwwwwwwwwwwwwwwwwwwwww = shareSuccessManager;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, MethodChannel.Result result) {
        if (!z) {
            result.success("dev.fluttercommunity.plus/share/unavailable");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) throws IllegalArgumentException {
        if (methodCall.arguments instanceof Map) {
            return;
        }
        throw new IllegalArgumentException("Map arguments expected");
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
        this.f11141Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
        try {
            if (Intrinsics.areEqual(methodCall.method, "share")) {
                this.f11142Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww((Map) methodCall.arguments(), true);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true, result);
                return;
            }
            result.notImplemented();
        } catch (Throwable th) {
            this.f11141Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            result.error("Share failed", th.getMessage(), th);
        }
    }
}
