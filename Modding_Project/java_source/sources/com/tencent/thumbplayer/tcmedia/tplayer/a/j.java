package com.tencent.thumbplayer.tcmedia.tplayer.a;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.capability.TPCapability;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.utils.i;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class j implements i.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f10664a = String.format("android %s", TPSystemInfo.getOsVersion());
    private static final Map<Integer, Integer> c;
    private static final Map<Integer, Integer> d;
    private Context b;

    static {
        HashMap hashMap = new HashMap();
        c = hashMap;
        hashMap.put(0, -1);
        hashMap.put(1, 0);
        hashMap.put(2, 3);
        hashMap.put(3, 3);
        HashMap hashMap2 = new HashMap();
        d = hashMap2;
        hashMap2.put(-1, -1);
        hashMap2.put(0, 32);
        hashMap2.put(2, 4);
    }

    public j(Context context) {
        this.b = context;
        com.tencent.thumbplayer.tcmedia.utils.i.a().a(this);
    }

    private int a() {
        int i = 0;
        for (int i2 : TPCapability.getDRMCapabilities()) {
            i |= a(i2);
        }
        return i;
    }

    public static int b(int i) {
        Integer num = c.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public static int a(@TPCommonEnum.TP_DRM_TYPE int i) {
        Integer num = d.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public void b(com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar) {
        aVar.d(com.tencent.thumbplayer.tcmedia.utils.h.a(this.b));
    }

    @Override // com.tencent.thumbplayer.tcmedia.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        com.tencent.thumbplayer.tcmedia.utils.h.b(this.b);
    }

    public void a(com.tencent.thumbplayer.tcmedia.tplayer.a.b.a aVar) {
        aVar.b(TPPlayerConfig.getGuid());
        aVar.b(0);
        aVar.c(0);
        aVar.d(com.tencent.thumbplayer.tcmedia.utils.h.a(this.b));
        aVar.c(TPSystemInfo.getDeviceName());
        aVar.d(f10664a);
        aVar.e(this.b.getPackageName());
        aVar.g(TPPlayerConfig.getAppVersionName(this.b));
        aVar.h("1.0.0");
        aVar.f(TPPlayerConfig.VERSION);
        aVar.m(TPPlayerConfig.getPlatform());
        aVar.a(0);
        aVar.n(a());
    }
}
