package com.facebook.appevents.ondeviceprocessing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.FacebookSignatureValidator;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.ppml.receiver.IReceiverService;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u001f !B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\n \u001a*\u0004\u0018\u00010\u00070\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001d¨\u0006\""}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "applicationId", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "", "Lcom/facebook/appevents/AppEvent;", "appEvents", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "eventType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Landroid/content/Intent;", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Ljava/lang/Boolean;", "isServiceAvailable", "EventType", "RemoteServiceConnection", "ServiceResult", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class RemoteServiceWrapper {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Boolean f6486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final RemoteServiceWrapper INSTANCE = new RemoteServiceWrapper();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RemoteServiceWrapper.class.getSimpleName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "", "eventType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "MOBILE_APP_INSTALL", "CUSTOM_APP_EVENTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum EventType {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");
        
        @NotNull
        private final String eventType;

        EventType(String str) {
            this.eventType = str;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static EventType[] valuesCustom() {
            EventType[] valuesCustom = values();
            return (EventType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.eventType;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "", "(Ljava/lang/String;I)V", "OPERATION_SUCCESS", "SERVICE_NOT_AVAILABLE", "SERVICE_ERROR", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum ServiceResult {
        OPERATION_SUCCESS,
        SERVICE_NOT_AVAILABLE,
        SERVICE_ERROR;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ServiceResult[] valuesCustom() {
            ServiceResult[] valuesCustom = values();
            return (ServiceResult[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @JvmStatic
    @NotNull
    public static final ServiceResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventType.MOBILE_APP_INSTALL, str, CollectionsKt.emptyList());
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RemoteServiceWrapper.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final ServiceResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull List<AppEvent> list) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventType.CUSTOM_APP_EVENTS, str, list);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RemoteServiceWrapper.class);
            return null;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RemoteServiceWrapper.class)) {
            return false;
        }
        try {
            if (f6486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()) != null) {
                    z = true;
                } else {
                    z = false;
                }
                f6486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.valueOf(z);
            }
            Boolean bool = f6486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RemoteServiceWrapper.class);
            return false;
        }
    }

    public final ServiceResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventType eventType, String str, List<AppEvent> list) {
        ServiceResult serviceResult;
        String str2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ServiceResult serviceResult2 = ServiceResult.SERVICE_NOT_AVAILABLE;
            AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
            Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                RemoteServiceConnection remoteServiceConnection = new RemoteServiceConnection();
                if (Wwwwwwwwwwwwwwwwwwwwwww2.bindService(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, remoteServiceConnection, 1)) {
                    try {
                        try {
                            IBinder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = remoteServiceConnection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                                IReceiverService Kkkkkkkkkk2 = IReceiverService.Stub.Kkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                                Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = RemoteServiceParametersHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventType, str, list);
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                                    Kkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                                    Utility utility = Utility.INSTANCE;
                                    Utility.Illllllllllllllllllllll(f6487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("Successfully sent events to the remote service: ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4));
                                }
                                serviceResult2 = ServiceResult.OPERATION_SUCCESS;
                            }
                            Wwwwwwwwwwwwwwwwwwwwwww2.unbindService(remoteServiceConnection);
                            Utility utility2 = Utility.INSTANCE;
                            Utility.Illllllllllllllllllllll(f6487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unbound from the remote service");
                            return serviceResult2;
                        } catch (RemoteException e) {
                            serviceResult = ServiceResult.SERVICE_ERROR;
                            Utility utility3 = Utility.INSTANCE;
                            str2 = f6487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            Utility.Illlllllllllllllllllllll(str2, e);
                            Wwwwwwwwwwwwwwwwwwwwwww2.unbindService(remoteServiceConnection);
                            Utility.Illllllllllllllllllllll(str2, "Unbound from the remote service");
                            return serviceResult;
                        }
                    } catch (InterruptedException e2) {
                        serviceResult = ServiceResult.SERVICE_ERROR;
                        Utility utility4 = Utility.INSTANCE;
                        str2 = f6487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        Utility.Illlllllllllllllllllllll(str2, e2);
                        Wwwwwwwwwwwwwwwwwwwwwww2.unbindService(remoteServiceConnection);
                        Utility.Illllllllllllllllllllll(str2, "Unbound from the remote service");
                        return serviceResult;
                    }
                }
                return ServiceResult.SERVICE_ERROR;
            }
            return serviceResult2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                Intent intent = new Intent("ReceiverService");
                intent.setPackage(FbValidationUtils.FB_PACKAGE);
                if (packageManager.resolveService(intent, 0) != null && FacebookSignatureValidator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, FbValidationUtils.FB_PACKAGE)) {
                    return intent;
                }
                Intent intent2 = new Intent("ReceiverService");
                intent2.setPackage(FbValidationUtils.DEBUG_FB_PACKAGE);
                if (packageManager.resolveService(intent2, 0) != null) {
                    if (FacebookSignatureValidator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, FbValidationUtils.DEBUG_FB_PACKAGE)) {
                        return intent2;
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$RemoteServiceConnection;", "Landroid/content/ServiceConnection;", "<init>", "()V", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", "serviceBinder", "", "onServiceConnected", "(Landroid/content/ComponentName;Landroid/os/IBinder;)V", "onNullBinding", "(Landroid/content/ComponentName;)V", "onServiceDisconnected", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/IBinder;", "Ljava/util/concurrent/CountDownLatch;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/CountDownLatch;", "latch", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/IBinder;", "binder", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RemoteServiceConnection implements ServiceConnection {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public IBinder f6488Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CountDownLatch f6489Wwwwwwwwwwwwwwwwwwwwwwwww = new CountDownLatch(1);

        @Nullable
        public final IBinder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws InterruptedException {
            this.f6489Wwwwwwwwwwwwwwwwwwwwwwwww.await(5L, TimeUnit.SECONDS);
            return this.f6488Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(@NotNull ComponentName componentName) {
            this.f6489Wwwwwwwwwwwwwwwwwwwwwwwww.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@NotNull ComponentName componentName, @NotNull IBinder iBinder) {
            this.f6488Wwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            this.f6489Wwwwwwwwwwwwwwwwwwwwwwwww.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@NotNull ComponentName componentName) {
        }
    }
}
