package com.tencent.thumbplayer.tcmedia.adapter;

import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
/* loaded from: classes6.dex */
public class e {
    public static a a(com.tencent.thumbplayer.tcmedia.e.b bVar, com.tencent.thumbplayer.tcmedia.tplayer.a aVar) {
        if (TPPlayerConfig.getNewReportEnable()) {
            return (a) new f(new d(aVar.a(), bVar), aVar).a();
        }
        return new d(aVar.a(), bVar);
    }
}
