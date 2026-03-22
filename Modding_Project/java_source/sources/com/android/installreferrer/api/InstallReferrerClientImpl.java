package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.installreferrer.commons.InstallReferrerCommons;
import com.google.android.finsky.externalreferrer.IGetInstallReferrerService;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ServiceConnection f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IGetInstallReferrerService f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class InstallReferrerServiceConnection implements ServiceConnection {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InstallReferrerStateListener f2629Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl.this.f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = IGetInstallReferrerService.Stub.b(iBinder);
            InstallReferrerClientImpl.this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
            this.f2629Wwwwwwwwwwwwwwwwwwwwwwwww.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl.this.f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            InstallReferrerClientImpl.this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f2629Wwwwwwwwwwwwwwwwwwwwwwwww.onInstallReferrerServiceDisconnected();
        }

        public InstallReferrerServiceConnection(InstallReferrerStateListener installReferrerStateListener) {
            if (installReferrerStateListener != null) {
                this.f2629Wwwwwwwwwwwwwwwwwwwwwwwww = installReferrerStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }
    }

    public InstallReferrerClientImpl(Context context) {
        this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode < 80837300) {
            return false;
        }
        return true;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void endConnection() {
        this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
        if (this.f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Unbinding from service.");
            this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unbindService(this.f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        this.f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public ReferrerDetails getInstallReferrer() throws RemoteException {
        if (isReady()) {
            Bundle bundle = new Bundle();
            bundle.putString(CampaignEx.JSON_KEY_PACKAGE_NAME, this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
            try {
                return new ReferrerDetails(this.f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.c(bundle));
            } catch (RemoteException e) {
                InstallReferrerCommons.logWarn("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                throw e;
            }
        }
        throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public boolean isReady() {
        if (this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2 && this.f2625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void startConnection(InstallReferrerStateListener installReferrerStateListener) {
        ServiceInfo serviceInfo;
        if (isReady()) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            installReferrerStateListener.onInstallReferrerSetupFinished(0);
            return;
        }
        int i = this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 1) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else if (i == 3) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Starting install referrer service setup.");
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> queryIntentServices = this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if ("com.android.vending".equals(str) && str2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    Intent intent2 = new Intent(intent);
                    InstallReferrerServiceConnection installReferrerServiceConnection = new InstallReferrerServiceConnection(installReferrerStateListener);
                    this.f2624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = installReferrerServiceConnection;
                    try {
                        if (this.f2626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.bindService(intent2, installReferrerServiceConnection, 1)) {
                            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service was bonded successfully.");
                            return;
                        }
                        InstallReferrerCommons.logWarn("InstallReferrerClient", "Connection to service is blocked.");
                        this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                        installReferrerStateListener.onInstallReferrerSetupFinished(1);
                        return;
                    } catch (SecurityException unused) {
                        InstallReferrerCommons.logWarn("InstallReferrerClient", "No permission to connect to service.");
                        this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                        installReferrerStateListener.onInstallReferrerSetupFinished(4);
                        return;
                    }
                }
                InstallReferrerCommons.logWarn("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                installReferrerStateListener.onInstallReferrerSetupFinished(2);
                return;
            }
            this.f2627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service unavailable on device.");
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
        }
    }
}
