package com.tencent.thumbplayer.tcmedia.utils;

import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Integer> f10705a;

    static {
        HashMap hashMap = new HashMap();
        f10705a = hashMap;
        hashMap.put("http://", 0);
        f10705a.put("https://", 1);
        f10705a.put("rtmp://", 2);
        f10705a.put("webrtc://", 3);
        f10705a.put(AdPayload.FILE_SCHEME, 4);
        f10705a.put("/", 4);
    }

    public static int a(String str) {
        if (str == null) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        for (Map.Entry<String, Integer> entry : f10705a.entrySet()) {
            if (lowerCase.startsWith(entry.getKey())) {
                return entry.getValue().intValue();
            }
        }
        if (!new File(str).exists()) {
            return -1;
        }
        return 4;
    }
}
