package com.sensorsdata.analytics.android.sdk.core.mediator.protocol;

import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface SAModuleProtocol {
    String getModuleName();

    int getPriority();

    void install(SAContextManager sAContextManager);

    <T> T invokeModuleFunction(String str, Object... objArr);

    boolean isEnable();

    void setModuleState(boolean z);
}
