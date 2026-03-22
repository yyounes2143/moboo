package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.app.Application;
import android.content.Context;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
import com.sensorsdata.analytics.android.sdk.advert.oaid.OAIDRom;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class OAIDFactory {
    private static final String TAG = "SA.OAIDFactory";
    private static IRomOAID ioaid;

    public static IRomOAID create(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        IRomOAID iRomOAID = ioaid;
        if (iRomOAID != null) {
            return iRomOAID;
        }
        IRomOAID createManufacturerImpl = createManufacturerImpl(context);
        ioaid = createManufacturerImpl;
        if (createManufacturerImpl != null && createManufacturerImpl.isSupported()) {
            SALog.i(TAG, "Manufacturer interface has been found: " + ioaid.getClass().getName());
            return ioaid;
        }
        DefaultImpl defaultImpl = new DefaultImpl();
        ioaid = defaultImpl;
        return defaultImpl;
    }

    private static IRomOAID createManufacturerImpl(Context context) {
        if (!OAIDRom.isHuawei() && !OAIDRom.isEmui()) {
            if (!OAIDRom.isXiaomi() && !OAIDRom.isMiui() && !OAIDRom.isBlackShark()) {
                if (OAIDRom.isVivo()) {
                    return new VivoImpl(context);
                }
                if (!OAIDRom.isOppo() && !OAIDRom.isOnePlus()) {
                    if (OAIDRom.isMeizu()) {
                        return new MeizuImpl(context);
                    }
                    if (OAIDRom.isSamsung()) {
                        return new SamsungImpl(context);
                    }
                    if (OAIDRom.isNubia()) {
                        return new NubiaImpl(context);
                    }
                    if (OAIDRom.isASUS()) {
                        return new AsusImpl(context);
                    }
                    if (!OAIDRom.isLenovo() && !OAIDRom.isMotolora()) {
                        if (OAIDRom.isZTE()) {
                            return new ZTEImpl(context);
                        }
                        if (OAIDRom.isCoolpad(context)) {
                            return new CoolpadImpl(context);
                        }
                        return null;
                    }
                    return new LenovoImpl(context);
                }
                return new OppoImpl(context);
            }
            return new XiaomiImpl(context);
        }
        return new HuaweiImpl(context);
    }
}
