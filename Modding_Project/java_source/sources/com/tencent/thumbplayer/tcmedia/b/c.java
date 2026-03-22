package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetOrderedMap;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class c implements ITPMediaAssetOrderedMap {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f10549a = new StringBuilder();

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetOrderedMap
    public void addKeyValue(String str, String str2) {
        TPLogUtil.i("TPMediaAssetOrderedMap", "addKeyValue key:" + str + "=" + str2);
        StringBuilder sb = this.f10549a;
        sb.append(str);
        sb.append("=");
        sb.append(str2);
        sb.append(";");
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetOrderedMap
    public String getKeyValueStr() {
        TPLogUtil.i("TPMediaAssetOrderedMap", "getKeyValueStr " + this.f10549a.toString());
        return this.f10549a.toString();
    }
}
