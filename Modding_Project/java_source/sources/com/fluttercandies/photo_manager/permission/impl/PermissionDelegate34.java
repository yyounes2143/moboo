package com.fluttercandies.photo_manager.permission.impl;

import android.app.Application;
import android.content.Context;
import androidx.annotation.RequiresApi;
import com.fluttercandies.photo_manager.core.entity.PermissionResult;
import com.fluttercandies.photo_manager.core.utils.RequestTypeUtils;
import com.fluttercandies.photo_manager.permission.PermissionDelegate;
import com.fluttercandies.photo_manager.permission.PermissionsListener;
import com.fluttercandies.photo_manager.permission.PermissionsUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@RequiresApi(34)
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014Jg\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0019\u001a\u00020\u00182\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u001a2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010 J/\u0010%\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020!2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J'\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020!2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34;", "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;", "<init>", "()V", "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;", "permissionsUtils", "Landroid/content/Context;", "context", "", "requestType", "", "mediaLocation", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V", "Wwwwwwwwwwwwwwwww", "(Landroid/content/Context;I)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "", "permissions", "", "grantResults", "", "needToRequestPermissionsList", "deniedPermissionsList", "grantedPermissionsList", "requestCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;[Ljava/lang/String;[ILjava/util/List;Ljava/util/List;Ljava/util/List;I)V", "Landroid/app/Application;", "type", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/app/Application;ILcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPermissionDelegate34.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate34.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,243:1\n37#2:244\n36#2,3:245\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate34.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34\n*L\n63#1:244\n63#1:245,3\n*E\n"})
/* loaded from: classes4.dex */
public final class PermissionDelegate34 extends PermissionDelegate {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate34$Companion;", "", "<init>", "()V", "mediaVideo", "", "mediaImage", "mediaAudio", "mediaVisualUserSelected", "mediaLocationPermission", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PermissionResult.values().length];
            try {
                iArr[PermissionResult.Denied.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PermissionResult.Authorized.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PermissionResult.Limited.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, com.fluttercandies.photo_manager.core.entity.PermissionResult] */
    /* JADX WARN: Type inference failed for: r0v5, types: [T, com.fluttercandies.photo_manager.core.entity.PermissionResult] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, com.fluttercandies.photo_manager.core.entity.PermissionResult] */
    public static final void Wwwwwwwwwwwwwwwwww(Ref.ObjectRef<PermissionResult> objectRef, PermissionResult permissionResult) {
        PermissionResult permissionResult2 = objectRef.element;
        if (permissionResult2 == PermissionResult.NotDetermined) {
            objectRef.element = permissionResult;
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[permissionResult2.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    objectRef.element = PermissionResult.Limited;
                    return;
                }
                return;
            }
            ?? r0 = PermissionResult.Limited;
            if (permissionResult == r0 || permissionResult == PermissionResult.Denied) {
                objectRef.element = r0;
                return;
            }
            return;
        }
        ?? r02 = PermissionResult.Limited;
        if (permissionResult != r02 && permissionResult != PermissionResult.Authorized) {
            return;
        }
        objectRef.element = r02;
    }

    public boolean Wwwwwwwwwwwwwwwww(@NotNull Context context, int i) {
        boolean z;
        RequestTypeUtils requestTypeUtils = RequestTypeUtils.INSTANCE;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if ((!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_IMAGES") || Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_VIDEO") || Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED")) {
            z = true;
        } else {
            z = false;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (!z || !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_AUDIO")) {
                return false;
            }
            return true;
        }
        return z;
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, int i, boolean z) {
        if (Wwwwwwwwwwwwwwwww(context, i) && (!z || Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context))) {
            PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ArrayList());
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        RequestTypeUtils requestTypeUtils = RequestTypeUtils.INSTANCE;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
            arrayList.add("android.permission.READ_MEDIA_IMAGES");
            arrayList.add("android.permission.READ_MEDIA_VIDEO");
            arrayList.add("android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
            if (z) {
                arrayList.add("android.permission.ACCESS_MEDIA_LOCATION");
            }
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            arrayList.add("android.permission.READ_MEDIA_AUDIO");
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww(context, (String[]) Arrays.copyOf(strArr, strArr.length))) {
            PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList);
                return;
            }
            return;
        }
        PermissionDelegate.Wwwwwwwwwwwwwwwwwwww(this, permissionsUtils, arrayList, 0, 4, null);
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Application application, int i, @NotNull ResultHandler resultHandler) {
        Wwwwwwwwwwwwwwwwwww(resultHandler);
        ArrayList arrayList = new ArrayList();
        RequestTypeUtils requestTypeUtils = RequestTypeUtils.INSTANCE;
        if (requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i) || requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
            arrayList.add("android.permission.READ_MEDIA_IMAGES");
            arrayList.add("android.permission.READ_MEDIA_VIDEO");
            arrayList.add("android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
        }
        Wwwwwwwwwwwwwwwwwwwww(permissionsUtils, arrayList, 3002);
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        return true;
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.ACCESS_MEDIA_LOCATION");
    }

    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull PermissionsUtils permissionsUtils, @NotNull Context context, @NotNull String[] strArr, @NotNull int[] iArr, @NotNull List<String> list, @NotNull List<String> list2, @NotNull List<String> list3, int i) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        boolean z = true;
        if (i == 3002) {
            ResultHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwww(null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                return;
            }
            return;
        }
        boolean contains = list.contains("android.permission.READ_MEDIA_IMAGES");
        boolean contains2 = list.contains("android.permission.READ_MEDIA_VIDEO");
        boolean contains3 = list.contains("android.permission.READ_MEDIA_AUDIO");
        boolean contains4 = list.contains("android.permission.ACCESS_MEDIA_LOCATION");
        boolean contains5 = list.contains("android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
        if (!contains && !contains2 && !contains5) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = true;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO");
        }
        if (contains3) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.READ_MEDIA_AUDIO")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = true;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = false;
            }
        }
        if (contains4) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || !Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.ACCESS_MEDIA_LOCATION")) {
                z = false;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = z;
        }
        PermissionsListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = permissionsUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
            return;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list2, list3, list);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.fluttercandies.photo_manager.core.entity.PermissionResult] */
    @Override // com.fluttercandies.photo_manager.permission.PermissionDelegate
    @NotNull
    public PermissionResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, int i, boolean z) {
        PermissionResult permissionResult;
        PermissionResult permissionResult2;
        PermissionResult permissionResult3;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = PermissionResult.NotDetermined;
        RequestTypeUtils requestTypeUtils = RequestTypeUtils.INSTANCE;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (requestTypeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_MEDIA_AUDIO")) {
                permissionResult3 = PermissionResult.Authorized;
            } else {
                permissionResult3 = PermissionResult.Denied;
            }
            Wwwwwwwwwwwwwwwwww(objectRef, permissionResult3);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_MEDIA_VIDEO")) {
                permissionResult2 = PermissionResult.Authorized;
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED")) {
                permissionResult2 = PermissionResult.Limited;
            } else {
                permissionResult2 = PermissionResult.Denied;
            }
            Wwwwwwwwwwwwwwwwww(objectRef, permissionResult2);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_MEDIA_IMAGES")) {
                permissionResult = PermissionResult.Authorized;
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(application, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED")) {
                permissionResult = PermissionResult.Limited;
            } else {
                permissionResult = PermissionResult.Denied;
            }
            Wwwwwwwwwwwwwwwwww(objectRef, permissionResult);
        }
        return (PermissionResult) objectRef.element;
    }
}
