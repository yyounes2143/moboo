package com.fluttercandies.image_editor.core;

import android.os.Handler;
import android.os.Looper;
import com.fluttercandies.image_editor.core.ResultHandler;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/fluttercandies/image_editor/core/ResultHandler;", "", "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "<init>", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "any", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "", "code", "message", "obj", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel$Result;", "Companion", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ResultHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f7287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel.Result f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/fluttercandies/image_editor/core/ResultHandler$Companion;", "", "<init>", "()V", "handler", "Landroid/os/Handler;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ResultHandler(@Nullable MethodChannel.Result result) {
        this.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = result;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str, String str2, Object obj) {
        if (result != null) {
            result.error(str, str2, obj);
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(ResultHandler resultHandler, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, obj);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, Object obj) {
        if (result != null) {
            result.success(obj);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResultHandler resultHandler) {
        MethodChannel.Result result = resultHandler.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (result != null) {
            result.notImplemented();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str, @Nullable final String str2, @Nullable final Object obj) {
        final MethodChannel.Result result = this.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        f7287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, str, str2, obj);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable final Object obj) {
        final MethodChannel.Result result = this.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f7288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        f7287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, obj);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        f7287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResultHandler.this);
            }
        });
    }
}
