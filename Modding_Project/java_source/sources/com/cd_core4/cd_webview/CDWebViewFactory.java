package com.cd_core4.cd_webview;

import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/cd_core4/cd_webview/CDWebViewFactory;", "Lio/flutter/plugin/platform/PlatformViewFactory;", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "<init>", "(Lio/flutter/plugin/common/BinaryMessenger;)V", "Landroid/content/Context;", "p0", "", "p1", "", "p2", "Lio/flutter/plugin/platform/PlatformView;", "create", "(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/BinaryMessenger;", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDWebViewFactory extends PlatformViewFactory {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BinaryMessenger f5285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CDWebViewFactory(@NotNull BinaryMessenger binaryMessenger) {
        super(new StandardMessageCodec());
        this.f5285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    @NotNull
    public PlatformView create(@Nullable Context context, int i, @Nullable Object obj) {
        return new CDWebView(context, i, (Map) obj, this.f5285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
