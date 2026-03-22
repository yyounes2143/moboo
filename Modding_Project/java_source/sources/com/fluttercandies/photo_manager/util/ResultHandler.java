package com.fluttercandies.photo_manager.util;

import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.fluttercandies.photo_manager.util.ResultHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/fluttercandies/photo_manager/util/ResultHandler;", "", "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "<init>", "(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V", "any", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "", "code", "message", "obj", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel$Result;", "getResult", "()Lio/flutter/plugin/common/MethodChannel$Result;", "setResult", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lio/flutter/plugin/common/MethodCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "isReplied", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ResultHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f7490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodCall f7492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel.Result f7493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;", "", "<init>", "()V", "handler", "Landroid/os/Handler;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ResultHandler(@NotNull MethodChannel.Result result, @NotNull MethodCall methodCall) {
        this.f7493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = result;
        this.f7492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodCall;
        f7490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hasMessages(0);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str, String str2, Object obj) {
        result.error(str, str2, obj);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(ResultHandler resultHandler, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, obj);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, Object obj) {
        try {
            result.success(obj);
        } catch (IllegalStateException unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        result.notImplemented();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str, @Nullable final String str2, @Nullable final Object obj) {
        if (this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        final MethodChannel.Result result = this.f7493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        f7490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, str, str2, obj);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable final Object obj) {
        if (this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        final MethodChannel.Result result = this.f7493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        f7490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, obj);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f7491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        final MethodChannel.Result result = this.f7493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        f7490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this);
            }
        });
    }

    @NotNull
    public final MethodCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
