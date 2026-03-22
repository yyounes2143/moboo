package com.tencent.thumbplayer.tcmedia.utils;

import com.tencent.thumbplayer.tcmedia.api.TPAudioAttributes;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<Integer, Class> f10694a;

    static {
        HashMap<Integer, Class> hashMap = new HashMap<>();
        f10694a = hashMap;
        hashMap.put(414, TPAudioAttributes.class);
        hashMap.put(507, TPSubtitleRenderModel.class);
        hashMap.put(Integer.valueOf((int) TPOptionalID.OPTION_ID_BEFORE_OBJECT_JITTER_BUFFER_CONFIG), TPJitterBufferConfig.class);
    }

    public static boolean a(@TPCommonEnum.TPOptionalId int i, Object obj) {
        Class cls;
        if (obj == null || (cls = f10694a.get(Integer.valueOf(i))) == null || obj.getClass() != cls) {
            return false;
        }
        return true;
    }
}
