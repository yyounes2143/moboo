package com.sensorsdata.analytics.android.sdk.visual.impl;

import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAVisualProtocolAPI implements SAModuleProtocol {
    private static final String TAG = "SA.SAVisualProtocolImpl";
    private boolean mEnable = false;
    private SAContextManager mSAContextManager;
    private VisualProtocolImpl mVisualImpl;

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public String getModuleName() {
        return Modules.Visual.MODULE_NAME;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public int getPriority() {
        return 5;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public void install(SAContextManager sAContextManager) {
        this.mSAContextManager = sAContextManager;
        this.mVisualImpl = new VisualProtocolImpl(sAContextManager);
        if (!sAContextManager.getInternalConfigs().saConfigOptions.isDisableSDK()) {
            setModuleState(true);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol
    public <T> T invokeModuleFunction(String str, Object... objArr) {
        return (T) this.mVisualImpl.invokeModuleFunction(str, objArr);
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
        if (z && this.mSAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
            VisualPropertiesManager.getInstance().requestVisualConfig(this.mSAContextManager);
        }
    }
}
