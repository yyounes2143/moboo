package io.flutter.plugins.videoplayer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.vod.flutter.FTXEvent;
import io.flutter.plugin.common.EventChannel;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final class VideoPlayerEventCallbacks implements VideoPlayerCallbacks {
    private final EventChannel.EventSink eventSink;

    private VideoPlayerEventCallbacks(EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
    }

    public static VideoPlayerEventCallbacks bindTo(EventChannel eventChannel) {
        final QueuingEventSink queuingEventSink = new QueuingEventSink();
        eventChannel.setStreamHandler(new EventChannel.StreamHandler() { // from class: io.flutter.plugins.videoplayer.VideoPlayerEventCallbacks.1
            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onCancel(Object obj) {
                QueuingEventSink.this.setDelegate(null);
            }

            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onListen(Object obj, EventChannel.EventSink eventSink) {
                QueuingEventSink.this.setDelegate(eventSink);
            }
        });
        return withSink(queuingEventSink);
    }

    @VisibleForTesting
    public static VideoPlayerEventCallbacks withSink(EventChannel.EventSink eventSink) {
        return new VideoPlayerEventCallbacks(eventSink);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onBufferingEnd() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "bufferingEnd");
        this.eventSink.success(hashMap);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onBufferingStart() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "bufferingStart");
        this.eventSink.success(hashMap);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onBufferingUpdate(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "bufferingUpdate");
        hashMap.put("values", Collections.singletonList(Arrays.asList(0, Long.valueOf(j))));
        this.eventSink.success(hashMap);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onCompleted() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "completed");
        this.eventSink.success(hashMap);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onError(@NonNull String str, @Nullable String str2, @Nullable Object obj) {
        this.eventSink.error(str, str2, obj);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onInitialized(int i, int i2, long j, int i3) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "initialized");
        hashMap.put("width", Integer.valueOf(i));
        hashMap.put("height", Integer.valueOf(i2));
        hashMap.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(j));
        if (i3 != 0) {
            hashMap.put("rotationCorrection", Integer.valueOf(i3));
        }
        this.eventSink.success(hashMap);
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayerCallbacks
    public void onIsPlayingStateUpdate(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "isPlayingStateUpdate");
        hashMap.put(FTXEvent.EXTRA_NAME_IS_PLAYING, Boolean.valueOf(z));
        this.eventSink.success(hashMap);
    }
}
