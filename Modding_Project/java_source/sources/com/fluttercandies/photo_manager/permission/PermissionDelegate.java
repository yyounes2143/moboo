package com.fluttercandies.photo_manager.permission;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.fluttercandies.photo_manager.core.entity.PermissionResult;
import com.fluttercandies.photo_manager.permission.impl.PermissionDelegate23;
import com.fluttercandies.photo_manager.permission.impl.PermissionDelegate29;
import com.fluttercandies.photo_manager.permission.impl.PermissionDelegate33;
import com.fluttercandies.photo_manager.permission.impl.PermissionDelegate34;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u0000 :2\u00020\u0001:\u0001:B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\n\u001a\u00020\tH\u0004¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0007H\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0007H\u0004¢\u0006\u0004\b\u0013\u0010\u0012J+\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0014\"\u00020\u0007H\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u0012J)\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0014\"\u00020\u0007¢\u0006\u0004\b\u0019\u0010\u0017J/\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0010H&¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010!Jg\u0010'\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00142\u0006\u0010#\u001a\u00020\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b'\u0010(J/\u0010-\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020)2\u0006\u0010*\u001a\u00020\t2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J'\u00100\u001a\u00020/2\u0006\u0010\u000f\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0010H&¢\u0006\u0004\b0\u00101R$\u0010,\u001a\u0004\u0018\u00010+8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b0\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00109\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108¨\u0006;"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "", "<init>", "()V", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "", "", "permission", "", "requestCode", "", "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;I)V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "permissions", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;[Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "requestType", "mediaLocation", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "grantResults", "needToRequestPermissionsList", "deniedPermissionsList", "grantedPermissionsList", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V", "Landroid/app/Application;", "type", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/util/ResultHandler;", "Wwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "tag", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPermissionDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate.kt\ncom/fluttercandies/photo_manager/permission/PermissionDelegate\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,177:1\n37#2:178\n36#2,3:179\n12434#3,2:182\n12637#3,2:184\n12434#3,2:186\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate.kt\ncom/fluttercandies/photo_manager/permission/PermissionDelegate\n*L\n34#1:178\n34#1:179,3\n69#1:182,2\n73#1:184,2\n90#1:186,2\n*E\n"})
/* loaded from: classes4.dex */
public abstract class PermissionDelegate {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultHandler f7480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/PermissionDelegate$Companion;", "", "<init>", "()V", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "", "requestCode", "I", "limitedRequestCode", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PermissionDelegate Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = Build.VERSION.SDK_INT;
            if (i < 29) {
                return new PermissionDelegate23();
            }
            if (29 <= i && i < 33) {
                return new PermissionDelegate29();
            }
            if (i == 33) {
                return new PermissionDelegate33();
            }
            if (34 <= i && i < Integer.MAX_VALUE) {
                return new PermissionDelegate34();
            }
            throw new UnsupportedOperationException("This sdk version is not supported yet.");
        }

        public Companion() {
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwww(PermissionDelegate permissionDelegate, PermissionsUtils permissionsUtils, List list, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                i = 3001;
            }
            permissionDelegate.Wwwwwwwwwwwwwwwwwwwww(permissionsUtils, list, i);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requestPermission");
    }

    public final void Wwwwwwwwwwwwwwwwwww(@Nullable ResultHandler resultHandler) {
        this.f7480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resultHandler;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull List<String> list, int i) {
        Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwww(list);
            ActivityCompat.requestPermissions(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (String[]) list.toArray(new String[0]), i);
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("requestPermission: " + list + " for code " + i);
            return;
        }
        throw new NullPointerException("Activity for the permission request is not exist.");
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, int i, boolean z);

    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Application application, int i, @NotNull ResultHandler resultHandler) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "] presentLimited is not implemented");
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String... strArr) {
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < length) {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, strArr[i])) {
                    break;
                }
                i++;
            } else {
                z = true;
                break;
            }
        }
        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "] havePermissions: " + ArraysKt.toList(strArr) + ", result: " + z);
        return z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT >= 33) {
            PackageManager packageManager = context.getPackageManager();
            String str2 = applicationInfo.packageName;
            of = PackageManager.PackageInfoFlags.of(4096L);
            packageInfo = packageManager.getPackageInfo(str2, of);
        } else {
            packageInfo = context.getPackageManager().getPackageInfo(applicationInfo.packageName, 4096);
        }
        String[] strArr = packageInfo.requestedPermissions;
        if (strArr == null || !ArraysKt.contains(strArr, str)) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww(context, str) && Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, str)) {
            return true;
        }
        return false;
    }

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context);

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String... strArr) {
        for (String str : strArr) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, str)) {
                return true;
            }
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, @NotNull String[] strArr, @NotNull int[] iArr, @NotNull List<String> list, @NotNull List<String> list2, @NotNull List<String> list3, int i) {
        throw new UnsupportedOperationException("handlePermissionResult is not implemented, please implement it in your delegate.");
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return getClass().getSimpleName();
    }

    @Nullable
    public final ResultHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public abstract PermissionResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, int i, boolean z);
}
