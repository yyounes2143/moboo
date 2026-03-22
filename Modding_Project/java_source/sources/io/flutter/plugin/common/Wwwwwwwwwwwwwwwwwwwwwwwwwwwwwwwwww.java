package io.flutter.plugin.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.plugin.common.BinaryMessenger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    @UiThread
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger, @NonNull String str, @Nullable BinaryMessenger.BinaryMessageHandler binaryMessageHandler, @Nullable BinaryMessenger.TaskQueue taskQueue) {
        if (taskQueue == null) {
            binaryMessenger.setMessageHandler(str, binaryMessageHandler);
            return;
        }
        throw new UnsupportedOperationException("setMessageHandler called with nonnull taskQueue is not supported.");
    }

    @UiThread
    public static BinaryMessenger.TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger, BinaryMessenger.TaskQueueOptions taskQueueOptions) {
        throw new UnsupportedOperationException("makeBackgroundTaskQueue not implemented.");
    }

    @UiThread
    public static BinaryMessenger.TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger) {
        return binaryMessenger.makeBackgroundTaskQueue(new BinaryMessenger.TaskQueueOptions());
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger) {
        throw new UnsupportedOperationException("enableBufferingIncomingMessages not implemented.");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger) {
        throw new UnsupportedOperationException("disableBufferingIncomingMessages not implemented.");
    }
}
