package com.tencent.vod.flutter.ui;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXAndroid12BridgeService extends Service {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class Android12BridgeServiceBinder extends Binder {
        public Android12BridgeServiceBinder() {
        }

        public TXAndroid12BridgeService getService() {
            return TXAndroid12BridgeService.this;
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new Android12BridgeServiceBinder();
    }
}
