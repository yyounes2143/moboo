package com.baseflow.permissionhandler;

import android.content.Context;
import androidx.annotation.NonNull;
import com.baseflow.permissionhandler.AppSettingsManager;
import com.baseflow.permissionhandler.PermissionManager;
import com.baseflow.permissionhandler.ServiceManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import j$.util.Objects;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ServiceManager f3951Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PermissionManager f3952Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AppSettingsManager f3953Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f3954Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MethodCallHandlerImpl(Context context, AppSettingsManager appSettingsManager, PermissionManager permissionManager, ServiceManager serviceManager) {
        this.f3954Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f3953Wwwwwwwwwwwwwwwwwwwwwwww = appSettingsManager;
        this.f3952Wwwwwwwwwwwwwwwwwwwwwww = permissionManager;
        this.f3951Wwwwwwwwwwwwwwwwwwwwww = serviceManager;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull final MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1544053025:
                if (str.equals("checkServiceStatus")) {
                    c = 0;
                    break;
                }
                break;
            case -1017315255:
                if (str.equals("shouldShowRequestPermissionRationale")) {
                    c = 1;
                    break;
                }
                break;
            case -576207927:
                if (str.equals("checkPermissionStatus")) {
                    c = 2;
                    break;
                }
                break;
            case 347240634:
                if (str.equals("openAppSettings")) {
                    c = 3;
                    break;
                }
                break;
            case 1669188213:
                if (str.equals("requestPermissions")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                int parseInt = Integer.parseInt(methodCall.arguments.toString());
                ServiceManager serviceManager = this.f3951Wwwwwwwwwwwwwwwwwwwwww;
                Context context = this.f3954Wwwwwwwwwwwwwwwwwwwwwwwww;
                Objects.requireNonNull(result);
                serviceManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parseInt, context, new ServiceManager.SuccessCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.ServiceManager.SuccessCallback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
                        MethodChannel.Result.this.success(Integer.valueOf(i));
                    }
                }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.ErrorCallback
                    public final void onError(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 1:
                int parseInt2 = Integer.parseInt(methodCall.arguments.toString());
                PermissionManager permissionManager = this.f3952Wwwwwwwwwwwwwwwwwwwwwww;
                Objects.requireNonNull(result);
                permissionManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(parseInt2, new PermissionManager.ShouldShowRequestPermissionRationaleSuccessCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.PermissionManager.ShouldShowRequestPermissionRationaleSuccessCallback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                        MethodChannel.Result.this.success(Boolean.valueOf(z));
                    }
                }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.ErrorCallback
                    public final void onError(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 2:
                int parseInt3 = Integer.parseInt(methodCall.arguments.toString());
                PermissionManager permissionManager2 = this.f3952Wwwwwwwwwwwwwwwwwwwwwww;
                Objects.requireNonNull(result);
                permissionManager2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parseInt3, new PermissionManager.CheckPermissionsSuccessCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.PermissionManager.CheckPermissionsSuccessCallback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
                        MethodChannel.Result.this.success(Integer.valueOf(i));
                    }
                });
                return;
            case 3:
                AppSettingsManager appSettingsManager = this.f3953Wwwwwwwwwwwwwwwwwwwwwwww;
                Context context2 = this.f3954Wwwwwwwwwwwwwwwwwwwwwwwww;
                Objects.requireNonNull(result);
                appSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, new AppSettingsManager.OpenAppSettingsSuccessCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.AppSettingsManager.OpenAppSettingsSuccessCallback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                        MethodChannel.Result.this.success(Boolean.valueOf(z));
                    }
                }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.ErrorCallback
                    public final void onError(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            case 4:
                PermissionManager permissionManager3 = this.f3952Wwwwwwwwwwwwwwwwwwwwwww;
                Objects.requireNonNull(result);
                permissionManager3.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((List) methodCall.arguments(), new PermissionManager.RequestPermissionsSuccessCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.PermissionManager.RequestPermissionsSuccessCallback
                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map map) {
                        MethodChannel.Result.this.success(map);
                    }
                }, new ErrorCallback() { // from class: com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.baseflow.permissionhandler.ErrorCallback
                    public final void onError(String str2, String str3) {
                        MethodChannel.Result.this.error(str2, str3, null);
                    }
                });
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
