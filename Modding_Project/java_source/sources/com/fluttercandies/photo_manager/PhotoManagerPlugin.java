package com.fluttercandies.photo_manager;

import com.fluttercandies.photo_manager.PhotoManagerPlugin;
import com.fluttercandies.photo_manager.permission.PermissionsUtils;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "onDetachedFromActivity", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToActivity", "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V", "onReattachedToActivityForConfigChanges", "onDetachedFromActivityForConfigChanges", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "oldBinding", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;", "plugin", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "Wwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "Wwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "requestPermissionsResultListener", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PhotoManagerPlugin implements FlutterPlugin, ActivityAware {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PluginRegistry.RequestPermissionsResultListener f7348Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityPluginBinding f7349Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PermissionsUtils f7350Wwwwwwwwwwwwwwwwwwwwwwww = new PermissionsUtils();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.fluttercandies.photo_manager.core.PhotoManagerPlugin f7351Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;", "", "<init>", "()V", "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;", "plugin", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PermissionsUtils permissionsUtils, int i, String[] strArr, int[] iArr) {
            permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, strArr, iArr);
            return false;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin, @NotNull BinaryMessenger binaryMessenger) {
            new MethodChannel(binaryMessenger, "com.fluttercandies/photo_manager").setMethodCallHandler(photoManagerPlugin);
        }

        @NotNull
        public final PluginRegistry.RequestPermissionsResultListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final PermissionsUtils permissionsUtils) {
            return new PluginRegistry.RequestPermissionsResultListener() { // from class: Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
                public final boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
                    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PhotoManagerPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PermissionsUtils.this, i, strArr, iArr);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            };
        }

        public Companion() {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityPluginBinding activityPluginBinding) {
        PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener = this.f7348Wwwwwwwwwwwwwwwwwwwwww;
        if (requestPermissionsResultListener != null) {
            activityPluginBinding.removeRequestPermissionsResultListener(requestPermissionsResultListener);
        }
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (photoManagerPlugin != null) {
            activityPluginBinding.removeActivityResultListener(photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityPluginBinding activityPluginBinding) {
        PluginRegistry.RequestPermissionsResultListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7350Wwwwwwwwwwwwwwwwwwwwwwww);
        this.f7348Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        activityPluginBinding.addRequestPermissionsResultListener(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (photoManagerPlugin != null) {
            activityPluginBinding.addActivityResultListener(photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityPluginBinding activityPluginBinding) {
        ActivityPluginBinding activityPluginBinding2 = this.f7349Wwwwwwwwwwwwwwwwwwwwwww;
        if (activityPluginBinding2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding2);
        }
        this.f7349Wwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding;
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (photoManagerPlugin != null) {
            photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding.getActivity());
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NotNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = new com.fluttercandies.photo_manager.core.PhotoManagerPlugin(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger(), null, this.f7350Wwwwwwwwwwwwwwwwwwwwwwww);
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(photoManagerPlugin, flutterPluginBinding.getBinaryMessenger());
        this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww = photoManagerPlugin;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        ActivityPluginBinding activityPluginBinding = this.f7349Wwwwwwwwwwwwwwwwwwwwwww;
        if (activityPluginBinding != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
        }
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (photoManagerPlugin != null) {
            photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
        this.f7349Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        com.fluttercandies.photo_manager.core.PhotoManagerPlugin photoManagerPlugin = this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (photoManagerPlugin != null) {
            photoManagerPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f7351Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }
}
