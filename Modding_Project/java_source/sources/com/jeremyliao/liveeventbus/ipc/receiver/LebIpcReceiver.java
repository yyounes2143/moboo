package com.jeremyliao.liveeventbus.ipc.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.jeremyliao.liveeventbus.LiveEventBus;
import com.jeremyliao.liveeventbus.ipc.consts.IpcConst;
import com.jeremyliao.liveeventbus.ipc.core.ProcessorManager;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class LebIpcReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (IpcConst.ACTION.equals(intent.getAction())) {
            try {
                String stringExtra = intent.getStringExtra(IpcConst.KEY);
                Object createFrom = ProcessorManager.getManager().createFrom(intent);
                if (stringExtra != null && createFrom != null) {
                    LiveEventBus.get(stringExtra).post(createFrom);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
