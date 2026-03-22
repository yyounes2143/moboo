package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetObjectParam;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class b implements ITPMediaAssetExtraParam {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Serializable> f10548a = new HashMap<>();

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public int getExtraInt(String str) {
        if (this.f10548a.containsKey(str)) {
            return ((Integer) this.f10548a.get(str)).intValue();
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public ITPMediaAssetObjectParam getExtraObject(String str) {
        if (this.f10548a.get(str) instanceof ITPMediaAssetObjectParam) {
            return (ITPMediaAssetObjectParam) this.f10548a.get(str);
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public String getExtraString(String str) {
        if (this.f10548a.containsKey(str)) {
            return (String) this.f10548a.get(str);
        }
        return "";
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public void setExtraInt(String str, int i) {
        this.f10548a.put(str, Integer.valueOf(i));
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public void setExtraObject(String str, ITPMediaAssetObjectParam iTPMediaAssetObjectParam) {
        this.f10548a.put(str, iTPMediaAssetObjectParam);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam
    public void setExtraString(String str, String str2) {
        this.f10548a.put(str, str2);
    }
}
