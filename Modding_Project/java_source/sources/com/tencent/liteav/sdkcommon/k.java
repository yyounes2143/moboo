package com.tencent.liteav.sdkcommon;

import android.view.View;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class k implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final g f10286a;

    private k(g gVar) {
        this.f10286a = gVar;
    }

    public static View.OnClickListener a(g gVar) {
        return new k(gVar);
    }

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public final void onClick(View view) {
        this.f10286a.a(false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
