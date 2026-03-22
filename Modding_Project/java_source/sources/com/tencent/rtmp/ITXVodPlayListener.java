package com.tencent.rtmp;

import android.os.Bundle;
import com.tencent.rtmp.TXVodDef;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ITXVodPlayListener {
    void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle);

    void onPlayEvent(TXVodPlayer tXVodPlayer, int i, Bundle bundle);

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class ITXVodSubtitleDataListener {
        public void onSubtitleData(TXVodDef.TXVodSubtitleData tXVodSubtitleData) {
        }
    }
}
