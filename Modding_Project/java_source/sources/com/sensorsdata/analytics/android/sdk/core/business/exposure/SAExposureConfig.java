package com.sensorsdata.analytics.android.sdk.core.business.exposure;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAExposureConfig {
    private float areaRate;
    private long delayTime = 500;
    private boolean repeated;
    private double stayDuration;

    public SAExposureConfig(float f, double d, boolean z) {
        this.areaRate = f;
        this.stayDuration = d;
        this.repeated = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            SAExposureConfig sAExposureConfig = (SAExposureConfig) obj;
            if (sAExposureConfig.areaRate == this.areaRate && this.repeated == sAExposureConfig.repeated && sAExposureConfig.stayDuration == this.stayDuration) {
                return true;
            }
        }
        return false;
    }

    public float getAreaRate() {
        return this.areaRate;
    }

    public long getDelayTime() {
        return this.delayTime;
    }

    public double getStayDuration() {
        return this.stayDuration;
    }

    public boolean isRepeated() {
        return this.repeated;
    }

    public void setAreaRate(float f) {
        this.areaRate = f;
    }

    public void setDelayTime(long j) {
        this.delayTime = j;
    }

    public void setRepeated(boolean z) {
        this.repeated = z;
    }

    public void setStayDuration(double d) {
        this.stayDuration = d;
    }

    public String toString() {
        return "SAExposureConfig{areaRate=" + this.areaRate + ", repeated=" + this.repeated + ", stayDuration=" + this.stayDuration + AbstractJsonLexerKt.END_OBJ;
    }
}
