package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaUrlAsset;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.io.IOException;
/* loaded from: classes6.dex */
public class l extends d implements ITPMediaUrlAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f10557a;

    public l(String str) {
        this.f10557a = str;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaUrlAsset
    public String getStreamUrl() {
        return this.f10557a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaUrlAsset", e);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaUrlAsset
    public void setStreamUrl(String str) {
        this.f10557a = str;
    }
}
