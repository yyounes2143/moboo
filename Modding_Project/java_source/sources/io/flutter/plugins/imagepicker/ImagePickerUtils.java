package io.flutter.plugins.imagepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.MediaStore;
import androidx.activity.result.contract.ActivityResultContracts;
import io.flutter.plugins.imagepicker.Messages;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final class ImagePickerUtils {
    public static int getLimitFromOption(Messages.GeneralOptions generalOptions) {
        Long limit = generalOptions.getLimit();
        int maxItems = getMaxItems();
        if (limit != null && limit.longValue() < maxItems) {
            return Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(limit.longValue());
        }
        return maxItems;
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    public static int getMaxItems() {
        boolean isSystemPickerAvailable$activity_release;
        int pickImagesMaxLimit;
        isSystemPickerAvailable$activity_release = ActivityResultContracts.PickVisualMedia.Companion.isSystemPickerAvailable$activity_release();
        if (isSystemPickerAvailable$activity_release) {
            pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
            return pickImagesMaxLimit;
        }
        return Integer.MAX_VALUE;
    }

    private static PackageInfo getPermissionsPackageInfoPreApi33(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageInfo(str, 4096);
    }

    private static boolean isPermissionPresentInManifest(Context context, String str) {
        PackageInfo permissionsPackageInfoPreApi33;
        PackageManager.PackageInfoFlags of;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 33) {
                String packageName = context.getPackageName();
                of = PackageManager.PackageInfoFlags.of(4096L);
                permissionsPackageInfoPreApi33 = packageManager.getPackageInfo(packageName, of);
            } else {
                permissionsPackageInfoPreApi33 = getPermissionsPackageInfoPreApi33(packageManager, context.getPackageName());
            }
            return Arrays.asList(permissionsPackageInfoPreApi33.requestedPermissions).contains(str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean needRequestCameraPermission(Context context) {
        if (isPermissionPresentInManifest(context, "android.permission.CAMERA")) {
            return true;
        }
        return false;
    }
}
