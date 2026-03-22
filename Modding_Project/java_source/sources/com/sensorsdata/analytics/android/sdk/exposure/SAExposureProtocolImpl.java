package com.sensorsdata.analytics.android.sdk.exposure;

import android.view.View;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureConfig;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAExposureProtocolImpl implements SAModuleProtocol {
    private boolean mEnable = false;
    private SAExposedProcess mExposedProcess;

    private void addExposureView(View view, SAExposureData sAExposureData) {
        SAExposedProcess sAExposedProcess = this.mExposedProcess;
        if (sAExposedProcess != null) {
            sAExposedProcess.addExposureView(view, sAExposureData);
        }
    }

    private void init(SAExposureConfig sAExposureConfig) {
        if (sAExposureConfig == null) {
            sAExposureConfig = new SAExposureConfig(0.0f, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, true);
        }
        this.mExposedProcess = new SAExposedProcess(sAExposureConfig);
    }

    private void removeExposureView(View view, String str) {
        SAExposedProcess sAExposedProcess = this.mExposedProcess;
        if (sAExposedProcess != null) {
            sAExposedProcess.removeExposureView(view, str);
        }
    }

    private void setExposureIdentifier(View view, String str) {
        SAExposedProcess sAExposedProcess = this.mExposedProcess;
        if (sAExposedProcess != null) {
            sAExposedProcess.setExposureIdentifier(view, str);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public String getModuleName() {
        return Modules.Exposure.MODULE_NAME;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public int getPriority() {
        return 5;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public void install(SAContextManager sAContextManager) {
        if (!sAContextManager.getInternalConfigs().saConfigOptions.isDisableSDK()) {
            setModuleState(true);
        }
        init(sAContextManager.getInternalConfigs().saConfigOptions.getExposureConfig());
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public <T> T invokeModuleFunction(String str, Object... objArr) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case 427307917:
                if (str.equals(Modules.Exposure.METHOD_ADD_EXPOSURE_VIEW)) {
                    c = 0;
                    break;
                }
                break;
            case 984217328:
                if (str.equals(Modules.Exposure.METHOD_REMOVE_EXPOSURE_VIEW)) {
                    c = 1;
                    break;
                }
                break;
            case 1653096003:
                if (str.equals(Modules.Exposure.METHOD_UPDATE_EXPOSURE_PROPERTIES)) {
                    c = 2;
                    break;
                }
                break;
            case 1742638354:
                if (str.equals(Modules.Exposure.METHOD_SET_EXPOSURE_IDENTIFIER)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                addExposureView((View) objArr[0], (SAExposureData) objArr[1]);
                break;
            case 1:
                if (objArr.length == 2) {
                    removeExposureView((View) objArr[0], (String) objArr[1]);
                    break;
                } else {
                    removeExposureView((View) objArr[0], null);
                    break;
                }
            case 2:
                this.mExposedProcess.updateExposureView((View) objArr[0], (JSONObject) objArr[1]);
                break;
            case 3:
                setExposureIdentifier((View) objArr[0], (String) objArr[1]);
                break;
        }
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public boolean isEnable() {
        return this.mEnable;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public void setModuleState(boolean z) {
        if (this.mEnable != z) {
            this.mEnable = z;
        }
    }
}
