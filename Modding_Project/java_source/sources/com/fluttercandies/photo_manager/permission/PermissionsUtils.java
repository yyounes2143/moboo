package com.fluttercandies.photo_manager.permission;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.fluttercandies.photo_manager.core.entity.PermissionResult;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J+\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\"\u0010#J\u001b\u0010&\u001a\u00020\u001f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00180$¢\u0006\u0004\b&\u0010'J\u001d\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00102\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u001d\u0010.\u001a\u00020-2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u001fH\u0002¢\u0006\u0004\b0\u0010\u0003R\u0018\u00102\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u00101R\u0018\u0010\u001e\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u00104R$\u00107\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b \u00106\u001a\u0004\b7\u00108R\u0014\u0010;\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010:R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010=R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00180$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010=R$\u0010E\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010A\u001a\u0004\b<\u0010B\"\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/app/Activity;", "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "Landroid/content/Context;", "applicationContext", "", "requestType", "", "mediaLocation", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;IZ)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "requestCode", "", "", "permissions", "", "grantResults", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I[Ljava/lang/String;[I)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "", "permission", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "type", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "mActivity", "Landroid/app/Application;", "Landroid/app/Application;", "value", "Z", "isRequesting", "()Z", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "delegate", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "needToRequestPermissionsList", "deniedPermissionsList", "grantedPermissionsList", "Lcom/fluttercandies/photo_manager/permission/PermissionsListener;", "()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V", "permissionsListener", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PermissionsUtils {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PermissionsListener f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Application f7487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f7488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PermissionDelegate f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = PermissionDelegate.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7482Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    @NotNull
    public final PermissionsUtils Wwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        Application application;
        this.f7488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = activity;
        if (activity != null) {
            application = activity.getApplication();
        } else {
            application = null;
        }
        this.f7487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = application;
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable PermissionsListener permissionsListener) {
        this.f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww = permissionsListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) {
        this.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(list);
    }

    @NotNull
    public final PermissionsUtils Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable PermissionsListener permissionsListener) {
        this.f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww = permissionsListener;
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            this.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }
        if (!this.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            this.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }
    }

    @NotNull
    public final PermissionsUtils Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, boolean z) {
        this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(this, context, i, z);
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ResultHandler resultHandler) {
        this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(this, this.f7487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, resultHandler);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    @Nullable
    public final PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final PermissionResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, boolean z) {
        return this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.addFlags(1073741824);
        intent.addFlags(8388608);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(TPDownloadProxyEnum.DLPARAM_PACKAGE, context.getPackageName(), null));
        context.startActivity(intent);
    }

    @Nullable
    public final Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final PermissionsUtils Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull String[] strArr, @NotNull int[] iArr) {
        PermissionsUtils permissionsUtils;
        if (i != 3001 && i != 3002) {
            permissionsUtils = this;
        } else {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Returned permissions: " + strArr[i2]);
                int i3 = iArr[i2];
                if (i3 == -1) {
                    this.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(strArr[i2]);
                } else if (i3 == 0) {
                    this.f7482Wwwwwwwwwwwwwwwwwwwwwwwwwwww.add(strArr[i2]);
                }
            }
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dealResult: ");
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  permissions: " + strArr);
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  grantResults: " + iArr);
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  deniedPermissionsList: " + this.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  grantedPermissionsList: " + this.f7482Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww()) {
                permissionsUtils = this;
                this.f7485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(permissionsUtils, this.f7487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, strArr, iArr, this.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7482Wwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
            } else {
                permissionsUtils = this;
                if (!permissionsUtils.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    permissionsUtils.f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(permissionsUtils.f7483Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, permissionsUtils.f7482Wwwwwwwwwwwwwwwwwwwwwwwwwwww, permissionsUtils.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    permissionsUtils.f7481Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(permissionsUtils.f7484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwww();
        permissionsUtils.f7486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        return permissionsUtils;
    }
}
