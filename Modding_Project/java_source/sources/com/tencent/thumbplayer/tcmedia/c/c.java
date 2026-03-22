package com.tencent.thumbplayer.tcmedia.c;

import android.os.Looper;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
/* loaded from: classes6.dex */
public class c {
    public static a a(Looper looper, com.tencent.thumbplayer.tcmedia.tplayer.a aVar) {
        if (TPPlayerConfig.getNewReportEnable()) {
            return (a) new d(new e(aVar.a(), looper), aVar).a();
        }
        return new e(aVar.a(), looper);
    }
}
