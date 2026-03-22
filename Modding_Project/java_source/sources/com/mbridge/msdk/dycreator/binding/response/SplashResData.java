package com.mbridge.msdk.dycreator.binding.response;

import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewdata.base.a;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class SplashResData extends BaseRespData {

    /* renamed from: a  reason: collision with root package name */
    private a f8889a;
    private EAction b;

    public a getBaseViewData() {
        return this.f8889a;
    }

    public EAction geteAction() {
        return this.b;
    }

    public void setBaseViewData(a aVar) {
        this.f8889a = aVar;
    }

    public void seteAction(EAction eAction) {
        this.b = eAction;
    }
}
