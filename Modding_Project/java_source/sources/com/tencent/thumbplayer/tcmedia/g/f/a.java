package com.tencent.thumbplayer.tcmedia.g.f;

import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.g.b.e;
import com.tencent.thumbplayer.tcmedia.g.b.f;
import com.tencent.thumbplayer.tcmedia.g.b.g;
import com.tencent.thumbplayer.tcmedia.g.h.c;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: com.tencent.thumbplayer.tcmedia.g.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public enum EnumC0231a {
        ADAPTATION_WORKAROUND_MODE_NEVER,
        ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION,
        ADAPTATION_WORKAROUND_MODE_ALWAYS
    }

    /* loaded from: classes6.dex */
    public enum b {
        KEEP_CODEC_RESULT_NO,
        KEEP_CODEC_RESULT_YES_WITH_FLUSH,
        KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION,
        KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION
    }

    public static EnumC0231a a(String str) {
        int i = Build.VERSION.SDK_INT;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (TPSystemInfo.getDeviceName().startsWith("SM-T585") || TPSystemInfo.getDeviceName().startsWith("SM-A510") || TPSystemInfo.getDeviceName().startsWith("SM-A520") || TPSystemInfo.getDeviceName().startsWith("SM-J700"))) {
            return EnumC0231a.ADAPTATION_WORKAROUND_MODE_ALWAYS;
        }
        if (i < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str))) {
            String str2 = Build.DEVICE;
            if ("flounder".equals(str2) || "flounder_lte".equals(str2) || "grouper".equals(str2) || "tilapia".equals(str2)) {
                return EnumC0231a.ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION;
            }
        }
        return EnumC0231a.ADAPTATION_WORKAROUND_MODE_NEVER;
    }

    public static void a(e eVar, MediaFormat mediaFormat) {
        com.tencent.thumbplayer.tcmedia.g.f.b d = com.tencent.thumbplayer.tcmedia.g.a.a().d();
        int max = Math.max(d.b, eVar.b);
        int max2 = Math.max(d.c, eVar.c);
        if (d.f10639a) {
            d.b = max;
            d.c = max2;
        }
        int max3 = Math.max(0, c.a(eVar.j, max, max2, false));
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("ReuseHelper", "initFormatWrapper initWidth:" + max + " initHeight:" + max2 + " initMaxInputSize:" + max3 + " reusePolicy:" + d);
        }
        eVar.g = max;
        eVar.h = max2;
        eVar.i = max3;
        mediaFormat.setInteger("max-input-size", Math.max(max3, 0));
        if (eVar.a()) {
            mediaFormat.setInteger("max-width", max);
            mediaFormat.setInteger("max-height", max2);
        }
    }

    public static boolean a(f fVar, e eVar) {
        return a(fVar, eVar, false);
    }

    public static boolean a(f fVar, e eVar, boolean z) {
        e eVar2 = fVar.e;
        if (fVar instanceof g) {
            return TextUtils.equals(eVar2.j, eVar.j) && eVar2.d == eVar.d && (fVar.c || (eVar2.b == eVar.b && eVar2.c == eVar.c));
        } else if (fVar instanceof com.tencent.thumbplayer.tcmedia.g.b.a) {
            if (TextUtils.equals("audio/mp4a-latm", eVar2.j)) {
                TextUtils.equals(eVar2.j, eVar.j);
            }
            return false;
        } else {
            return true;
        }
    }
}
