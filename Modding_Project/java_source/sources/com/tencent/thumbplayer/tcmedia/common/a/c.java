package com.tencent.thumbplayer.tcmedia.common.a;

import com.tencent.thumbplayer.tcmedia.api.TPNativeException;
import com.tencent.thumbplayer.tcmedia.api.capability.TPCapability;
import com.tencent.thumbplayer.tcmedia.api.capability.TPVCodecCapabilityForGet;
import com.tencent.thumbplayer.tcmedia.common.a.d;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.l;
import java.util.UUID;
/* loaded from: classes6.dex */
public class c {
    private static TPVCodecCapabilityForGet b() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(1029, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet c() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(166, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet d() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(138, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private static TPVCodecCapabilityForGet e() {
        TPVCodecCapabilityForGet tPVCodecCapabilityForGet;
        try {
            tPVCodecCapabilityForGet = TPCapability.getThumbPlayerVCodecTypeMaxCapability(172, 102);
        } catch (TPNativeException e) {
            TPLogUtil.e("TPDeviceCapabilityReportManager", e);
            tPVCodecCapabilityForGet = null;
        }
        if (tPVCodecCapabilityForGet == TPVCodecCapabilityForGet.mDefaultVCodecCapability) {
            return null;
        }
        return tPVCodecCapabilityForGet;
    }

    private void f() {
        d dVar = new d();
        l lVar = new l();
        a(dVar.a(), lVar);
        a(dVar.b(), lVar);
        a(dVar.c(), lVar);
        a(dVar.d(), lVar);
        a(dVar.e(), lVar);
    }

    public void a() {
        f();
    }

    private void a(d.a aVar, a aVar2) {
        TPVCodecCapabilityForGet b = b();
        if (b != null) {
            aVar.f10584a = b.getMaxProfile();
            aVar.b = b.getMaxLevel();
        }
        aVar.a(aVar2);
    }

    private void a(d.b bVar, a aVar) {
        bVar.c = TPSystemInfo.SDK_INT;
        bVar.f10585a = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        bVar.b = TPPlayerConfig.getPlatform();
        bVar.d = String.format("Android %s", TPSystemInfo.getOsVersion());
        bVar.e = String.format("%s_%s", TPSystemInfo.getDeviceManufacturer(), TPSystemInfo.getDeviceName());
        bVar.g = TPSystemInfo.getCpuHarewareName();
        bVar.a(aVar);
    }

    private void a(d.c cVar, a aVar) {
        TPVCodecCapabilityForGet e = e();
        if (e != null) {
            cVar.f10586a = e.getMaxProfile();
            cVar.b = e.getMaxLevel();
        }
        cVar.a(aVar);
    }

    private void a(d.C0224d c0224d, a aVar) {
        TPVCodecCapabilityForGet d = d();
        if (d != null) {
            c0224d.f10587a = d.getMaxProfile();
            c0224d.b = d.getMaxLevel();
        }
        c0224d.a(aVar);
    }

    private void a(d.e eVar, a aVar) {
        TPVCodecCapabilityForGet c = c();
        if (c != null) {
            eVar.f10588a = c.getMaxProfile();
            eVar.b = c.getMaxLevel();
        }
        eVar.a(aVar);
    }
}
