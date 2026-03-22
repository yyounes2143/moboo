package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaRTCAsset;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.io.IOException;
/* loaded from: classes6.dex */
public class k extends d implements ITPMediaRTCAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f10556a;
    private String b;
    private int c;

    public k(String str, String str2) {
        this.c = 0;
        this.f10556a = str;
        this.b = str2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaRTCAsset
    public int getRtcSdpExchangeType() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaRTCAsset
    public String getRtcServerUrl() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaRTCAsset
    public String getRtcStreamUrl() {
        return this.f10556a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaWebrtcAsset", e);
            return "";
        }
    }

    public k(String str, String str2, int i) {
        this.f10556a = str;
        this.b = str2;
        this.c = i;
    }
}
