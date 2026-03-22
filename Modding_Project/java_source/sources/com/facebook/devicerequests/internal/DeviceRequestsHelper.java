package com.facebook.devicerequests.internal;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u0007\u001a\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0003¢\u0006\u0004\b\u0016\u0010\fJ\u0019\u0010\u0017\u001a\u00020\u00132\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0003¢\u0006\u0004\b\u0017\u0010\u0015R\u001c\u0010\u001a\u001a\n \u0018*\u0004\u0018\u00010\u00050\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0019R4\u0010\u001f\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u001c0\u001bj\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u001c`\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001e¨\u0006 "}, d2 = {"Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;", "", "<init>", "()V", "", "", "deviceInfo", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Ljava/lang/String;", "userCode", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "url", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/graphics/Bitmap;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Ljava/util/HashMap;", "Landroid/net/nsd/NsdManager$RegistrationListener;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "deviceRequestsListeners", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DeviceRequestsHelper {
    @NotNull
    public static final DeviceRequestsHelper INSTANCE = new DeviceRequestsHelper();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DeviceRequestsHelper.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashMap<String, NsdManager.RegistrationListener> f6612Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return false;
            }
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceRequestsHelper.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww().contains(SmartLoginOption.Enabled)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceRequestsHelper.class);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Map<String, String> map) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceRequestsHelper.class)) {
            return null;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceRequestsHelper.class);
                return null;
            }
        }
        map.put("device", Build.DEVICE);
        map.put("model", Build.MODEL);
        return new JSONObject(map).toString();
    }

    @JvmStatic
    @Nullable
    public static final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceRequestsHelper.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(EncodeHintType.class);
            enumMap.put((EnumMap) EncodeHintType.MARGIN, (EncodeHintType) 2);
            try {
                BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, 200, 200, enumMap);
                int height = encode.getHeight();
                int width = encode.getWidth();
                int[] iArr = new int[height * width];
                if (height > 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        int i4 = i2 * width;
                        if (width > 0) {
                            int i5 = 0;
                            while (true) {
                                int i6 = i5 + 1;
                                int i7 = i4 + i5;
                                if (encode.get(i5, i2)) {
                                    i = ViewCompat.MEASURED_STATE_MASK;
                                } else {
                                    i = -1;
                                }
                                iArr[i7] = i;
                                if (i6 >= width) {
                                    break;
                                }
                                i5 = i6;
                            }
                        }
                        if (i3 >= height) {
                            break;
                        }
                        i2 = i3;
                    }
                }
                Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                try {
                    createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                    return createBitmap;
                } catch (WriterException unused) {
                    return createBitmap;
                }
            } catch (WriterException unused2) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceRequestsHelper.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceRequestsHelper.class)) {
            return;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceRequestsHelper.class);
        }
    }

    @TargetApi(16)
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            HashMap<String, NsdManager.RegistrationListener> hashMap = f6612Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (hashMap.containsKey(str)) {
                return true;
            }
            final String str2 = "fbsdk_" + Intrinsics.stringPlus("android-", StringsKt.replace$default(FacebookSdk.Wwwwww(), '.', '|', false, 4, (Object) null)) + '_' + ((Object) str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSystemService("servicediscovery");
            if (systemService != null) {
                NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.internal.DeviceRequestsHelper$startAdvertisementServiceImpl$nsdRegistrationListener$1
                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onRegistrationFailed(@NotNull NsdServiceInfo nsdServiceInfo2, int i) {
                        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                        DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onServiceRegistered(@NotNull NsdServiceInfo nsdServiceInfo2) {
                        if (!Intrinsics.areEqual(str2, nsdServiceInfo2.getServiceName())) {
                            DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                            DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                        }
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onServiceUnregistered(@NotNull NsdServiceInfo nsdServiceInfo2) {
                    }

                    @Override // android.net.nsd.NsdManager.RegistrationListener
                    public void onUnregistrationFailed(@NotNull NsdServiceInfo nsdServiceInfo2, int i) {
                    }
                };
                hashMap.put(str, registrationListener);
                ((NsdManager) systemService).registerService(nsdServiceInfo, 1, registrationListener);
                return true;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    @TargetApi(16)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                NsdManager.RegistrationListener registrationListener = f6612Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (registrationListener != null) {
                    Object systemService = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSystemService("servicediscovery");
                    if (systemService != null) {
                        try {
                            ((NsdManager) systemService).unregisterService(registrationListener);
                        } catch (IllegalArgumentException e) {
                            Utility utility = Utility.INSTANCE;
                            Utility.Illlllllllllllllllllllll(f6613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                        }
                        f6612Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
