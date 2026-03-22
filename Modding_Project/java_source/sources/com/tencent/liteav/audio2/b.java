package com.tencent.liteav.audio2;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AndroidInterruptedStateListener f10187a;

    private b(AndroidInterruptedStateListener androidInterruptedStateListener) {
        this.f10187a = androidInterruptedStateListener;
    }

    public static Runnable a(AndroidInterruptedStateListener androidInterruptedStateListener) {
        return new b(androidInterruptedStateListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AndroidInterruptedStateListener.lambda$unregisterAudioRecordingCallback$1(this.f10187a);
    }
}
