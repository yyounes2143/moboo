package com.fluttercandies.photo_manager.permission.impl;

import android.app.Application;
import android.content.Context;
import androidx.annotation.RequiresApi;
import com.fluttercandies.photo_manager.core.entity.PermissionResult;
import com.fluttercandies.photo_manager.permission.PermissionDelegate;
import com.fluttercandies.photo_manager.permission.PermissionsListener;
import com.fluttercandies.photo_manager.permission.PermissionsUtils;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@RequiresApi(29)
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "<init>", "()V", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "Landroid/content/Context;", "context", "", "requestType", "", "mediaLocation", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Landroid/app/Application;", "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPermissionDelegate29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,59:1\n37#2:60\n36#2,3:61\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n*L\n32#1:60\n32#1:61,3\n*E\n"})
/* loaded from: classes4.dex */
public final class PermissionDelegate29 extends PermissionDelegate {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;", "", "<init>", "()V", "readPermission", "", "mediaLocationPermission", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, int i, boolean z) {
        List<String> mutableListOf = CollectionsKt.mutableListOf("android.permission.READ_EXTERNAL_STORAGE");
        if (z) {
            mutableListOf.add("android.permission.ACCESS_MEDIA_LOCATION");
        }
        String[] strArr = (String[]) mutableListOf.toArray(new String[0]);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww(context, (String[]) Arrays.copyOf(strArr, strArr.length))) {
            PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mutableListOf);
                return;
            }
            return;
        }
        PermissionDelegate.Wwwwwwwwwwwwwwwwwwww(this, permissionsUtils, mutableListOf, 0, 4, null);
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.ACCESS_MEDIA_LOCATION");
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    @NotNull
    public PermissionResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, int i, boolean z) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_EXTERNAL_STORAGE")) {
            return PermissionResult.Authorized;
        }
        return PermissionResult.Denied;
    }
}
