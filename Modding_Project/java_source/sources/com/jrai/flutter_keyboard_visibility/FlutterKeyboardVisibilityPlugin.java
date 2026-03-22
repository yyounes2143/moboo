package com.jrai.flutter_keyboard_visibility;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class FlutterKeyboardVisibilityPlugin implements FlutterPlugin, ActivityAware, EventChannel.StreamHandler, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8707Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View f8708Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public EventChannel.EventSink f8709Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        View view = this.f8708Wwwwwwwwwwwwwwwwwwwwwwww;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f8708Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        View findViewById = activity.findViewById(16908290);
        this.f8708Wwwwwwwwwwwwwwwwwwwwwwww = findViewById;
        findViewById.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BinaryMessenger binaryMessenger) {
        new EventChannel(binaryMessenger, "flutter_keyboard_visibility").setStreamHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.f8709Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ?? r0;
        if (this.f8708Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            Rect rect = new Rect();
            this.f8708Wwwwwwwwwwwwwwwwwwwwwwww.getWindowVisibleDisplayFrame(rect);
            if (rect.height() / this.f8708Wwwwwwwwwwwwwwwwwwwwwwww.getRootView().getHeight() < 0.85d) {
                r0 = 1;
            } else {
                r0 = 0;
            }
            if (r0 != this.f8707Wwwwwwwwwwwwwwwwwwwwwww) {
                this.f8707Wwwwwwwwwwwwwwwwwwwwwww = r0;
                EventChannel.EventSink eventSink = this.f8709Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (eventSink != null) {
                    eventSink.success(Integer.valueOf((int) r0));
                }
            }
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f8709Wwwwwwwwwwwwwwwwwwwwwwwww = eventSink;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding.getActivity());
    }
}
