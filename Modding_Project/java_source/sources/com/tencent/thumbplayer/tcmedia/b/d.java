package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam;
import java.util.Map;
/* loaded from: classes6.dex */
public class d implements ITPMediaAsset {

    /* renamed from: a  reason: collision with root package name */
    private ITPMediaAssetExtraParam f10550a;
    private Map<String, String> b;

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public ITPMediaAssetExtraParam getExtraParam() {
        return this.f10550a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public Map<String, String> getHttpHeader() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        return "";
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public void setExtraParam(ITPMediaAssetExtraParam iTPMediaAssetExtraParam) {
        this.f10550a = iTPMediaAssetExtraParam;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public void setHttpHeader(Map<String, String> map) {
        this.b = map;
    }
}
