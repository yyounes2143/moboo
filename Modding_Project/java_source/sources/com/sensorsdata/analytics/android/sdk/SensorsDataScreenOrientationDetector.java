package com.sensorsdata.analytics.android.sdk;

import android.content.Context;
import android.view.OrientationEventListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataScreenOrientationDetector extends OrientationEventListener {
    private int mCurrentOrientation;
    private boolean mEnableState;

    public SensorsDataScreenOrientationDetector(Context context, int i) {
        super(context, i);
        this.mEnableState = true;
    }

    public String getOrientation() {
        if (!this.mEnableState) {
            return null;
        }
        int i = this.mCurrentOrientation;
        if (i != 0 && i != 180) {
            if (i != 90 && i != 270) {
                return null;
            }
            return "landscape";
        }
        return "portrait";
    }

    public boolean isEnableState() {
        return this.mEnableState;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        if (i != -1) {
            if (i >= 45 && i <= 315) {
                if (i > 45 && i < 135) {
                    this.mCurrentOrientation = 90;
                    return;
                } else if (i > 135 && i < 225) {
                    this.mCurrentOrientation = 180;
                    return;
                } else if (i > 225 && i < 315) {
                    this.mCurrentOrientation = 270;
                    return;
                } else {
                    return;
                }
            }
            this.mCurrentOrientation = 0;
        }
    }

    public void setState(boolean z) {
        this.mEnableState = z;
    }
}
