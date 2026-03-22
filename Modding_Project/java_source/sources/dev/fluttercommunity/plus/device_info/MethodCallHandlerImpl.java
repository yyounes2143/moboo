package dev.fluttercommunity.plus.device_info;

import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.firebase.messaging.Constants;
import com.unity3d.services.core.di.ServiceProvider;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Ldev/fluttercommunity/plus/device_info/MethodCallHandlerImpl;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Landroid/content/pm/PackageManager;", "packageManager", "Landroid/view/WindowManager;", "windowManager", "<init>", "(Landroid/content/pm/PackageManager;Landroid/view/WindowManager;)V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/pm/PackageManager;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/WindowManager;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isEmulator", "device_info_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMethodCallHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MethodCallHandlerImpl.kt\ndev/fluttercommunity/plus/device_info/MethodCallHandlerImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n4117#2:125\n4217#2,2:126\n1549#3:128\n1620#3,3:129\n*S KotlinDebug\n*F\n+ 1 MethodCallHandlerImpl.kt\ndev/fluttercommunity/plus/device_info/MethodCallHandlerImpl\n*L\n101#1:125\n101#1:126,2\n102#1:128\n102#1:129,3\n*E\n"})
/* loaded from: classes6.dex */
public final class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WindowManager f11137Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PackageManager f11138Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MethodCallHandlerImpl(@NotNull PackageManager packageManager, @NotNull WindowManager windowManager) {
        this.f11138Wwwwwwwwwwwwwwwwwwwwwwwww = packageManager;
        this.f11137Wwwwwwwwwwwwwwwwwwwwwwww = windowManager;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!StringsKt.startsWith$default(Build.BRAND, "generic", false, 2, (Object) null) || !StringsKt.startsWith$default(Build.DEVICE, "generic", false, 2, (Object) null)) {
            String str = Build.FINGERPRINT;
            if (!StringsKt.startsWith$default(str, "generic", false, 2, (Object) null) && !StringsKt.startsWith$default(str, "unknown", false, 2, (Object) null)) {
                String str2 = Build.HARDWARE;
                if (!StringsKt.contains$default((CharSequence) str2, (CharSequence) "goldfish", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str2, (CharSequence) "ranchu", false, 2, (Object) null)) {
                    String str3 = Build.MODEL;
                    if (!StringsKt.contains$default((CharSequence) str3, (CharSequence) "google_sdk", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str3, (CharSequence) "Emulator", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str3, (CharSequence) "Android SDK built for x86", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) Build.MANUFACTURER, (CharSequence) "Genymotion", false, 2, (Object) null)) {
                        String str4 = Build.PRODUCT;
                        if (!StringsKt.contains$default((CharSequence) str4, (CharSequence) ServiceProvider.NAMED_SDK, false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str4, (CharSequence) "vbox86p", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str4, (CharSequence) "emulator", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str4, (CharSequence) "simulator", false, 2, (Object) null)) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FeatureInfo[] systemAvailableFeatures = this.f11138Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemAvailableFeatures();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (FeatureInfo featureInfo : systemAvailableFeatures) {
            if (featureInfo.name != null) {
                arrayList.add(featureInfo);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            arrayList2.add(((FeatureInfo) obj).name);
        }
        return arrayList2;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        String str;
        if (methodCall.method.equals("getDeviceInfo")) {
            HashMap hashMap = new HashMap();
            hashMap.put("board", Build.BOARD);
            hashMap.put("bootloader", Build.BOOTLOADER);
            hashMap.put("brand", Build.BRAND);
            hashMap.put("device", Build.DEVICE);
            hashMap.put(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION, Build.DISPLAY);
            hashMap.put("fingerprint", Build.FINGERPRINT);
            hashMap.put("hardware", Build.HARDWARE);
            hashMap.put("host", Build.HOST);
            hashMap.put("id", Build.ID);
            hashMap.put("manufacturer", Build.MANUFACTURER);
            hashMap.put("model", Build.MODEL);
            hashMap.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
            int i = Build.VERSION.SDK_INT;
            String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
            hashMap.put("supported32BitAbis", CollectionsKt.listOf(Arrays.copyOf(strArr, strArr.length)));
            String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
            hashMap.put("supported64BitAbis", CollectionsKt.listOf(Arrays.copyOf(strArr2, strArr2.length)));
            String[] strArr3 = Build.SUPPORTED_ABIS;
            hashMap.put("supportedAbis", CollectionsKt.listOf(Arrays.copyOf(strArr3, strArr3.length)));
            hashMap.put("tags", Build.TAGS);
            hashMap.put("type", Build.TYPE);
            hashMap.put("isPhysicalDevice", Boolean.valueOf(!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            hashMap.put("systemFeatures", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            HashMap hashMap2 = new HashMap();
            hashMap2.put("baseOS", Build.VERSION.BASE_OS);
            hashMap2.put("previewSdkInt", Integer.valueOf(Build.VERSION.PREVIEW_SDK_INT));
            hashMap2.put("securityPatch", Build.VERSION.SECURITY_PATCH);
            hashMap2.put("codename", Build.VERSION.CODENAME);
            hashMap2.put("incremental", Build.VERSION.INCREMENTAL);
            hashMap2.put("release", Build.VERSION.RELEASE);
            hashMap2.put("sdkInt", Integer.valueOf(i));
            hashMap.put("version", hashMap2);
            Display defaultDisplay = this.f11137Wwwwwwwwwwwwwwwwwwwwwwww.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            HashMap hashMap3 = new HashMap();
            hashMap3.put("widthPx", Double.valueOf(displayMetrics.widthPixels));
            hashMap3.put("heightPx", Double.valueOf(displayMetrics.heightPixels));
            hashMap3.put("xDpi", Float.valueOf(displayMetrics.xdpi));
            hashMap3.put("yDpi", Float.valueOf(displayMetrics.ydpi));
            hashMap.put("displayMetrics", hashMap3);
            if (i >= 26) {
                try {
                    str = Build.getSerial();
                } catch (SecurityException unused) {
                    str = "unknown";
                }
                hashMap.put("serialNumber", str);
            } else {
                hashMap.put("serialNumber", Build.SERIAL);
            }
            result.success(hashMap);
            return;
        }
        result.notImplemented();
    }
}
