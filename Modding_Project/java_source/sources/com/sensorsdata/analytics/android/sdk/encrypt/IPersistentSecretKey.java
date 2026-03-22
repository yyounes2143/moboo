package com.sensorsdata.analytics.android.sdk.encrypt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface IPersistentSecretKey {
    SecreteKey loadSecretKey();

    void saveSecretKey(SecreteKey secreteKey);
}
