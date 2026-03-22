package com.sensorsdata.analytics.android.sdk.core.event;

import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TrackEventProcessor extends EventProcessor {
    public TrackEventProcessor(SAContextManager sAContextManager) {
        super(sAContextManager);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor
    public void trackEvent(InputData inputData) {
        process(inputData);
    }
}
