package com.fluttercandies.flutter_image_compress.core;

import android.os.Handler;
import android.os.Looper;
import com.fluttercandies.flutter_image_compress.core.ResultHandler;
import io.flutter.plugin.common.MethodChannel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b&\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;", "", "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "<init>", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "any", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel$Result;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "isReply", "Companion", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ResultHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel.Result f7267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f7265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ExecutorService f7264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newFixedThreadPool(8);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\u0003\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;", "", "<init>", "()V", "Ljava/util/concurrent/ExecutorService;", "threadPool", "Ljava/util/concurrent/ExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/ExecutorService;", "getThreadPool$annotations", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ResultHandler.f7264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    public ResultHandler(@Nullable MethodChannel.Result result) {
        this.f7267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = result;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, Object obj) {
        if (result != null) {
            result.success(obj);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable final Object obj) {
        if (this.f7266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f7266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        final MethodChannel.Result result = this.f7267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f7267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        f7265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, obj);
            }
        });
    }
}
