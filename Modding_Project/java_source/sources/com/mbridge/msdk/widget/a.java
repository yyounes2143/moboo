package com.mbridge.msdk.widget;

import android.view.View;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.Calendar;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private long f10031a = 0;

    public abstract void a(View view);

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(View view) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (timeInMillis - this.f10031a > 2000) {
            this.f10031a = timeInMillis;
            a(view);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
