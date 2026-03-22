package com.tencent.thumbplayer.tcmedia.common;

import com.tencent.thumbplayer.tcmedia.adapter.a.b;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class a implements com.tencent.thumbplayer.tcmedia.tplayer.a.a.a {

    /* renamed from: a  reason: collision with root package name */
    private b f10581a;

    public a(b bVar) {
        this.f10581a = bVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a.a
    public TPDynamicStatisticParams a(boolean z) {
        b bVar = this.f10581a;
        if (bVar == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "playerBase is null, return default dynamic statistic params");
            return new TPDynamicStatisticParams();
        }
        TPDynamicStatisticParams c = bVar.c(z);
        if (c == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "cannot get params from core, return default dynamic statistic params");
            return new TPDynamicStatisticParams();
        }
        return c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.a.a.a
    public TPGeneralPlayFlowParams a() {
        b bVar = this.f10581a;
        if (bVar == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "playerBase is null, return default general play flow params");
            return new TPGeneralPlayFlowParams();
        }
        TPGeneralPlayFlowParams v = bVar.v();
        if (v == null) {
            TPLogUtil.e("TPPlayerInfoGetterImpl", "cannot get params from core, return default general play flow params");
            return new TPGeneralPlayFlowParams();
        }
        return v;
    }
}
