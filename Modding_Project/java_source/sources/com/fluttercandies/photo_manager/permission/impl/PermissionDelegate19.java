package com.fluttercandies.photo_manager.permission.impl;

import android.app.Application;
import android.content.Context;
import com.fluttercandies.photo_manager.core.entity.PermissionResult;
import com.fluttercandies.photo_manager.permission.PermissionDelegate;
import com.fluttercandies.photo_manager.permission.PermissionsListener;
import com.fluttercandies.photo_manager.permission.PermissionsUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate19;", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "<init>", "()V", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "Landroid/content/Context;", "context", "", "requestType", "", "mediaLocation", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Landroid/app/Application;", "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PermissionDelegate19 extends PermissionDelegate {
    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, int i, boolean z) {
        PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ArrayList());
        }
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return true;
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    @NotNull
    public PermissionResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, int i, boolean z) {
        return PermissionResult.Authorized;
    }
}
