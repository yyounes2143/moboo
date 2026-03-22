package com.fluttercandies.photo_manager.core;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.bumptech.glide.Glide;
import com.fluttercandies.photo_manager.constant.Methods;
import com.fluttercandies.photo_manager.core.PhotoManagerPlugin;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.ThumbLoadOption;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.utils.ConvertUtils;
import com.fluttercandies.photo_manager.permission.PermissionsListener;
import com.fluttercandies.photo_manager.permission.PermissionsUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 <2\u00020\u0001:\u0001<B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010!\u001a\u00020\u001f*\u00020\u000f2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u001b\u0010$\u001a\u00020#*\u00020\u000f2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b$\u0010%J\u0013\u0010'\u001a\u00020&*\u00020\u000fH\u0002¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010)R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010*R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0017\u00101\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b\u0019\u0010.\u001a\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u00107R\u0016\u0010;\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006="}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Landroid/content/Context;", "applicationContext", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "Landroid/app/Activity;", "activity", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "<init>", "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "", "needLocationPermission", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V", "", "key", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "Landroid/content/Context;", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;", "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;", "deleteManager", "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;", "notifyChannel", "Lcom/fluttercandies/photo_manager/core/PhotoManager;", "Lcom/fluttercandies/photo_manager/core/PhotoManager;", "photoManager", "Wwwwwwwwwwwwwwwwwww", "Z", "ignorePermissionCheck", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPhotoManagerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoManagerPlugin.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,638:1\n1563#2:639\n1634#2,3:640\n1563#2:643\n1634#2,3:644\n*S KotlinDebug\n*F\n+ 1 PhotoManagerPlugin.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerPlugin\n*L\n560#1:639\n560#1:640,3\n583#1:643\n583#1:644,3\n*E\n"})
/* loaded from: classes4.dex */
public final class PhotoManagerPlugin implements MethodChannel.MethodCallHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ThreadPoolExecutor f7387Wwwwwwwwwwwwwwwwww = new ThreadPoolExecutor(8, Integer.MAX_VALUE, 1, TimeUnit.MINUTES, new LinkedBlockingQueue());

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7388Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PhotoManager f7389Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PhotoManagerNotifyChannel f7390Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PhotoManagerDeleteManager f7391Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PermissionsUtils f7392Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f7393Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f7394Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;", "", "<init>", "()V", "Lkotlin/Function0;", "", "runnable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/jvm/functions/Function0;)V", "", "POOL_SIZE", "I", "Ljava/util/concurrent/ThreadPoolExecutor;", "threadPool", "Ljava/util/concurrent/ThreadPoolExecutor;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Function0 function0) {
            function0.invoke();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Function0<Unit> function0) {
            PhotoManagerPlugin.f7387Wwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.fluttercandies.photo_manager.core.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoManagerPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Function0.this);
                }
            });
        }

        public Companion() {
        }
    }

    public PhotoManagerPlugin(@NotNull Context context, @NotNull BinaryMessenger binaryMessenger, @Nullable Activity activity, @NotNull PermissionsUtils permissionsUtils) {
        this.f7394Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f7393Wwwwwwwwwwwwwwwwwwwwwwww = activity;
        this.f7392Wwwwwwwwwwwwwwwwwwwwwww = permissionsUtils;
        permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwww(new PermissionsListener() { // from class: com.fluttercandies.photo_manager.core.PhotoManagerPlugin.1
            @Override // com.fluttercandies.photo_manager.permission.PermissionsListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list) {
            }

            @Override // com.fluttercandies.photo_manager.permission.PermissionsListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list, List<String> list2, List<String> list3) {
            }
        });
        this.f7391Wwwwwwwwwwwwwwwwwwwwww = new PhotoManagerDeleteManager(context, this.f7393Wwwwwwwwwwwwwwwwwwwwwwww);
        this.f7390Wwwwwwwwwwwwwwwwwwwww = new PhotoManagerNotifyChannel(context, binaryMessenger, new Handler(Looper.getMainLooper()));
        this.f7389Wwwwwwwwwwwwwwwwwwww = new PhotoManager(context);
    }

    public static final Unit Wwwwwwwwwwwwwwwwwwwww(PhotoManagerPlugin photoManagerPlugin, ResultHandler resultHandler) {
        try {
            photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, photoManagerPlugin.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(photoManagerPlugin.f7394Wwwwwwwwwwwwwwwwwwwwwwwww));
        } catch (Exception e) {
            MethodCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method;
            Object obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.arguments;
            String message = e.getMessage();
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww("The " + str + " method has an error: " + message, ExceptionsKt.stackTraceToString(e), obj);
        }
        return Unit.INSTANCE;
    }

    public static final Unit Wwwwwwwwwwwwwwwwwwwwwww(PhotoManagerPlugin photoManagerPlugin, ResultHandler resultHandler) {
        photoManagerPlugin.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        return Unit.INSTANCE;
    }

    public final void Wwwwwwwwwwwwwwwwwwww(final ResultHandler resultHandler) {
        MethodCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method;
        if (Intrinsics.areEqual(str, "requestPermissionExtend")) {
            Map map = (Map) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("androidPermission");
            final int intValue = ((Integer) map.get("type")).intValue();
            final boolean booleanValue = ((Boolean) map.get("mediaLocation")).booleanValue();
            this.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(this.f7393Wwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwww(new PermissionsListener() { // from class: com.fluttercandies.photo_manager.core.PhotoManagerPlugin$handlePermissionMethod$1
                @Override // com.fluttercandies.photo_manager.permission.PermissionsListener
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list, List<String> list2, List<String> list3) {
                    PermissionsUtils permissionsUtils;
                    permissionsUtils = this.f7392Wwwwwwwwwwwwwwwwwwwwwww;
                    ResultHandler.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue, booleanValue).getValue()));
                }

                @Override // com.fluttercandies.photo_manager.permission.PermissionsListener
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list) {
                    PermissionsUtils permissionsUtils;
                    ResultHandler resultHandler2 = ResultHandler.this;
                    permissionsUtils = this.f7392Wwwwwwwwwwwwwwwwwwwwwww;
                    resultHandler2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue, booleanValue).getValue()));
                }
            }).Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7394Wwwwwwwwwwwwwwwwwwwwwwwww, intValue, booleanValue);
        } else if (Intrinsics.areEqual(str, "presentLimited")) {
            this.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("type")).intValue(), resultHandler);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(final ResultHandler resultHandler) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Function0() { // from class: com.fluttercandies.photo_manager.core.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Wwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwww2 = PhotoManagerPlugin.Wwwwwwwwwwwwwwwwwwwww(PhotoManagerPlugin.this, resultHandler);
                return Wwwwwwwwwwwwwwwwwwwww2;
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(final ResultHandler resultHandler) {
        boolean z;
        MethodCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -2095961652:
                    if (str.equals("getPermissionState")) {
                        Map map = (Map) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("androidPermission");
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(this.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) map.get("type")).intValue(), ((Boolean) map.get("mediaLocation")).booleanValue()).getValue()));
                        return;
                    }
                    return;
                case -1914421335:
                    if (str.equals("systemVersion")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String.valueOf(Build.VERSION.SDK_INT));
                        return;
                    }
                    return;
                case -582375106:
                    if (str.equals("forceOldApi")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwww(true);
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                        return;
                    }
                    return;
                case 107332:
                    if (str.equals("log")) {
                        LogUtils logUtils = LogUtils.INSTANCE;
                        Boolean bool = (Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.arguments();
                        if (bool != null) {
                            z = bool.booleanValue();
                        } else {
                            z = false;
                        }
                        logUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                        return;
                    }
                    return;
                case 1138660423:
                    if (str.equals("ignorePermissionCheck")) {
                        Boolean bool2 = (Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("ignore");
                        this.f7388Wwwwwwwwwwwwwwwwwww = bool2.booleanValue();
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bool2);
                        return;
                    }
                    return;
                case 1541932953:
                    if (str.equals("clearFileCache")) {
                        Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7394Wwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Function0() { // from class: com.fluttercandies.photo_manager.core.Wwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                Unit Wwwwwwwwwwwwwwwwwwwwwww2;
                                Wwwwwwwwwwwwwwwwwwwwwww2 = PhotoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwww(PhotoManagerPlugin.this, resultHandler);
                                return Wwwwwwwwwwwwwwwwwwwwwww2;
                            }
                        });
                        return;
                    }
                    return;
                case 1789114534:
                    if (str.equals("openSetting")) {
                        this.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7393Wwwwwwwwwwwwwwwwwwwwwwww);
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                        return;
                    }
                    return;
                case 1920532602:
                    if (str.equals("releaseMemoryCache")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(ResultHandler resultHandler, boolean z) {
        String str;
        String str2;
        String str3;
        boolean booleanValue;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        Object obj;
        MethodCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String str10 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method;
        if (str10 != null) {
            switch (str10.hashCode()) {
                case -2060338679:
                    if (str10.equals("saveImageWithPath")) {
                        try {
                            String str11 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
                            String str12 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_TITLE);
                            if (str12 == null) {
                                str = "";
                            } else {
                                str = str12;
                            }
                            String str13 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_DESC);
                            if (str13 == null) {
                                str2 = "";
                            } else {
                                str2 = str13;
                            }
                            String str14 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("relativePath");
                            if (str14 == null) {
                                str3 = "";
                            } else {
                                str3 = str14;
                            }
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwww(str11, str, str2, str3, (Integer) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("orientation"))));
                            return;
                        } catch (Exception e) {
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("save image error", e);
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method, null, e);
                            return;
                        }
                    }
                    break;
                case -1793329916:
                    if (str10.equals("removeNoExistsAssets")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww(resultHandler);
                        return;
                    }
                    break;
                case -1701237244:
                    if (str10.equals("getAssetCountFromPath")) {
                        String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "id");
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "type");
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        return;
                    }
                    break;
                case -1491271588:
                    if (str10.equals("getColumnNames")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(resultHandler);
                        return;
                    }
                    break;
                case -1283288098:
                    if (str10.equals("getLatLngAndroidQ")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id")));
                        return;
                    }
                    break;
                case -1167306339:
                    if (str10.equals("getAssetListPaged")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("type")).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("page")).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("size")).intValue(), Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2))));
                        return;
                    }
                    break;
                case -1165452507:
                    if (str10.equals("getAssetListRange")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "id"), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "type"), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "start"), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "end"), Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2))));
                        return;
                    }
                    break;
                case -1039689911:
                    if (str10.equals("notify")) {
                        if (Intrinsics.areEqual((Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("notify"), Boolean.TRUE)) {
                            this.f7390Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        } else {
                            this.f7390Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        return;
                    }
                    break;
                case -1033607060:
                    if (str10.equals("moveToTrash")) {
                        try {
                            List list = (List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("ids");
                            if (Build.VERSION.SDK_INT >= 30) {
                                List<String> list2 = list;
                                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                                for (String str15 : list2) {
                                    arrayList.add(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(str15));
                                }
                                this.f7391Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(CollectionsKt.toList(arrayList), resultHandler);
                                return;
                            }
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("The API 29 or lower have not the IS_TRASHED row in MediaStore.");
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww("The api not support 29 or lower.", "", new UnsupportedOperationException("The api cannot be used in 29 or lower."));
                            return;
                        } catch (Exception e2) {
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("deleteWithIds failed", e2);
                            ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "deleteWithIds failed", null, null, 6, null);
                            return;
                        }
                    }
                    break;
                case -948382752:
                    if (str10.equals("requestCacheAssetsThumb")) {
                        ThumbLoadOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ThumbLoadOption.f7427Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("option"));
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww((List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("ids"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, resultHandler);
                        return;
                    }
                    break;
                case -886445535:
                    if (str10.equals("getFullFile")) {
                        String str16 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id");
                        if (!z) {
                            booleanValue = false;
                        } else {
                            booleanValue = ((Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("isOrigin")).booleanValue();
                        }
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(str16, booleanValue, resultHandler);
                        return;
                    }
                    break;
                case -626940993:
                    if (str10.equals("moveAssetToPath")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("assetId"), (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("albumId"), resultHandler);
                        return;
                    }
                    break;
                case -151967598:
                    if (str10.equals("fetchPathProperties")) {
                        int intValue = ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("type")).intValue();
                        FilterOption Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        AssetPathEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"), intValue, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww3)));
                            return;
                        } else {
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                            return;
                        }
                    }
                    break;
                case 163601886:
                    if (str10.equals("saveImage")) {
                        try {
                            byte[] bArr = (byte[]) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("image");
                            String str17 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("filename");
                            if (str17 == null) {
                                str4 = "";
                            } else {
                                str4 = str17;
                            }
                            String str18 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_TITLE);
                            if (str18 == null) {
                                str5 = "";
                            } else {
                                str5 = str18;
                            }
                            String str19 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_DESC);
                            if (str19 == null) {
                                str6 = "";
                            } else {
                                str6 = str19;
                            }
                            String str20 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("relativePath");
                            if (str20 == null) {
                                str7 = "";
                            } else {
                                str7 = str20;
                            }
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwww(bArr, str4, str5, str6, str7, (Integer) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("orientation"))));
                            return;
                        } catch (Exception e3) {
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("save image error", e3);
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method, null, e3);
                            return;
                        }
                    }
                    break;
                case 175491326:
                    if (str10.equals("saveVideo")) {
                        try {
                            String str21 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
                            String str22 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_TITLE);
                            String str23 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument(CampaignEx.JSON_KEY_DESC);
                            if (str23 == null) {
                                str8 = "";
                            } else {
                                str8 = str23;
                            }
                            String str24 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("relativePath");
                            if (str24 == null) {
                                str9 = "";
                            } else {
                                str9 = str24;
                            }
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwww(str21, str22, str8, str9, (Integer) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("orientation"))));
                            return;
                        } catch (Exception e4) {
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("save video error", e4);
                            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.method, null, e4);
                            return;
                        }
                    }
                    break;
                case 326673488:
                    if (str10.equals("fetchEntityProperties")) {
                        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"));
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            obj = ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        } else {
                            obj = null;
                        }
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
                        return;
                    }
                    break;
                case 624480877:
                    if (str10.equals("getAssetsByRange")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(resultHandler, Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "start"), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "end"), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "type"));
                        return;
                    }
                    break;
                case 857200492:
                    if (str10.equals("assetExists")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"), resultHandler);
                        return;
                    }
                    break;
                case 972925196:
                    if (str10.equals("cancelCacheRequests")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        return;
                    }
                    break;
                case 1063055279:
                    if (str10.equals("getOriginBytes")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"), resultHandler, z);
                        return;
                    }
                    break;
                case 1150344167:
                    if (str10.equals("deleteWithIds")) {
                        try {
                            List<String> list3 = (List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("ids");
                            int i = Build.VERSION.SDK_INT;
                            if (i >= 30) {
                                List<String> list4 = list3;
                                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
                                for (String str25 : list4) {
                                    arrayList2.add(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(str25));
                                }
                                this.f7391Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.toList(arrayList2), resultHandler);
                                return;
                            } else if (i == 29) {
                                HashMap<String, Uri> hashMap = new HashMap<>();
                                for (String str26 : list3) {
                                    hashMap.put(str26, this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(str26));
                                }
                                this.f7391Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(hashMap, resultHandler);
                                return;
                            } else {
                                this.f7391Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list3);
                                resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list3);
                                return;
                            }
                        } catch (Exception e5) {
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("deleteWithIds failed", e5);
                            ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "deleteWithIds failed", null, null, 6, null);
                            return;
                        }
                    }
                    break;
                case 1177116769:
                    if (str10.equals("getMediaUrl")) {
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(Long.parseLong((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id")), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("type")).intValue()));
                        return;
                    }
                    break;
                case 1375013309:
                    if (str10.equals("getAssetPathList")) {
                        int intValue2 = ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("type")).intValue();
                        boolean booleanValue2 = ((Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("hasAll")).booleanValue();
                        FilterOption Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(intValue2, booleanValue2, ((Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("onlyAll")).booleanValue(), Wwwwwwwwwwwwwwwwwwwwwwwwwww3)));
                        return;
                    }
                    break;
                case 1477946491:
                    if (str10.equals("copyAsset")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("assetId"), (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("galleryId"), resultHandler);
                        return;
                    }
                    break;
                case 1806009333:
                    if (str10.equals("getAssetCount")) {
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "type"));
                        return;
                    }
                    break;
                case 1966168096:
                    if (str10.equals("getThumb")) {
                        ThumbLoadOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ThumbLoadOption.f7427Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("option"));
                        this.f7389Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.argument("id"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, resultHandler);
                        return;
                    }
                    break;
            }
        }
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, String str) {
        return (String) methodCall.argument(str);
    }

    public final FilterOption Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) methodCall.argument("option"));
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, String str) {
        return ((Number) methodCall.argument(str)).intValue();
    }

    @NotNull
    public final PhotoManagerDeleteManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7391Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        this.f7393Wwwwwwwwwwwwwwwwwwwwwwww = activity;
        this.f7392Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(activity);
        this.f7391Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        ResultHandler resultHandler = new ResultHandler(result, methodCall);
        String str = methodCall.method;
        Methods.Companion companion = Methods.Companion;
        if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            Wwwwwwwwwwwwwwwwwwwwwwww(resultHandler);
        } else if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            Wwwwwwwwwwwwwwwwwwww(resultHandler);
        } else if (this.f7388Wwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwww(resultHandler);
        } else {
            Wwwwwwwwwwwwwwwwwwwwww(resultHandler);
        }
    }
}
