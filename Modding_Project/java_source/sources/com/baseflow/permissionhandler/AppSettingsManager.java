package com.baseflow.permissionhandler;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class AppSettingsManager {

    /* compiled from: Proguard */
    @FunctionalInterface
    /* loaded from: classes3.dex */
    public interface OpenAppSettingsSuccessCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, OpenAppSettingsSuccessCallback openAppSettingsSuccessCallback, ErrorCallback errorCallback) {
        if (context == null) {
            errorCallback.onError("PermissionHandler.AppSettingsManager", "Android context cannot be null.");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            intent.addFlags(268435456);
            intent.addFlags(1073741824);
            intent.addFlags(8388608);
            context.startActivity(intent);
            openAppSettingsSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
        } catch (Exception unused) {
            openAppSettingsSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }
    }
}
