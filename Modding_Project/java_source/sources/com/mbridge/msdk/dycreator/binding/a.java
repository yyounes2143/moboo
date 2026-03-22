package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.dycreator.baseview.MBCountDownView;
import com.mbridge.msdk.dycreator.baseview.MBLinearLayout;
import com.mbridge.msdk.dycreator.baseview.MBRelativeLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.utils.d;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewdata.base.a f8879a;

    public a(com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        this.f8879a = aVar;
    }

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(View view) {
        BaseStrategy a2;
        com.mbridge.msdk.dycreator.viewdata.base.a aVar;
        if (view != null && (view instanceof InterBase)) {
            if ((view instanceof MBCountDownView) && (aVar = this.f8879a) != null && aVar.getEffectData() != null && !this.f8879a.getEffectData().isCanSkip()) {
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                return;
            }
            com.mbridge.msdk.dycreator.viewdata.base.a aVar2 = this.f8879a;
            if (aVar2 != null && (view instanceof MBRelativeLayout) && d.a(view, aVar2)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar3 = this.f8879a;
                if (aVar3 instanceof MBSplashData) {
                    MBRelativeLayout mBRelativeLayout = (MBRelativeLayout) view;
                    ((MBSplashData) aVar3).setxInScreen(mBRelativeLayout.getxInScreen());
                    ((MBSplashData) this.f8879a).setyInScreen(mBRelativeLayout.getyInScreen());
                    ((MBSplashData) this.f8879a).setClickType(1);
                }
            }
            com.mbridge.msdk.dycreator.viewdata.base.a aVar4 = this.f8879a;
            if (aVar4 != null && (view instanceof MBLinearLayout) && d.a(view, aVar4)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar5 = this.f8879a;
                if (aVar5 instanceof MBSplashData) {
                    MBLinearLayout mBLinearLayout = (MBLinearLayout) view;
                    ((MBSplashData) aVar5).setxInScreen(mBLinearLayout.getxInScreen());
                    ((MBSplashData) this.f8879a).setyInScreen(mBLinearLayout.getyInScreen());
                    ((MBSplashData) this.f8879a).setClickType(0);
                }
            }
            String strategyDes = ((InterBase) view).getStrategyDes();
            if (!TextUtils.isEmpty(strategyDes) && (a2 = c.a().a(strategyDes)) != null) {
                a2.bindClickData(view, this.f8879a);
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
