package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class j extends d implements ITPMediaDRMAsset {

    /* renamed from: a  reason: collision with root package name */
    private String f10555a;
    @TPCommonEnum.TP_DRM_TYPE
    private int b;
    private String d = "";
    private Map<String, String> c = new HashMap();

    public j(@TPCommonEnum.TP_DRM_TYPE int i, String str) {
        this.f10555a = str;
        this.b = i;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public Map<String, String> getDrmAllProperties() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public String getDrmPlayUrl() {
        return this.f10555a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public String getDrmProperty(String str, String str2) {
        String str3;
        Map<String, String> map = this.c;
        if (map != null && !map.isEmpty() && (str3 = this.c.get(str)) != null) {
            return str3;
        }
        return str2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    @TPCommonEnum.TP_DRM_TYPE
    public int getDrmType() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public String getOfflineKeySetId() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaDRMAsset", e);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public void setDrmPlayUrl(String str) {
        this.f10555a = str;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public void setDrmProperty(String str, String str2) {
        this.c.put(str, str2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public void setDrmType(@TPCommonEnum.TP_DRM_TYPE int i) {
        this.b = i;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset
    public void setOfflineKeySetId(String str) {
        this.d = str;
    }
}
