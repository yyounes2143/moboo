package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final class AppStateNotifier implements LifecycleEventObserver, MethodChannel.MethodCallHandler, EventChannel.StreamHandler {
    private static final String EVENT_CHANNEL_NAME = "plugins.flutter.io/google_mobile_ads/app_state_event";
    private static final String METHOD_CHANNEL_NAME = "plugins.flutter.io/google_mobile_ads/app_state_method";
    @NonNull
    private final EventChannel eventChannel;
    @Nullable
    private EventChannel.EventSink events;
    @NonNull
    private final MethodChannel methodChannel;

    public AppStateNotifier(BinaryMessenger binaryMessenger) {
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME);
        this.methodChannel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        EventChannel eventChannel = new EventChannel(binaryMessenger, EVENT_CHANNEL_NAME);
        this.eventChannel = eventChannel;
        eventChannel.setStreamHandler(this);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.events = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.events = eventSink;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        if (!str.equals("stop")) {
            if (!str.equals("start")) {
                result.notImplemented();
                return;
            } else {
                start();
                return;
            }
        }
        stop();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        EventChannel.EventSink eventSink;
        EventChannel.EventSink eventSink2;
        if (event == Lifecycle.Event.ON_START && (eventSink2 = this.events) != null) {
            eventSink2.success("foreground");
        } else if (event == Lifecycle.Event.ON_STOP && (eventSink = this.events) != null) {
            eventSink.success("background");
        }
    }

    public void start() {
        ProcessLifecycleOwner.get().getLifecycle().addObserver(this);
    }

    public void stop() {
        ProcessLifecycleOwner.get().getLifecycle().removeObserver(this);
    }
}
