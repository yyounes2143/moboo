package com.sensorsdata.analytics.android.sdk.core.event.imp;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.event.Event;
import com.sensorsdata.analytics.android.sdk.core.event.EventProcessor;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.exceptions.DebugModeException;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class StoreDataImpl implements EventProcessor.IStoreData {
    private static final String TAG = "SA.StoreDataImpl";
    private final DbAdapter mDbAdapter = DbAdapter.getInstance();

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.IStoreData
    public int storeData(Event event) {
        if (event == null) {
            return 0;
        }
        int addJSON = this.mDbAdapter.addJSON(event.toJSONObject());
        if (addJSON < 0) {
            String str = "Failed to enqueue the event: " + event.toJSONObject();
            if (!SALog.isDebug()) {
                SALog.i(TAG, str);
                return addJSON;
            }
            throw new DebugModeException(str);
        }
        return addJSON;
    }
}
