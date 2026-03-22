package com.fluttercandies.photo_manager.permission;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\n\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/fluttercandies/photo_manager/permission/PermissionsListener;", "", "", "", "needPermissions", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "deniedPermissions", "grantedPermissions", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface PermissionsListener {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list, @NotNull List<String> list2, @NotNull List<String> list3);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list);
}
