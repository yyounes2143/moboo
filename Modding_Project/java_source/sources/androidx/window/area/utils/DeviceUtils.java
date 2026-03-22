package androidx.window.area.utils;

import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@RequiresApi(17)
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000eR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/window/area/utils/DeviceUtils;", "", "()V", "deviceList", "", "Landroidx/window/area/utils/DeviceMetrics;", "getRearDisplayMetrics", "Landroid/util/DisplayMetrics;", "manufacturer", "", "model", "getRearDisplayMetrics$window_release", "hasDeviceMetrics", "", "hasDeviceMetrics$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDeviceUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceUtils.kt\nandroidx/window/area/utils/DeviceUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1747#2,3:54\n288#2,2:57\n*S KotlinDebug\n*F\n+ 1 DeviceUtils.kt\nandroidx/window/area/utils/DeviceUtils\n*L\n40#1:54,3\n47#1:57,2\n*E\n"})
/* loaded from: classes3.dex */
public final class DeviceUtils {
    @NotNull
    public static final DeviceUtils INSTANCE = new DeviceUtils();
    @NotNull
    private static final List<DeviceMetrics> deviceList;

    static {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.widthPixels = TXVodDownloadDataSource.QUALITY_1080P;
        displayMetrics.heightPixels = 2092;
        displayMetrics.density = 2.625f;
        displayMetrics.densityDpi = TypedValues.CycleType.TYPE_EASING;
        Unit unit = Unit.INSTANCE;
        deviceList = CollectionsKt.listOf(new DeviceMetrics(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE, "pixel fold", displayMetrics));
    }

    private DeviceUtils() {
    }

    @Nullable
    public final DisplayMetrics getRearDisplayMetrics$window_release(@NotNull String str, @NotNull String str2) {
        Object obj;
        Iterator<T> it = deviceList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                DeviceMetrics deviceMetrics = (DeviceMetrics) obj;
                String manufacturer = deviceMetrics.getManufacturer();
                Locale locale = Locale.US;
                if (Intrinsics.areEqual(manufacturer, str.toLowerCase(locale)) && Intrinsics.areEqual(deviceMetrics.getModel(), str2.toLowerCase(locale))) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        DeviceMetrics deviceMetrics2 = (DeviceMetrics) obj;
        if (deviceMetrics2 == null) {
            return null;
        }
        return deviceMetrics2.getRearDisplayMetrics();
    }

    public final boolean hasDeviceMetrics$window_release(@NotNull String str, @NotNull String str2) {
        List<DeviceMetrics> list = deviceList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (DeviceMetrics deviceMetrics : list) {
            String manufacturer = deviceMetrics.getManufacturer();
            Locale locale = Locale.US;
            if (Intrinsics.areEqual(manufacturer, str.toLowerCase(locale)) && Intrinsics.areEqual(deviceMetrics.getModel(), str2.toLowerCase(locale))) {
                return true;
            }
        }
        return false;
    }
}
