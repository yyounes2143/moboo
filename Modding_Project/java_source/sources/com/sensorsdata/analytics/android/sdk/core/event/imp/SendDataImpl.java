package com.sensorsdata.analytics.android.sdk.core.event.imp;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.AnalyticsMessages;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.instantevent.InstantEventUtils;
import com.sensorsdata.analytics.android.sdk.core.event.EventProcessor;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SendDataImpl implements EventProcessor.ISendData {
    private final Context mContext;
    private final InternalConfigOptions mInternalConfigs;

    public SendDataImpl(SAContextManager sAContextManager) {
        this.mInternalConfigs = sAContextManager.getInternalConfigs();
        this.mContext = sAContextManager.getContext();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.ISendData
    public void sendData(InputData inputData, int i) {
        boolean z;
        try {
            if (InstantEventUtils.isInstantEvent(inputData)) {
                AnalyticsMessages.getInstance(this.mContext.getApplicationContext()).flushInstanceEvent();
                return;
            }
            AnalyticsMessages analyticsMessages = AnalyticsMessages.getInstance(this.mContext.getApplicationContext());
            if (i >= 0 && i <= this.mInternalConfigs.saConfigOptions.getFlushBulkSize() && !this.mInternalConfigs.debugMode.isDebugMode() && inputData.getEventType() != EventType.TRACK_SIGNUP) {
                z = false;
                analyticsMessages.flushEventMessage(z);
            }
            z = true;
            analyticsMessages.flushEventMessage(z);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
