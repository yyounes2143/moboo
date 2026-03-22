package com.sensorsdata.analytics.android.sdk.advert.utils;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAAdvertUtils {
    public static String getIdentifier(Context context) {
        return SensorsDataUtils.getIdentifier(context);
    }

    public static String getInstallSource(Context context) {
        return String.format("imei=%s##imei_old=%s##imei_slot1=%s##imei_slot2=%s##imei_meid=%s", SensorsDataUtils.getInternationalIdentifier(context), SensorsDataUtils.getInternationalIdOld(context), SensorsDataUtils.getSlot(context, 0), SensorsDataUtils.getSlot(context, 1), SensorsDataUtils.getEquipmentIdentifier(context));
    }

    public static boolean isFirstTrackInstallation(boolean z) {
        if (z) {
            return PersistentLoader.getInstance().getFirstInstallationWithCallbackPst().get().booleanValue();
        }
        return PersistentLoader.getInstance().getFirstInstallationPst().get().booleanValue();
    }

    public static void setTrackInstallation(boolean z) {
        if (z) {
            PersistentLoader.getInstance().getFirstInstallationWithCallbackPst().commit(Boolean.FALSE);
        }
        PersistentLoader.getInstance().getFirstInstallationPst().commit(Boolean.FALSE);
    }
}
