package io.flutter.plugins.webviewflutter;

import android.os.Message;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MessageProxyApi extends PigeonApiAndroidMessage {
    public MessageProxyApi(@NonNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
        super(androidWebkitLibraryPigeonProxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiAndroidMessage
    public void sendToTarget(@NonNull Message message) {
        message.sendToTarget();
    }
}
