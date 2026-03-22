package com.sensorsdata.analytics.android.sdk.encrypt;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface SAEncryptListener {
    String asymmetricEncryptType();

    String encryptEvent(byte[] bArr);

    String encryptSymmetricKeyWithPublicKey(String str);

    String symmetricEncryptType();
}
